<?php
    include 'conn.php';

//menampilkan dataabsen untuk konfirmasi
    if (isset($_GET['nis'])) {
      $query = mysqli_query($connect,"select * from dataabsenutama_v2 where idAbsenUtama = '".$_GET['nis']."' ");
      $row = mysqli_fetch_array($query);
      echo json_encode($row);
    }

//konfirmasi dataabsen
    if(isset($_POST['edit'])){
      $ket = $_POST['ket'];
      $id = $_POST['idAbsenUtama'];
      $surat = $_FILES['file']['tmp_name'];
      $nama_surat = $_FILES['file']['name'];

      	//$insert = mysqli_query($connect,"insert into absenguru(idAbsenUtama,dataSurat) values($idAbsenUtama,'$image_surat_name')");
      $updateSiswa = mysqli_query($connect,"update absenutama set dataSurat = '$nama_surat', keterangan = '$ket', status= 1 where idAbsenUtama = $id");
      $updateGuru = mysqli_query($connect,"update absenguru set dataSurat = '$nama_surat', status= 1 where idAbsenUtama = $id");
      $updateGuru = mysqli_query($connect,"update absenpiket set dataSurat = '$nama_surat', status= 1 where idAbsenUtama = $id");
      $updateReport = mysqli_query($connect,"update report set status = 1 where idAbsenUtama = $id");
      header('location:../view/dataabsen.php');
    }
?>
