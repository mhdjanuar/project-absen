
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>AbsentON!</title>

  <!-- PHP Include -->
  <?php
  // error handling (only enable one case you needed)

    // case 1 - remove all error report
        // error_reporting(0);
        // ini_set('display_errors', 0);
    // case 1 end

    // case 2 - display all error report
        error_reporting(E_ALL);
        ini_set('display_errors', 1);
    // case 2 end


  // end of error handling

session_start();
  if ($_SESSION['username'] == "") {
    header('location:login');
  }

  include '../database/conn.php';
  include '../logic/anonymfunction.php';
  include 'modal.php';
  $today = date('Y-m-d');
  $kelas = $_SESSION['kelas'];

  //menampilkan data untuk absendraft perhari
  if($_SESSION['role'] == 'siswa'){
    //menampilan draft dari absenutama yang status nya 1
    $query = mysqli_query($connect,"select * from dataabsenutama_v2 where tanggal = substring(now(),1,10) and kodeKelas = '$kelas' and status = 1 ");
  }
  else if($_SESSION['role'] == 'guru'){
    //menampilan draft dari absenutama yang status nya 2
    $query = mysqli_query($connect,"select * from dataabsenutama_v2 where tanggal = substring(now(),1,10) and kodeKelas = '$kelas' and status = 2 ");
  }
  else{
    $query = mysqli_query($connect,"select * from dataabsenutama_v2 where tanggal = substring(now(),1,10) and status = 3 ");
  }

  //menampilkan data untuk siswa dan guru sesuai kelas
  if($_SESSION['role'] == 'siswa' || $_SESSION['role'] == 'guru'){
  	$sql = mysqli_query($connect, "select * from siswa where kodeKelas = '$kelas'");
  }
  //menampilkan data untuk piket dan admin
  else{
	   $sql = mysqli_query($connect, "select * from siswa");
     // $query = mysqli_query($connect,"select * from dataabsenutama_v2 where tanggal = substring(now(),1,10) ");
  }
	//Mengmabil jumlah data
	$count = mysqli_num_rows($sql);

  ?>

  <!-- End of PHP Include -->

  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" rel="stylesheet" />
  <link href="../assets/css/material-dashboard.css?v=2.1.0" rel="stylesheet" />

  <!-- Data Table -->
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
  <link rel='stylesheet' href='https://cdn.datatables.net/responsive/1.0.4/css/dataTables.responsive.css'>
  <!-- End of Data Table -->
</head>

<body class="">
  <div class="wrapper ">
    <!-- Sidebar Menu -->
    <?php  sidebarmenuinput(); ?>
    <!-- End of Sidebar Menu -->
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <a class="navbar-brand">Main</a>
          </div>
          <!-- Upper Menu -->
          <?php upmenuinput(); ?>
          <!-- End of Upper Menu -->
        </div>
      </nav>
      <!-- End Navbar -->
      <div class="content">
        <div class="container-fluid">
          <div class="row">
        <div class="col-lg-6">
            <div class="card-header card-header-primary">
          <form class="md-form" role="form" action="../database/servermain.php" method="post" enctype="multipart/form-data" >
            <div class="form-group">
              <div id="selectContainer">
                <hr>
                <center><p>Data 1</p></center>
                <hr>
                <label class=''>Nama Siswa :</label><br>
                <select class='custom-select' id="namasiswa" name='namasiswa' required autofocus>
                  <?php while ($data = mysqli_fetch_assoc($sql)) { ?>
                    <option value='<?php echo $data['NIS']; ?>'><?php echo $data['nama']; echo'-'. $data['kodeKelas']; ?></option>
                  <?php  } ?>


                </select><br><br>
                <label class=''>Keterangan :</label><br>
                <select class='custom-select' id="ket" name='ket'>
                  <option value='Sakit'>Sakit</option>
                  <option value='Izin'>Izin</option>
                  <option value='Alfa'>Alfa</option>
                </select><br><br>


				<label class=''>Surat :</label><br>
				<input type='file' name='surat' id='surat'><br><br>

				<input type="hidden" name='counter' value="1">
					  </div>

        <input type="hidden" class="form-control" name="tglabsen" value="<?php echo $today; ?>">
              <!-- <button id="clone" type="button"  class="btn btn-primary btn-block">+</button> -->
              <!-- <input type="button" class="btn btn-primary btn-block" name="" value="+" onClick="cloneSelect()"> -->
            </div>
            <button type="submit" name="kirim" class="btn btn-primary btn-md">Kirim</button>


          </form>

        </div>



      </div>

      <div class="col-lg-6">
        <div class="card">
          <div class="card-header card-header-primary">
            <h4 class="card-title ">Data Absen</h4>
            <p class="card-category"> Data Absen yang belum dikirim - Data Draft ini akan dihapus per hari</p>
          </div>
          <div class="card-body">
            <div class="table-responsive">
        <table class="table table-striped table-bordered table-hover dt-responsive">
          <thead class="text-primary">
            <tr>
              <th>Kelas</th>
              <th>Nama Siswa</th>
              <th>Ket.</th>
              <th>Surat</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>

  		  	<?php while($data = mysqli_fetch_array($query)){?>
  			<tr>
  				<td><?php echo $data['kodeKelas']; ?></td>
  				<td><?php echo $data['nama']; ?></td>
  				<td><?php echo $data['keterangan']; ?></td>
  				<td><?php echo $data['dataSurat']; ?></td>
          <td><button id="btnmodal" type="button" style="position: relative;margin: 0px 10px 10px 0px;float: left;" class="btn btn-primary edit-btn" data-toggle="modal" data-target="#exampleModal" data-id="<?php echo $data['idAbsenDraft'] ?>" data-nm="<?php echo $data['namasiswa'] ?>" data-kt="<?php echo $data['ket'] ?>">Edit</button></td>
  			</tr>
  			<?php } ?>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>

    </div>
  </div>
  <!--   Core JS Files   -->
  <script src="../assets/js/core/jquery.min.js" type="text/javascript"></script>
  <script src="../assets/js/core/popper.min.js" type="text/javascript"></script>
  <script src="../assets/js/core/bootstrap-material-design.min.js" type="text/javascript"></script>
  <script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <script src="../assets/js/plugins/bootstrap-notify.js"></script>
  <script src="../assets/js/material-dashboard.min.js?v=2.1.0" type="text/javascript"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>

  <!-- <script src="https://code.jquery.com/jquery-3.3.1.js" charset="utf-8"></script> -->
  <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js" charset="utf-8"></script>
  <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js" charset="utf-8"></script>

  <script>
    $(document).ready(function() {
      // Javascript method's body can be found in assets/js/demos.js

      // $("#clone").on('click', function(){
      //   new_select2 = $("form").first().clone();
      //   $('#selectContainer').append(new_select2);
      // })

      // var id = document.getElementById('idAbsenDraft').value;
      // $("#btnmodal").on('click', function(){
      //   history.pushState(null, '', '?d=' + id);
      // })

      $('.custom-select').select2();


      $('table').DataTable();

//       $('#exampleModal').on('show.bs.modal', function (e) {
//     var myid = $(e.relatedTarget).attr('data-id');
//     $(this).find('.myidbox').text(myid);
// });

// modalbtn = document.getElementById('edit');


// $("#editbtn").on('click', function(){
//   var id = $(e.relatedTarget).data('id');
//   $(e.currentTarget).find('input[name="flow"]').val(id);
// });

$('#exampleModal').on('show.bs.modal', function(e) {
    var id = $(e.relatedTarget).data('id');
    var nm = $(e.relatedTarget).data('nm');
    var kt = $(e.relatedTarget).data('kt');
    $(e.currentTarget).find('input[name="namasiswa"]').val(nm);
    $(e.currentTarget).find('input[name="idAbsenDraft"]').val(id);
    $(e.currentTarget).find('select[name="ket"]').val(kt);

    // $.ajax({
    //     type : 'post',
    //     url : 'modal.php', //Here you will fetch records
    //     data :  'id='+ id, //Pass $id
    //     success : function(data){
    //     $('.fetch').html(data);//Show fetched data from database
    //     }
    // });
});

      md.initDashboardPageCharts();
    });
  </script>


  <script src="../assets/js/clone.js" type="text/javascript"></script>


</body>

</html>
