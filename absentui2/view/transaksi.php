
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    AbsentON!
  </title>

<!-- php include -->
  <?php
  include '../logic/anonymfunction.php';
  include '../database/conn.php';
  $sql = mysqli_query($connect, "select * from transaksi");
  // var_export($sql);
  // die();

  ?>
  <!-- end of php include -->

  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="../assets/css/material-dashboard.css?v=2.1.0" rel="stylesheet" />\
</head>

<body class="">
  <div class="wrapper ">
    <?php sidebarmenupin(); ?>
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <a class="navbar-brand" href="">List Transaksi</a>
          </div>
          <?php upmenu(); ?>
          <!-- end -->
        </div>
      </nav>
      <!-- End Navbar -->
      <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title ">Data Transaksi</h4>
                  <p class="card-category"> Data Peminjaman yang pernah dilakukan</p>
                </div>
                <div class="card-body">
                  <div class="table-responsive">
                    <table class="table">
                      <thead class=" text-primary">
                        <th>ID</th>
                        <th>Nama Peminjam</th>
                        <th>Nama Buku</th>
                        <th>Tanggal Pinjam</th>
                        <th>Deadline</th>
                        <th>Action</th>
                        <td name="nama" value="apa"></td>
                        <input type="hidden" name="nama1" value="apatext">
                      </thead>
                      <tbody>
                        <!--  -->
                        <?php
                        while ($data = mysqli_fetch_assoc($sql)) {
                          echo "<form role='form' action='' method='POST'>";
                          echo '<tr>'.
                               '<td>'.$data['id'].'</td>'.
                               '<td>'.$data['namapeminjam'].'</td>'.
                               '<td name="namabuku" value="'.$data['namabuku'].'">'.$data['namabuku'].'</td>'.
                               '<td>'.$data['tglpinjam'].'</td>'.
                               '<td>'.$data['deadline'].'</td>'.
                               '<td><button type="submit" name="kirim" class="btn btn-primary btn-md">Kembali</button> </td>

                              </tr>';

                              echo "</form>";
                        }
                         ?>



                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>

          </div>
        </div>
      </div>

    </div>
  </div>
  <!--   Core JS Files   -->
  <script src="../assets/js/core/jquery.min.js" type="text/javascript"></script>
  <script src="../assets/js/core/popper.min.js" type="text/javascript"></script>
  <script src="../assets/js/core/bootstrap-material-design.min.js" type="text/javascript"></script>
  <script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <script src="../assets/js/plugins/bootstrap-notify.js"></script>
  <script src="../assets/js/material-dashboard.min.js?v=2.1.0" type="text/javascript"></script>
</body>

</html>

<?php
  //
  // if ($_SERVER["REQUEST_METHOD"] == "POST") {
  //
  //   // $namabuku = $_POST['namabuku'];
  //   $namabuku = $_POST['nama1'];
  //   var_dump($namabuku);
  //   die();
  //   // mysqli_query($connect,"update buku set stok=stok+1 where namabuku = '$namabuku' and stok > 0");
  // }

 ?>
