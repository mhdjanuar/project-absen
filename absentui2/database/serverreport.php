<?php
  include 'conn.php';

  $tglawal = $_POST['tglawal'];
  $tglakhir = $_POST['tglakhir'];

  $query = mysqli_query($connect,'select * from datareport_v2 where tanggal between "'.$tglawal.'" and "'.$tglakhir.'" ');
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
