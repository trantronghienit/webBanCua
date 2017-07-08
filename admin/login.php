<?php
session_start();
define('BASEPATH', true);
include_once('../config.php');
include_once('core/Database.php');
include_once('core/load.php');
$message="";
if(isset($_POST['DANGNHAP']))
{
	$users=loadModel('users');
	$username=$_POST['username'];
	$password=sha1($_POST['password']);
	if($users->users_is_username($username)==true)
	{
		if($users->users_is_login($username,$password)!=false)
		{
			$row=$users->users_is_login($username,$password);
			$_SESSION['user_admin']=$row['username'];
			$_SESSION['fullname']=$row['fullname'];
			$_SESSION['user_id']=$row['id'];
			header('location:index.php');
		}
		else
		{
			$message="Mật khẩu không đúng";
		}
	}
	else
	{
		$message="Tên đăng nhập không tồn tại";
	}
}
?>


<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Window View Admin</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="public/css/bootstrap.min.css">  
  <link rel="stylesheet" href="public/css/AdminLTE.min.css">
  <link rel="stylesheet" href="public/css/adminlogin.css">   
  <link rel="stylesheet" href="public/css/_all-skins.min.css">
</head>
<body class="hold-transition skin-blue sidebar-mini">

   <div class="body"></div>
    <div class="grad"></div>
    <div class="header">
      <div>
        <span>Đăng Nhập</span>
      </div>
    </div>
    <br>
    <div class="login">

        <form action="login.php" method="POST" role="form">
          <div class="form-group">
            <label for=""> Tên Đăng Nhập </label>
            <input type="text" placeholder="Tên Đăng Nhập" name="username">
          </div>
          <div class="form-group">
            <label for=""> Tên Đăng Nhập </label>
            <input type="password" placeholder="Mật Khẩu" name="password">
          </div>
          <input type="submit" value="đăng nhập" name="DANGNHAP">
          <div class="row text-center">
            <h6 style="color: blanchedalmond;"> <?php echo $message; ?> </h6>
          </div>
        </form>
    </div>
  <script src='../public/js/jquery-2.2.3.min.js'></script>
</body>
</html>

