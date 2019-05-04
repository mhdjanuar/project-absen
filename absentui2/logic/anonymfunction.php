<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
    <!-- CSS Files -->
    <link href="../assets/css/material-dashboard.css?v=2.1.0" rel="stylesheet" />
    <title></title>
  </head>
  <body>

  </body>
</html>
<?php

/*
    Anonym Function by Raihan Nabawy

    Please do not edit this section expect you are given access from admin

*/
// List Anonym Function

function addBox()
{
  $textboxcount = 1;
  ?>
  <label class="">Nama Siswa :</label><br>
  <select class="custom-select" name="namasiswa <?php echo $textboxcount; ?>" required autofocus>
    <?php while ($data = mysqli_fetch_assoc($sql)) { ?>
      <option value="<?php echo $data['namasiswa']; ?>"><?php echo $data['namasiswa']; ?></option>
    <?php  } ?>


  </select>
  <?php
  $textboxcount = $textboxcount + 1;
}


function sidebarmenumainmenu()
{
  // ?>
  <div class="sidebar" data-color="azure" data-background-color="black" data-image="../assets/img/sidebar-1.jpg">

    <div class="logo">
      <a href="" class="simple-text logo-normal">
        AbsentON!
      </a>
    </div>
    <div class="sidebar-wrapper">
      <ul class="nav">
        <li class="nav-item active ">
          <a class="nav-link" href="./menu">
            <i class="material-icons">dashboard</i>
            <p>Menu</p>
          </a>
        </li>
        <li class="nav-item ">
          <a class="nav-link" href="./main">
            <i class="material-icons">input</i>
            <p>Input Data</p>
          </a>
        </li>
        <!-- <li class="nav-item ">
          <a class="nav-link" href="./tables">
            <i class="material-icons">content_paste</i>
            <p>Data Buku</p>
          </a>
        </li>
        <li class="nav-item ">
          <a class="nav-link" href="./transaksi">
            <i class="material-icons">library_books</i>
            <p>Transaksi</p>
          </a>
        </li> -->
        <!-- <li class="nav-item ">
          <a class="nav-link" href="./icons.html">
            <i class="material-icons">bubble_chart</i>
            <p>Icons</p>
          </a>
        </li>
        <li class="nav-item ">
          <a class="nav-link" href="./map.html">
            <i class="material-icons">location_ons</i>
            <p>Maps</p>
          </a>
        </li>
        <li class="nav-item ">
          <a class="nav-link" href="./notifications.html">
            <i class="material-icons">notifications</i>
            <p>Notifications</p>
          </a>
        </li> -->
      </ul>
    </div>
  </div>
  <?php
}

function sidebarmenuinput()
{
  // ?>
  <div class="sidebar" data-color="azure" data-background-color="black" data-image="../assets/img/sidebar-1.jpg">

    <div class="logo">
      <a href="" class="simple-text logo-normal">
        AbsentON!
      </a>
    </div>
    <div class="sidebar-wrapper">
      <ul class="nav">
        <li class="nav-item  ">
          <a class="nav-link" href="./menu">
            <i class="material-icons">dashboard</i>
            <p>Menu</p>
          </a>
        </li>
        <li class="nav-item active ">
          <a class="nav-link" href="./main">
            <i class="material-icons">input</i>
            <p>Input Data</p>
          </a>
        </li>
        <!-- <li class="nav-item ">
          <a class="nav-link" href="./tables">
            <i class="material-icons">content_paste</i>
            <p>Data Buku</p>
          </a>
        </li>
        <li class="nav-item ">
          <a class="nav-link" href="./transaksi">
            <i class="material-icons">library_books</i>
            <p>Transaksi</p>
          </a>
        </li> -->
        <!-- <li class="nav-item ">
          <a class="nav-link" href="./icons.html">
            <i class="material-icons">bubble_chart</i>
            <p>Icons</p>
          </a>
        </li>
        <li class="nav-item ">
          <a class="nav-link" href="./map.html">
            <i class="material-icons">location_ons</i>
            <p>Maps</p>
          </a>
        </li>
        <li class="nav-item ">
          <a class="nav-link" href="./notifications.html">
            <i class="material-icons">notifications</i>
            <p>Notifications</p>
          </a>
        </li> -->
      </ul>
    </div>
  </div>
  <?php
}

function sidebarmenuguru()
{
  // ?>
  <div class="sidebar" data-color="azure" data-background-color="black" data-image="../assets/img/sidebar-1.jpg">

    <div class="logo">
      <a href="" class="simple-text logo-normal">
        AbsentON!
      </a>
    </div>
    <div class="sidebar-wrapper">
      <ul class="nav">
        <li class="nav-item active ">
          <a class="nav-link" href="./menu">
            <i class="material-icons">dashboard</i>
            <p>Menu</p>
          </a>
        </li>
        <li class="nav-item  ">
          <a class="nav-link" href="./dataAbsen">
            <i class="material-icons">assignment</i>
            <p>Draft Data</p>
          </a>
        </li>
      </ul>
    </div>
  </div>
  <?php
}

function sidebarmenudataabsen()
{
  // ?>
  <div class="sidebar" data-color="azure" data-background-color="black" data-image="../assets/img/sidebar-1.jpg">

    <div class="logo">
      <a href="" class="simple-text logo-normal">
        AbsentON!
      </a>
    </div>
    <div class="sidebar-wrapper">
      <ul class="nav">
        <li class="nav-item  ">
          <a class="nav-link" href="./menu">
            <i class="material-icons">dashboard</i>
            <p>Menu</p>
          </a>
        </li>
        <li class="nav-item active ">
          <a class="nav-link" href="./dataAbsen">
            <i class="material-icons">assignment</i>
            <p>Draft Data</p>
          </a>
        </li>
      </ul>
    </div>
  </div>
  <?php
}



  function upmainmenu()
  {?>
    <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
      <span class="sr-only">Toggle navigation</span>
      <span class="navbar-toggler-icon icon-bar"></span>
      <span class="navbar-toggler-icon icon-bar"></span>
      <span class="navbar-toggler-icon icon-bar"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-end">
      <form class="navbar-form">
        <!-- <div class="input-group no-border">
          <input type="text" value="" class="form-control" placeholder="Search...">
          <button type="submit" class="btn btn-white btn-round btn-just-icon">
            <i class="material-icons">search</i>
            <div class="ripple-container"></div>
          </button>
        </div> -->
      </form>
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="">
            <i class="material-icons">loop</i>
            <p class="d-lg-none d-md-block">
              Reload
            </p>
          </a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link" href="" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="material-icons">person</i>
            <p class="d-lg-none d-md-block">
              Action
            </p>
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
            <a class="dropdown-item" href="logout">Logout</a>
          </div>

        </li>
      </ul>
    </div>
    <?php
  }

  function upmenuinput()
  {?>
    <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
      <span class="sr-only">Toggle navigation</span>
      <span class="navbar-toggler-icon icon-bar"></span>
      <span class="navbar-toggler-icon icon-bar"></span>
      <span class="navbar-toggler-icon icon-bar"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-end">
      <form class="navbar-form">
        <!-- <div class="input-group no-border">
          <input type="text" value="" class="form-control" placeholder="Search...">
          <button type="submit" class="btn btn-white btn-round btn-just-icon">
            <i class="material-icons">search</i>
            <div class="ripple-container"></div>
          </button>
        </div> -->
      </form>
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="">
            <i class="material-icons">loop</i>
            <p class="d-lg-none d-md-block">
              Reload
            </p>
          </a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link" href="" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="material-icons">person</i>
            <p class="d-lg-none d-md-block">
              Action
            </p>
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
            <a class="dropdown-item" href="logout">Logout</a>
          </div>

        </li>
      </ul>
    </div>
    <?php
  }

  function upmenu()
  {?>
    <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
      <span class="sr-only">Toggle navigation</span>
      <span class="navbar-toggler-icon icon-bar"></span>
      <span class="navbar-toggler-icon icon-bar"></span>
      <span class="navbar-toggler-icon icon-bar"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-end">
      <form class="navbar-form">
        <div class="input-group no-border">
          <input type="text" value="" class="form-control" placeholder="Search...">
          <button type="submit" class="btn btn-white btn-round btn-just-icon">
            <i class="material-icons">search</i>
            <div class="ripple-container"></div>
          </button>
        </div>
      </form>
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="">
            <i class="material-icons">loop</i>
            <p class="d-lg-none d-md-block">
              Reload
            </p>
          </a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link" href="" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="material-icons">person</i>
            <p class="d-lg-none d-md-block">
              Action
            </p>
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
            <a class="dropdown-item" href="logout">Logout</a>
          </div>

        </li>
      </ul>
    </div>
    <?php
  }

 ?>
