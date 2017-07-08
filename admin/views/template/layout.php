<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Quản lý hệ thống</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="public/css/bootstrap.min.css">
  <link rel="stylesheet" href="public/css/_all-skins.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="public/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="public/css/ionicons.min.css2">
  <!-- Theme style -->
  <link rel="stylesheet" href="public/css/AdminLTE.min.css">

  <link rel="stylesheet" href="public/css/layout.css">
  <script src="public/ckeditor/ckeditor.js"></script>

</head>
<body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">
        <!-- Vung Header -->
        <header class="main-header">
           <?php loadModule('mainmenu'); ?>
        </header>
        <aside class="main-sidebar">
            <section class="sidebar">
                <?php loadModule('sidebar'); ?>
			</section>
		<!-- /.sidebar -->
		</aside>
		<div class="content-wrapper">
			<section class="content-header">
				<!-- <?php loadModule('toolbar'); ?> -->
			</section>
			<!-- Main content -->
			<section class="content">
				<div class="row">
					<div class="col-md-12">
					<?php loadComponents('') ?>
					</div>
			    </div>
			</section>
		</div><!-- /.content-wrapper -->
	    <footer class="main-footer">
			<div class="pull-right hidden-xs"><b>Version</b> 2.3.5</div>
			<strong>Copyright &copy; 2014-2016 <a href="http://trantronghien.github.io">hien tran</a>.</strong> All rights reserved.
	    </footer>
	</div><!-- ./wrapper -->
	<!-- jQuery 2.2.3 -->
	<script src="public/js/jquery-2.2.3.min.js"></script>
	<!-- jQuery UI 1.11.4 -->
	<script src="public/js/jquery-ui.min.js"></script>
	<!-- Bootstrap 3.3.6 -->
	<script src="public/js/bootstrap.min.js"></script>
	<!-- AdminLTE App -->
	<script src="public/js/app.min.js"></script>
</body>
</html>
