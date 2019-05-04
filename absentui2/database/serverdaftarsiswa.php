<?php
include 'conn.php';

if(isset($_GET['edit'])){
  $nis = $_GET['nis'];
  $query = mysqli_query($connect,"select * from siswa where nis = '".$nis."' ");
  $row = mysqli_fetch_array($query);
  echo json_encode($row);
}
else if(isset($_GET['simpan'])){
   $nis = $_POST['nis'];
   $nama = $_POST['namasiswa'];
   $kelamin = substr($_POST['kelamin'],0,1);
   $kelas = $_POST['kelas'];

   $sql = mysqli_query($connect,'select * from siswa where NIS = '.$nis.' ');
   $row = mysqli_num_rows($sql);
   //update siswa
   if ($row == 1) {
     $update = mysqli_query($connect,'update siswa set nama = "'.$nama.'", kelamin = "'.$kelamin.'", kodeKelas = "'.$kelas.'" where NIS = '.$nis.' ');
   }
   //tambah siswa
   else {
     $insert = mysqli_query($connect,'insert into siswa values('.$nis.',"'.$kelas.'","'.$nama.'","'.$kelamin.'")');
   }
}
else if(isset($_GET['hapus'])){
  $nis = $_GET['nis'];

  $delete = mysqli_query($connect,'delete from siswa where nis = '.$nis.'');
}

?>
