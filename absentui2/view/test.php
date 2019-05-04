<?php
date_default_timezone_set("Asia/Jakarta");
$time = time();
$var = date('Y-m-d H:i:s',$time);
// $insert = mysqli_query($connect,$insert);
// if ($insert == true) {
//   header('location:main');
// }


 ?>
 <!DOCTYPE html>
 <html lang="en" dir="ltr">
   <head>
     <meta charset="utf-8">
     <title></title>
   </head>
   <body>
     <p>Hi Raihan</p>
     <p><?php echo $var ?></p>
   </body>
 </html>
