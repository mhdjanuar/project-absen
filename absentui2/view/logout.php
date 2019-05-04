<?php
	session_start();

		$_SESSION['username'] = "";
		$_SESSION['role'] = "";
		$_SESSION['kelas'] = "";
		header('location:login');

 ?>
