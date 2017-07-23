<?php 
$id=$_REQUEST['id'];
$product=loadModel('product');
$row=$product->product_detail($id);
?>
<div id="site-content">
	<div class="col-xs-12 col-sm-9 col-md-9 col-lg-9">
	<div class="nopaddinglr col-xs-12 col-sm-12 col-md-12 col-lg-12">
		<!--ẢNH SẢN PHẨM-->
		<div class="nopaddinglr col-xs-12 col-sm-6 col-md-6 col-lg-6">

		<div class="popup-gallery">
			<ul id="etalage" class="etalage" style="width: 100% !important;">
				<li class="etalage_thumb thumb_1">
					<a href="">
					<img class="etalage_thumb_image" src="public/imgs/product/<?php echo $row['img']; ?>" title="<?php echo $row['name']; ?>" alt="<?php echo $row['name']; ?>" class="img-responsive">
					<img class="etalage_source_image" src="public/imgs/product/<?php echo $row['img']; ?>" title="<?php echo $row['name']; ?>" alt="<?php echo $row['name']; ?>" class="img-responsive">
					</a>
				</li>
			</ul>
			<div class="clearfix"></div>		
		  
		<!-- End .popup-gallery -->
		</div>
		</div><!--/ẢNH SẢN PHẨM-->
	<!--NỘI DUNG SẢN PHẨM-->
		<div class="nopaddinglr col-xs-12 col-sm-6 col-md-6 col-lg-6">
			<div class="product">
				<!--Tên sản phẩm-->
				<div class="producttitle col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<h2><?php echo $row['name']; ?></h2>
				</div>
				<!--Giá-->
				<div class="productprice col-xs-12 col-sm-12 col-md-12 col-lg-12">
		  			
				</div>
				<!--Miêu tả-->
				<div class="producttomtat col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<p>&nbsp;Cửa sổ 2 cánh mở quay Hệ cửa: cửa sổ mở quay Cửa sổ 2 cánh mở quay Kính suốt […]</p>
				</div>
				<form action="" method="post">
				<!--Kích thước-->
				<div class="productselect col-xs-12 col-sm-12 col-md-12 col-lg-12">
		            <input type="hidden" name="variantId" value="">  
				</div>
				<!--nút liên hệ-->
				<div class="add-to-cart muahang col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<button class="addtocart btn btn-info btn-lg hvr-sweep-to-right mhproduct" type="submit" id="button-cart">
					<i class="fa fa-phone" aria-hidden="true"></i> Liên Hệ</button>
				</div>
				</form>
			</div>
		</div>	
	</div>
	<!--MO TA, NHAN XET, TAG -->		
	<div class="motanhanxettag col-xs-12 col-sm-12 col-md-12 col-lg-12" id="productcomment">
			<ul class="nav nav-tabs">
			  <li class="active"><a data-toggle="tab" href="#home">Thông tin sản phẩm</a></li>
			</ul>

			<div class="tab-content">
			  <div id="home" class="tab-pane fade in active">
			 
			  </div>
			  <div id="menu1" class="tab-pane fade">
			    <p>
				Liên kết với các nhà vận chuyển lớn trên cả nước
				  </p>
			  </div>
			  <div id="menu2" class="tab-pane fade">
			     <p>
					Bảo hành ....
				  </p>
			  </div>
			</div>
	</div><!-- Thông tin sản phẩm -->
	</div>	

	<!--sản phẩm tương tự-->

	<div class="nopaddinglr col-xs-12 col-sm-3 col-md-3 col-lg-3">
	<!--sản phẩm liên quan-->
			
		<div class="tieudengang col-xs-12 col-sm-12 col-md-12 col-lg-12">
			<a class="newitems_title" href="">SẢN PHẨM LIÊN QUAN</a>
			<br>
			<img src="" style="margin-top: -15px;">
		</div>
		<div class="spnb">
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
				<div class="img51">
					<div class="grid">
						<figure class="effect-hera banchay" onclick="window.location.href='<?php echo $row['name']; ?>'">
							<img src="public/imgs/product/<?php echo $row['img']; ?>" class="midheight img-responsive" alt="<?php echo $row['name']; ?>">
						</figure>
					</div>
					<div class="itemdetail itemfotter col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<div class="itemdetailtitle">
							<a href=""><h3><?php echo $row['name']; ?></h3></a>
						</div>
 						<p>&nbsp;Cửa sổ 2 cánh mở quay Hệ cửa: cửa sổ mở quay Cửa sổ 2 cánh mở quay Kính suốt […]</p>
                        <div class="add-to-cart muahang col-xs-12 col-sm-12 col-md-12 col-lg-12">
                           <button class="addtocart btn btn-info btn-lg hvr-sweep-to-right mhproduct" type="submit" id="button-cart">
                           <i class="fa fa-info-circle" aria-hidden="true"></i> &nbsp;Chi Tiết</button>
                        </div>
					</div>
				</div>	
				<div class="img51">
					<div class="grid">
						<figure class="effect-hera banchay" onclick="window.location.href='<?php echo $row['name']; ?>'">
							<img src="public/imgs/product/<?php echo $row['img']; ?>" class="midheight img-responsive" alt="<?php echo $row['name']; ?>">
									
						</figure>
					</div>
					<div class="itemdetail itemfotter col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<div class="itemdetailtitle">
							<a href=""><h3><?php echo $row['name']; ?></h3></a>
						</div> 
						<p>&nbsp;Cửa sổ 2 cánh mở quay Hệ cửa: cửa sổ mở quay Cửa sổ 2 cánh mở quay Kính suốt […]</p>
                        <div class="add-to-cart muahang col-xs-12 col-sm-12 col-md-12 col-lg-12">
                           <button class="addtocart btn btn-info btn-lg hvr-sweep-to-right mhproduct" type="submit" id="button-cart">
                           <i class="fa fa-info-circle" aria-hidden="true"></i>&nbsp; Chi Tiết</button>
                        </div>
					</div>
				</div>			
			</div>
		</div>		
		
	</div>
					 
</div>				
						
						
					
					
					

