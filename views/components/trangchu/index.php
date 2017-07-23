<?php
   $product        = loadModel('Product');
   $listproductnew = $product->product_home_lastnew(4);
   $listproductbuy = $product->product_home_buy(4);
   ?>
<div class="topitems">
      <!-- chưa chỉnh lại a href="index.php?option=sanpham -->
      <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
         <div class="grid" id="grid-small">
            <figure class="effect-bubba">
               <img src="public/imgs/cua-upvc-di.jpg" alt="Cửa UPVc - hệ cửa đi">
               <figcaption>
                  <div class="figbottom">
                     <h2><span>Cửa UPVc - hệ cửa đi</span></h2>
                     <div class="btnxemngay"  style="padding: 20px 2.5em;">
                        <a href="index.php?option=sanpham">XEM NGAY</a>    
                     </div>
                     <a href="" style="display:none">View more</a>
                  </div>
               </figcaption>
            </figure>
         </div>
         <div class="grid" id="grid-small">
            <figure class="effect-bubba" style:"height: 255px;">
               <img src="public/imgs/cua-upvc-cua-so.jpg" alt="Cửa UPVc - hệ cửa sổ">
               <figcaption>
                  <div class="figbottom">
                     <h2><span>Cửa UPVc - hệ cửa sổ</span></h2>
                     <div class="btnxemngay"  style="padding: 20px 2.5em;">
                        <a href="index.php?option=sanpham">XEM NGAY</a>    
                     </div>
                     <a href="" style="display:none">View more</a>
                  </div>
               </figcaption>
            </figure>
         </div>
      </div>
      <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
         <div class="grid" id="grid-small">
            <figure class="effect-bubba">
               <img src="public/imgs/cua-di-nhom.jpg" alt="Cửa nhôm - hệ cửa đi">
               <figcaption>
                  <div class="figbottom">
                     <h2><span>Cửa nhôm - hệ cửa đi</span></h2>
                     <div class="btnxemngay"  style="padding: 20px 2.5em;">
                        <a href="index.php?option=sanpham">XEM NGAY</a>    
                     </div>
                     <a href="" style="display:none">View more</a>
                  </div>
               </figcaption>
            </figure>
         </div>
         <div class="grid" id="grid-small">
            <figure class="effect-bubba">
               <img src="public/imgs/cua-nhom-cua-so.jpg" alt="Cửa nhôm - hệ của sổ">
               <figcaption>
                  <div class="figbottom">
                     <h2><span>Cửa nhôm - hệ của sổ</span></h2>
                     <div class="btnxemngay"  style="padding: 20px 2.5em;">
                        <a href="index.php?option=sanpham">XEM NGAY</a>    
                     </div>
                     <a href="" style="display:none">View more</a>
                  </div>
               </figcaption>
            </figure>
         </div>
      </div>
      <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
         <div class="grid" id="grid-small">
            <figure class="effect-bubba">
               <img src="public/imgs/phu-kien-upvc.jpg" alt="Phụ kiện - UPVc">
               <figcaption>
                  <div class="figbottom">
                     <h2><span>Phụ kiện - UPVc</span></h2>
                     <div class="btnxemngay"  style="padding: 20px 2.5em;">
                        <a href="index.php?option=sanpham">XEM NGAY</a>    
                     </div>
                     <a href="" style="display:none">View more</a>
                  </div>
               </figcaption>
            </figure>
         </div>
         <div class="grid" id="grid-small">
            <figure class="effect-bubba">
               <img src="public/imgs/phu-kien-cua-nhom.jpg" alt="Phụ kiện - cửa nhôm">
               <figcaption>
                  <div class="figbottom">
                     <h2><span>Phụ kiện - cửa nhôm</span></h2>
                     <div class="btnxemngay"  style="padding: 20px 2.5em;">
                        <a href="index.php?option=sanpham">XEM NGAY</a>    
                     </div>
                     <a href="" style="display:none">View more</a>
                  </div>
               </figcaption>
            </figure>
         </div>
      </div>
</div>
<!--TOP ITEMS END-->
<!--NEW ITEMS BEGIN-->
<div class="newitems">
  
      <div class="tieudengang tieudespm col-xs-12 col-sm-12 col-md-12 col-lg-12">
         <a class="newitems_title" href="#">SẢN PHẦM MỚI</a>
         <br>
         <img src="public/imgs/star.jpg" style="margin-top: -15px;">
      </div>
      <div class="spmdanhmucngang col-xs-12 col-sm-12 col-md-12 col-lg-12">
         <ul class="newitemstag">
            <li class="list-group-item linewitemstag active"><a data-toggle="tab" href="#menu1">
               CỬA NHỰA uPVC cao cấp</a>
            </li>
            <li class="list-group-item linewitemstag"><a data-toggle="tab" href="#menu2">
               Cửa Nhôm & Mặt Dựng Nhôm Kính</a>
            </li>
            <li class="list-group-item linewitemstag"><a data-toggle="tab" href="#menu3">
               Hệ Thống Khóa Master</a>
            </li>
         </ul>
      </div>
      <div class="tab-content">
         <div id="menu1" class="tab-pane fade in active">
            <?php
               foreach ($listproductnew as $row):
               ?>
            <form action="/cart/add" method="post">
               <div class="newitemscontent col-xs-12 col-sm-6 col-md-4 col-lg-4">
                   <div class="grid spbanchay">
                     <figure class="effect-hera banchay">
                        <a href="index.php?option=sanpham&id=<?php
                           echo $row['alias'];
                           ?>">
                        <img src="public/imgs/product/<?php
                           echo $row['img'];
                           ?>" class="img-responsive" alt="<?php
                           echo $row['name'];
                           ?>">
                        </a>
                     </figure>
                     <div class="itemdetail itemfotter">
                        <div class="itemdetailtitle">
                           <a href="index.php?option=sanpham&id=<?php
                              echo $row['alias'];
                              ?>"><?php
                              echo $row['name'];
                              ?></a>
                        </div>
                        <p>&nbsp;Cửa sổ 2 cánh mở quay Hệ cửa: cửa sổ mở quay Cửa sổ 2 cánh mở quay Kính suốt […]</p>
                        <div class="add-to-cart muahang col-xs-12 col-sm-12 col-md-12 col-lg-12">
                           <button class="addtocart btn btn-info btn-lg hvr-sweep-to-right mhproduct" type="submit" id="button-cart">
                           <i class="fa fa-info-circle" aria-hidden="true"></i>&nbsp; Chi Tiết</button>
                        </div>
                     </div>
                  </div>
               </div>
            </form>
            <?php
               endforeach;
               ?>
         </div>
         <div id="menu2" class="tab-pane fade">
            <?php
               foreach ($listproductnew as $row):
               ?>       
            <form action="/cart/add" method="post">
               <div class="newitemscontent col-xs-12 col-sm-6 col-md-4 col-lg-4">
                  <div class="grid spbanchay">
                     <figure class="effect-hera banchay">
                        <a href="index.php?option=sanpham&id=<?php
                           echo $row['alias'];
                           ?>">
                        <img src="public/imgs/product/<?php
                           echo $row['img'];
                           ?>" class="img-responsive" alt="<?php
                           echo $row['name'];
                           ?>">
                        </a>
                     </figure>
                     <div class="itemdetail itemfotter">
                        <div class="itemdetailtitle">
                           <a href="index.php?option=sanpham&id=<?php
                              echo $row['alias'];
                              ?>"><?php
                              echo $row['name'];
                              ?></a>
                        </div>
                        <p>&nbsp;Cửa sổ 2 cánh mở quay Hệ cửa: cửa sổ mở quay Cửa sổ 2 cánh mở quay Kính suốt […]</p>
                        <div class="add-to-cart muahang col-xs-12 col-sm-12 col-md-12 col-lg-12">
                           <button class="addtocart btn btn-info btn-lg hvr-sweep-to-right mhproduct" type="submit" id="button-cart">
                           <i class="fa fa-info-circle" aria-hidden="true"></i>&nbsp; Chi Tiết</button>
                        </div>
                     </div>
                  </div>
               </div>
            </form>
            <?php
               endforeach;
               ?>
         </div>
         <div id="menu3" class="tab-pane fade">
            <?php
               foreach ($listproductnew as $row):
               ?> 
            <form action="/cart/add" method="post">
               <div class="newitemscontent col-xs-12 col-sm-6 col-md-4 col-lg-4">
                  <div class="grid spbanchay">
                     <figure class="effect-hera banchay">
                        <a href="index.php?option=sanpham&id=<?php
                           echo $row['alias'];
                           ?>">
                        <img src="public/imgs/product/<?php
                           echo $row['img'];
                           ?>" class="img-responsive" alt="<?php
                           echo $row['name'];
                           ?>">
                        </a>
                     </figure>
                     <div class="itemdetail itemfotter">
                        <div class="itemdetailtitle">
                           <a href="index.php?option=sanpham&id=<?php
                              echo $row['alias'];
                              ?>"><?php
                              echo $row['name'];
                              ?></a>
                        </div>
                        <p>&nbsp;Cửa sổ 2 cánh mở quay Hệ cửa: cửa sổ mở quay Cửa sổ 2 cánh mở quay Kính suốt […]</p>
                        <div class="add-to-cart muahang col-xs-12 col-sm-12 col-md-12 col-lg-12">
                           <button class="addtocart btn btn-info btn-lg hvr-sweep-to-right mhproduct" type="submit" id="button-cart">
                           <i class="fa fa-info-circle" aria-hidden="true"></i>&nbsp; Chi Tiết</button>
                        </div>
                     </div>
                  </div>
               </div>
            </form>
            <?php
               endforeach;
               ?> 
         </div>
      </div>
  
   <div class="clean"></div>
</div>