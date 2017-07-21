<!doctype html>
<html lang="en">
   <head>
      <meta charset="utf-8" />
      <meta http-equiv="X-UA-Compatible" content="IE-edge">
      <meta name="viewport" content="with=device-width,initial-scale=1,user-scalable=yes">
      <meta property="fb:app_id" content="{1144588868979362}" />
      <title>CỬA NHỰA LÕI THÉP - CỬA NHÔM CAO CẤP UY TÍN</title>
      <link rel="stylesheet" href="public/css/bootstrap.css">
      <link rel="stylesheet" href="public/css/layoutsite.css" />
      <link rel="shortcut icon" href="public/imgs/ic_windowview.ico" type="image/x-icon">
      <link rel="stylesheet" href="public/fonts/font-awesome.css">
      <link rel="stylesheet" href="public/fonts/font-awesome.min.css">
       
   </head>
   <body>
   <div id="wapper">
      <div class="fluid1">
      <div id="site-header">
         <div class="top1">
                  <?php loadModules('menutop');?>
         </div>
         <!-- main header -->
         <div class="container header">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                  <?php loadModules('logo');?>
                  <?php loadModules('slidetext');?>
            </div>
         </div>
      </div>
      <!-- /main header -->
      <!-- Navigation menu -->
      <div class="menu">
      <div class="fluid1">
            <nav class="navbar navbar-default yamm">
               <div class="navbar-header">
                  <button type="button" data-toggle="collapse" data-target="#navbar-collapse-grid" class="navbar-toggle">
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  </button>
                  <a href="" class="navbar-brand">Cửa Nhựa Lõi Thép Cao Cấp</a>
               </div>
               <div id="navbar-collapse-grid" class="navbar-collapse collapse">
                  <?php loadModules('mainmenu');?>
               </div>
            </nav>
            </div>
      </div>
       <!-- /Navigation menu -->
      <div id="site-content">
            <div class="row"> 
            <?php loadModules('Slideshow');?>
         
             <div  style="padding-top: 15px;">
            <?php loadComponent();?>
               
            </div>
         </div>
         <div class="clean"></div>
         <!-- footer -->
         <div class="footer"> 
           <div class="row">
           
               <div class="col-lg-3 col-md-3 col-xs-12 col-sm-12 ">
                  <?php loadModules('footer-diachi');?>
               </div>
               <div class="col_footer_lager">
                  <div class="col-lg-2 col-md-2 col-xs-12 col-sm-12 ">
                     <?php loadModules('footer-gioithieu');?>
                  </div>
                  <div class="col-lg-2 col-md-2 col-xs-12 col-sm-12 ">
                     <?php loadModules('footer-lienket');?>
                  </div>
                 <div class="col-lg-3 col-md-3 col-xs-12 col-sm-12 ">
                     <?php loadModules('footer-Fanpage');?>
                  </div>
                   <div class="col-lg-2 col-md-2 col-xs-12 col-sm-12 ">
                     <?php loadModules('footer-thanhtoan-vanchuyen');?>
                  </div>
               </div>
               <!-- end  .col_footer_lager -->
               <div class="col_footer_small">
                  <!--<?php loadModules('footer-Fanpage');?>-->
               </div>
            </div>
            <!-- end col_footer_small -->
         </div>
     

      <!--NEW ITEMS END-->
      <script type="text/javascript" src="public/js/jquery-2.2.3.min.js"></script>
      <script type="text/javascript" src="public/js/headerslide.js"></script>
      <!-- Bootstrap JavaScript -->
      <script type="text/javascript" src="public/js/bootstrap.min.js"></script>
      <script type="text/javascript" src="public/js/jquery.js"></script>
      <script type="text/javascript" src="public/js/jquery.etalage.min.js"></script>
      <script type="text/javascript" src="public/js/jquery.util.js"></script>
     
      <button onclick="topFunction()" id="myBtn" title="Lên đầu trang"><i class="fa fa-chevron-circle-up" aria-hidden="true"  style="font-size: 24px;"></i></button>
      </div>
      </div>
   </body>
</html>
