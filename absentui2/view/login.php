<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>AbsentON! | Login</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link href='https://fonts.googleapis.com/css?family=Roboto:300,400,600' rel='stylesheet' type='text/css'>


      <link rel="stylesheet" href="../assets/css/style.css">


</head>

<body>

  <div id="back">
  <canvas id="canvas" class="canvas-back"></canvas>
  <div class="backRight">
  </div>
  <div class="backLeft">
  </div>
</div>

<div id="slideBox">
  <div class="topLayer">
    <div class="left">
      <div class="content">

      </div>
    </div>
    <div class="right">
      <div class="content">
        <h2>Welcome to AbsentON!</h2>
        <h2>Please Login</h2>
        <form role="form" action="" method="post">
          <div class="form-element form-stack">
            <label for="username-login" class="form-label">Username</label>
            <input type="text" name="username" autofocus>
          </div>
          <div class="form-element form-stack">
            <label for="password-login" class="form-label">Password</label>
            <input type="password" name="password">
          </div>
          <div class="form-element form-submit">
            <button class="login" type="submit" name="login">Log In</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/paper.js/0.11.3/paper-full.min.js'></script>



    <script  src="../assets/js/index.js"></script>




</body>

</html>

<?php


include '../database/conn.php';

session_start();
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  //tangkap data dari form login
  $username = $_POST['username'];
  $password = $_POST['password'];

  //untuk mencegah sql injection
  //kita gunakan mysql_real_escape_string
  $username = mysqli_real_escape_string($connect, $username);
  $password = mysqli_real_escape_string($connect, $password);

  	$query = mysqli_query($connect, "SELECT * FROM user where username='$username' AND password = '$password'");

	//mengambil data dari table user
	foreach($query as $data){
		$role = $data['role'];
		$kelas = $data['kodeKelas'];
	}

  	if (mysqli_num_rows($query) == 1) {
  	//kalau username dan password sudah terdaftar di database
  	//buat session dengan nama username dengan isi nama user yang login
			$_SESSION['username'] = $username;
			$_SESSION['role'] = $role;
			$_SESSION['kelas'] = $kelas;
  			header('location:menu');

  	}
  	else {
  		//kalau username ataupun password tidak terdaftar di database
  		echo"
  			<script language='javascript'>
  				window.alert('Invalid username or password');
  				window.location='login';
  			</script>
  		";
  	}
}

?>
