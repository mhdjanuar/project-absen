<?php
	$host = "localhost";
	$id = "root";
	$pass = "";
	$ndb = "aondb_v3";

	//koneksi ke mysql
	$connect = mysqli_connect($host,$id,$pass);

	//make database
	mysqli_select_db($connect,$ndb);

 ?>
