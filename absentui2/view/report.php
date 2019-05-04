<?php
  include '../database/conn.php';
  $query = mysqli_query($connect,'select * from datareport_v2');
?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    <?php
    session_start();

      if ($_SESSION['username'] == "") {
        header('location:login');
      }

    include '../database/conn.php';
    include '../logic/anonymfunction.php';
    $query = mysqli_query($connect,'select * from datareport_v2 where status = 1');
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
            <input type="submit" name="kirim" value="kirim" id="kirim" class="btn btn-primary btn-md">
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

    <script src="../assets/js/core/jquery.min.js" type="text/javascript"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js" charset="utf-8"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js" charset="utf-8"></script>
    <script>
      $(document).ready(function(){
        var table = $('table').DataTable();

        $("#kirim").click(function(e){
          e.preventDefault();
          var data = $('form').serialize();
          $.ajax({
            type : 'POST',
            url : '../database/serverreport.php',
            data : data,
            success : function(data){
              $('tbody').html(data);
              // table.fnReloadAjax();
            }
          })
        })

      })
    </script>
  </body>
</html>
