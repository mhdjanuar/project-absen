<?php
session_start();

  if ($_SESSION['username'] == "") {
    header('location:login');
  }

include '../database/conn.php';
include '../logic/anonymfunction.php';
$query = mysqli_query($connect,'select * from datareport_v2');
      ?>

<html>
	<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
	  <link rel='stylesheet' href='https://cdn.datatables.net/responsive/1.0.4/css/dataTables.responsive.css'>

	</head>

	<body class="">
  <div class="wrapper">
    <!-- Sidebar Menu -->
    <?php  sidebarmenumainmenu(); ?>
    <!-- End of Sidebar Menu -->
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <a class="navbar-brand">Laporan Data Absen</a>
          </div>
          <!-- Upper Menu -->
          <?php upmenuinput(); ?>
          <!-- End of Upper Menu -->
        </div>
      </nav>
      <!-- End Navbar -->


	  <!-- Data Absen Guru -->
<div class="content">
  <div class="container-fluid">
  <div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-header card-header-primary">
          <h4 class="card-title ">Laporan Data Absen</h4>
          <p class="card-category"> Laporan Data Absen Harian</p>
        </div>
        <div class="card-body">
          <div class="table-responsive">
      <label>PILIH TANGGAL</label>
      <form class="" method="post">
          Awal : <input type="date" name="tglawal" value="">
          Akhir : <input type="date" name="tglakhir" value="">
          <input type="submit" name="kirim" value="cek data" id="kirim" class="btn btn-primary btn-md">
      </form>
      <table class="table table-striped table-bordered table-hover dt-responsive">
      <thead class="text-primary">
        <tr>
          <th>NIS</th>
          <th>Nama Siswa</th>
          <th>Kelas</th>
          <th>Keterangan</th>
          <th>Tanggal</th>
       </tr>
      </thead>
      <tbody>
        <?php
            foreach ($query as $data) {
              echo "<tr>";
                echo "<td>".$data['NIS']."</td>";
                echo "<td>".$data['nama']."</td>";
                echo "<td>".$data['kodeKelas']."</td>";
                echo "<td>".$data['keterangan']."</td>";
                echo "<td>".$data['tanggal']."</td>";
              echo "</tr>";
            }
        ?>
      </tbody>
      </table>
      <!--button excell  -->
      <button type="submit" name="kirim" class="btn btn-primary btn-md">
        <a href="toExcell.php">Convert to Excel</a>
      </button>
      <!-- end button excell -->

      <button type="submit" name="kirim" class="btn btn-primary btn-md">
        <a href="print.php">Convert to PDF</a>
      </button>

    </div>
  </div>
</div>
</div>
</div>
</div>
</div>
	<!-- End Data Absen Guru -->

  <!--   Core JS Files   -->
  <script src="../assets/js/core/jquery.min.js" type="text/javascript"></script>
  <!-- <script src="../assets/js/core/popper.min.js" type="text/javascript"></script>
  <script src="../assets/js/core/bootstrap-material-design.min.js" type="text/javascript"></script>
  <script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <script src="../assets/js/plugins/bootstrap-notify.js"></script>
  <script src="../assets/js/material-dashboard.min.js?v=2.1.0" type="text/javascript"></script>
	  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script> -->

    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js" charset="utf-8"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js" charset="utf-8"></script>




  <script>
    $(document).ready(function() {
	     $('table').DataTable();

      // Javascript method's body can be found in assets/js/demos.js
      // md.initDashboardPageCharts();

      $("#kirim").click(function(e){
        e.preventDefault();
        var data = $('form').serialize();
        $.ajax({
          type : 'POST',
          url : '../database/serverreport.php',
          data : data,
          success : function(data){
            alert('Cek Berhasil');
            $('tbody').html(data);
          }
        })
        // alert('asd');
      })

    });
  </script>


	</body>
</html>
