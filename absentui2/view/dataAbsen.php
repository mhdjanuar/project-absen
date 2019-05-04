<?php
session_start();

  if ($_SESSION['username'] == "") {
    header('location:login');
  }

include '../database/conn.php';
include '../logic/anonymfunction.php';
include 'modal.php';

$kelas = $_SESSION['kelas'];

//menampilkan data untuk view guru
if($_SESSION['role'] == 'guru')
$query = mysqli_query($connect,"select * from dataabsenguru where kodeKelas = '$kelas' and status = 0");
//menampilkan data selain guru
else
$query = mysqli_query($connect,"select* from dataabsenpiket where status = 0");

?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
  </head>
  <body>
    <div class="wrapper">
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

        <!-- Data Absen Guru -->
        <div class="content">
        		<table id="table_id" class="table">
        			<thead>
              <tr>
                <th>Nis</th>
                <th>Siswa</th>
          			<th>Keterangan</th>
          			<th>Kelas</th>
          			<th>Action</th>
              </tr>
                </thead>
                <tbody>
        		  	<?php while($data = mysqli_fetch_array($query)){
        				$idAbsenUtama = $data['idAbsenUtama'];
        				$namaSiswa = $data['nama'];
        				$ket = $data['keterangan'];
        			?>
        			<tr>
        				<td><?php echo $data['NIS'] ?></td>
        				<td><?php echo $namaSiswa ?></td>
        				<td><?php echo $ket ?></td>
        				<td><?php echo $data['kodeKelas'] ?></td>
        				<td><button type="button" name="button" id="<?php echo $idAbsenUtama ?>" class="btn btn-success update">Konfirmasi</button></td>
        			</tr>
            <?php } ?>
                </tbody>

        		</table>
            </div>
        <!-- End Data Absen Guru -->
          </div>
        </div>


  </body>
  <!--   Core JS Files   -->
  <script src="../assets/js/core/jquery.min.js" type="text/javascript"></script>
  <script src="../assets/js/core/popper.min.js" type="text/javascript"></script>
  <script src="../assets/js/core/bootstrap-material-design.min.js" type="text/javascript"></script>
  <script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <script src="../assets/js/plugins/bootstrap-notify.js"></script>
  <script src="../assets/js/material-dashboard.min.js?v=2.1.0" type="text/javascript"></script>
  <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

  <script>
    $(document).ready(function(){
      //Untuk di gunakan pada datatable
	     $('table').DataTable();
      // Javascript method's body can be found in assets/js/demos.js
       md.initDashboardPageCharts();

       //untuk menampilkan value edit
      $(document).on('click', '.update', function(){
        var nis = $(this).attr("id");
        $.ajax({
          url : "../database/serverdataabsen.php",
          method : 'GET',
          data : {nis : nis},
          dataType: "json",
          success: function(data){
            $('#namasiswa').val(data.nama);
            $('#ket').val(data.keterangan);
            $('#idAbsenUtama').val(data.idAbsenUtama);
            $('#updateAbsen').modal('show');
          }
        })
      })
    })
  </script>
</html>
