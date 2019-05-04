
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>AbsentON!</title>

  <!-- PHP Include -->
  <?php
session_start();
  if ($_SESSION['username'] == "") {
    header('location:login');
  }

  include '../database/conn.php';
  include '../logic/anonymfunction.php';
  // $today = date('Y-m-d');
  // $today1 = date('Y-m-d');
  // $sql = mysqli_query($connect, "select * from buku where stok > 0");

  ?>

  <!-- End of PHP Include -->

  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">
  <link href="../assets/css/material-dashboard.css?v=2.1.0" rel="stylesheet" />
  <link rel="stylesheet" href="../assets/css/addon.css">
</head>

<body class="">


    <!-- View Menu untuk Admin -->
    <?php if($_SESSION['role'] == 'admin') { include '../logic/menuAdmin.php'; } ?>

    <!-- View Menu untuk Guru -->
		<?php if($_SESSION['role'] == 'guru') { include '../logic/menuGuru.php'; } ?>

		<!-- View Menu untuk Siswa -->
		<?php if($_SESSION['role'] == 'siswa') { include '../logic/menuSiswa.php'; }?>
		
		<!-- View Menu untuk Piket		-->
		<?php if($_SESSION['role'] == 'piket') { include '../logic/menuPiket.php'; }?>

    </div>
  </div>
  <!--   Core JS Files   -->
  <script src="../assets/js/core/jquery.min.js" type="text/javascript"></script>
  <script src="../assets/js/core/popper.min.js" type="text/javascript"></script>
  <script src="../assets/js/core/bootstrap-material-design.min.js" type="text/javascript"></script>
  <script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <script src="../assets/js/plugins/bootstrap-notify.js"></script>
  <script src="../assets/js/material-dashboard.min.js?v=2.1.0" type="text/javascript"></script>
  <script>
    $(document).ready(function() {
      // Javascript method's body can be found in assets/js/demos.js
      md.initDashboardPageCharts();

    });
  </script>
</body>

</html>

<?php

  if (isset($_POST['kirim'])) {

    $namapeminjam = $_POST['name'];
    $namabuku = $_POST['nmbook'];
    $tglpinjam = $_POST['tglpinjam'];
    $deadline = $_POST['deadline'];
    $ket = $_POST['kety'];
    mysqli_query($connect,"insert into transaksi(namapeminjam,namabuku,tglpinjam,deadline,ket) values('$namapeminjam','$namabuku','$tglpinjam','$deadline','$ket')");

    mysqli_query($connect,"update buku set stok=stok-1 where namabuku = '$namabuku' and stok > 0");

  }

 ?>
