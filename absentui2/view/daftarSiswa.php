<?php
session_start();

  if ($_SESSION['username'] == "") {
    header('location:login');
  }

include '../database/conn.php';
include '../logic/anonymfunction.php';
include 'modal.php';


//menampilkan data siswa
// $query = mysqli_query($connect,"select * from siswa");

?>

<html>
	<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
	</head>

	<body class="">
  <div class="wrapper">
    <!-- Sidebar Menu -->
    <?php  sidebarmenudataabsen(); ?>
    <!-- End of Sidebar Menu -->
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <a class="navbar-brand">Draft Data</a>
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
          <h4 class="card-title ">Daftar Siswa</h4>
          <p class="card-category">Daftar siswa SMKN 24</p>
        </div>
        <div class="card-body">
      <div class="table-responsive">
      <table class="table table-striped table-bordered table-hover dt-responsive">
        <button class='btn btn-primary tambah' id=''>Tambah Data</button>
        <thead class="text-primary">
          <tr>
            <th>Nis</th>
            <th>Nama Siswa</th>
			      <th>Kelamin</th>
            <th>Kelas</th>
			      <th>Action</th>
          </tr>
        </thead>
      </table>
    </div>
  </div>
</div>
</div>
</div>
</div>
</div>
	<!-- End Data Absen Guru -->

  <script src="../assets/js/core/jquery.min.js" type="text/javascript"></script>
  <script src="../assets/js/core/popper.min.js" type="text/javascript"></script>
  <script src="../assets/js/core/bootstrap-material-design.min.js" type="text/javascript"></script>
  <script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <script src="../assets/js/plugins/bootstrap-notify.js"></script>
  <script src="../assets/js/material-dashboard.min.js?v=2.1.0" type="text/javascript"></script>
  <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


  <script>
    $(document).ready(function() {

	  var table = $('table').DataTable({
            "ajax" : '../database/fetchdaftarSiswa.php'
            });

      // Javascript method's body can be found in assets/js/demos.js
      md.initDashboardPageCharts();
      $('.tambah').click(function(){
        $('#updateSiswa').modal('show');
      });

      $(document).on('click', '#confirm-simpan-siswa', function(e){
        e.preventDefault();
        var data = $('.FormSimpan').serialize();
        $.ajax({
          type : 'POST',
          url : '../database/serverdaftarsiswa.php?simpan',
          data : data,
          success : function(data){
              table.ajax.reload();
              $('#updateSiswa').modal('hide');
              reset();
          }
        });
      })

      $(document).on('click', '.edit', function(){
        var nis = $(this).attr('id');
        $.ajax({
            url : '../database/serverdaftarsiswa.php?edit',
            method : 'GET',
            data : {nis : nis},
            dataType : 'json',
            success : function(data){

              var jenisKelamin = data.kelamin;
              if (jenisKelamin == "L") {
                var kel = 'Laki-Laki';
              }else {
                var kel = 'Perempuan';
              }

              $('#nis').val(data.NIS);
              $('#namaSiswa').val(data.nama);
              $('#kelamin').val(kel);
              $('#kelas').val(data.kodeKelas);
              $('#updateSiswa').modal('show');
            }
        });
      });

      $(document).on('click', '.hapus', function(){
          var nis = $(this).attr('id');
          $.ajax({
            type : 'GET',
            url : '../database/serverdaftarsiswa.php?hapus',
            data : {nis : nis},
            success : function(data){
              alert('Hapus Data Berhasil');
              table.ajax.reload();
            }
          })
      })

      $('#close').click(function(){
        reset();
      })

      function reset(){
        $('#nis').val('');
        $('#namaSiswa').val('');
        $('#kelamin').val('');
        $('#kelas').val('');
      }

    });
  </script>


	</body>
</html>
