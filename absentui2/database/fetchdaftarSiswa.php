<?php
  include 'conn.php';

  $output = array('data' => array() );
  $query = mysqli_query($connect,"select * from siswa order by nis desc");

  while ($row = mysqli_fetch_array($query)) {
    //cek kelamin
    if ($row['kelamin'] == "L") $kelamin = "Laki-Laki";
    else $kelamin = "Perempuan";

    $output['data'][] = array(
      $row['NIS'],
      $row['nama'],
      $kelamin,
      $row['kodeKelas'],
      "<button class='btn btn-primary edit' id='".$row['NIS']."'>Edit</button>
      <button class='btn btn-danger hapus' id='".$row['NIS']."'>Hapus</button>"
    );
  }

  echo json_encode($output);
?>
