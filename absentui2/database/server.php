<?php

include 'conn.php';

$query = mysqli_query($connect,"select * from siswa");
?>


<?php while($data = mysqli_fetch_array($query)){
			?>
			<tr>
				<td><?php echo $data['NIS'] ?></td>
				<td><?php echo $data['nama'] ?></td>
				<td><?php echo $data['kelamin'] ?></td>
				<td><?php echo $data['kodeKelas'] ?></td>
				<td><button class='btn btn-primary'>Edit</button>
					<button class='btn btn-danger' onclick='hapus(<?php echo $data['NIS'] ?>)'>Hapus</button>
				</td>
			</tr>
			<?php } ?>

<?php


$nis = $_GET['nis'];

$delete = mysqli_query($connect,'delete from siswa where nis = '.$nis.'');
