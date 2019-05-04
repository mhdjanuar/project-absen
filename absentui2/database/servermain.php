<?php
  include 'conn.php';
  session_start();

  if(isset($_POST['kirim'])){
     $nis = $_POST['namasiswa'];
     $keterangan = $_POST['ket'];
     $tglabsen = $_POST['tglabsen'];
     $nama_surat = $_FILES['surat']['name'];

     //jika yang meng input siswa
     if($_SESSION['role'] == 'siswa'){
       //jika surat ada
       if($nama_surat != ''){
         //insert absenutama status 1 karna di input dari siswa
         $insertSiswa = mysqli_query($connect,'insert into absenutama(NIS,keterangan,dataSurat,tanggal,status)
         values('.$nis.',"'.$keterangan.'","'.$nama_surat.'","'.$tglabsen.'",1)');

         //mengambil idAbsenUtama terakhir
         $sql = mysqli_query($connect,'select * from absenutama');
         foreach ($sql as $data) {
           $id = $data['idAbsenUtama'];
         }

         //insert report surat tidak kosong status 1
         $insertReport = mysqli_query($connect,'insert into report(idAbsenUtama,tanggal,status) values("'.$id.'","'.$tglabsen.'",1)');
       }

       //jika surat tidak ada
       else{
         $insertSiswa = mysqli_query($connect,'insert into absenutama(NIS,keterangan,dataSurat,tanggal,status)
         values('.$nis.',"'.$keterangan.'","'.$nama_surat.'","'.$tglabsen.'",1)');

         //mengambil idAbsenUtama terakhir
         $sql = mysqli_query($connect,'select * from absenutama');
         foreach ($sql as $data) {
           $id = $data['idAbsenUtama'];
         }

         //insert absenguru surat kosong status 0
         $insertGuru = mysqli_query($connect,'insert into absenguru(idAbsenUtama,tanggal,status) values("'.$id.'","'.$tglabsen.'",0)');

         //insert absenguru surat kosong status 0
         $insertPiket = mysqli_query($connect,'insert into absenpiket(idAbsenUtama,tanggal,status) values("'.$id.'","'.$tglabsen.'",0)');

         //insert report surat kosong status 0
         $insertReport = mysqli_query($connect,'insert into report(idAbsenUtama,tanggal,status) values("'.$id.'","'.$tglabsen.'",0)');
       }

       header('location:../view/main.php');

     }

     //jika yang meng input guru
     else if($_SESSION['role'] == 'guru'){
       //jika surat ada atau tidak status tetap 1
       //insert absenutama status 2 karna di input dari guru
       $insertSiswa = mysqli_query($connect,'insert into absenutama(NIS,keterangan,dataSurat,tanggal,status)
       values('.$nis.',"'.$keterangan.'","'.$nama_surat.'","'.$tglabsen.'",2)');

       //mengambil idAbsenUtama terakhir
       $sql = mysqli_query($connect,'select * from absenutama');
       foreach ($sql as $data) {
         $id = $data['idAbsenUtama'];
       }

       //insert absenguru surat tidak kosong status 1
       $insertGuru = mysqli_query($connect,'insert into absenguru(idAbsenUtama,tanggal,status) values("'.$id.'","'.$tglabsen.'",1)');

       //insert report surat tidak kosong status 1
       $insertReport = mysqli_query($connect,'insert into report(idAbsenUtama,tanggal,status) values("'.$id.'","'.$tglabsen.'",1)');

       header('location:../view/main.php');
     }

     //jika yang meng input piket atau admin
     else{
       //jika surat ada atau tidak status tetap 1
       //insert absenutama status 3 karna di input dari piket
       $insertSiswa = mysqli_query($connect,'insert into absenutama(NIS,keterangan,dataSurat,tanggal,status)
       values('.$nis.',"'.$keterangan.'","'.$nama_surat.'","'.$tglabsen.'",3)');

       //mengambil idAbsenUtama terakhir
       $sql = mysqli_query($connect,'select * from absenutama');
       foreach ($sql as $data) {
         $id = $data['idAbsenUtama'];
       }

       //insert absenguru surat tidak osong status 1
       $insertPiket = mysqli_query($connect,'insert into absenpiket(idAbsenUtama,tanggal,status) values("'.$id.'","'.$tglabsen.'",1)');

       //insert report surat tidak kosong status 1
       $insertReport = mysqli_query($connect,'insert into report(idAbsenUtama,tanggal,status) values("'.$id.'","'.$tglabsen.'",1)');

       header('location:../view/main.php');
     }


  }


?>
