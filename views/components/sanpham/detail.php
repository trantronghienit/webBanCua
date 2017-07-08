<?php 
$id=$_REQUEST['id'];
$product=loadModel('product');
$row=$product->product_detail($id);
?>
<div id="site-content">
<div class="toplink">
	<div class="container">
		<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
			<div class="toplink-left pull-left">			
					<a href="#"><?php echo $row['name']; ?></a>
			</div>
		</div>
		<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
			<div class="toplink-left pull-left">
			</div>
		</div>
	</div>
</div>
<div class="container">
	<div class="col-xs-12 col-sm-9 col-md-9 col-lg-9">
	<!--ẢNH SẢN PHẨM-->
	<div class="nopaddinglr col-xs-12 col-sm-6 col-md-6 col-lg-6">

	<div class="col-sm-12 popup-gallery">

		<div class="row">
			<div class="col-sm-12">
				<div class="product-image inner-cloud-zoom">
					<a href=""><img src="public/imgs/product/<?php echo $row['img']; ?>" title="<?php echo $row['name']; ?>" alt="<?php echo $row['name']; ?>" data-zoom-image="public/imgs/product/<?php echo $row['img']; ?>"></a>
				</div>
			</div>

			<div class="col-sm-12">
				<div class="overflow-thumbnails-carousel">

					<ul class="thumbnails-carousel owl-carousel">
						
						<li>  
							<a href=""><img src="public/imgs/product/<?php echo $row['img']; ?>" data-image="public/imgs/product/<?php echo $row['img']; ?>" data-zoom-image="public/imgs/product/<?php echo $row['img']; ?>" title="<?php echo $row['name']; ?>" alt="<?php echo $row['name']; ?>"></a>
						</li>
						                 
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- End .popup-gallery -->
</div>
<!--NỘI DUNG SẢN PHẨM-->
<div class="nopaddinglr col-xs-12 col-sm-6 col-md-6 col-lg-6">
	<div class="product">
		<!--Tên sản phẩm-->
		<div class="producttitle col-xs-12 col-sm-12 col-md-12 col-lg-12">
		<?php echo $row['name']; ?>
		</div>
		<!--Giá-->
		<div class="productprice col-xs-12 col-sm-12 col-md-12 col-lg-12">
  			<p class="price">
				<span class="price"><?php echo number_format($row['price_buy']); ?>vnđ</span>
			</p>
		</div>
		<!--Miêu tả-->
		<div class="producttomtat col-xs-12 col-sm-12 col-md-12 col-lg-12">
			
		</div>
		<form action="" method="post">
		<!--Kích thước-->
		<div class="productselect col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <input type="hidden" name="variantId" value="">  
		</div>
		<!--nút mua hàng-->
		<div class="add-to-cart muahang col-xs-12 col-sm-12 col-md-12 col-lg-12">
			<button class="addtocart btn btn-info btn-lg hvr-sweep-to-right mhproduct" type="submit" id="button-cart">
			<span class="glyphicon glyphicon-shopping-cart"></span> Mua hàng</button>
		</div>
	</form>
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
</div>

</div> <!--container-->

	<!--sản phẩm tương tự-->

<div class="nopaddinglr col-xs-12 col-sm-3 col-md-3 col-lg-3">
<!--sản phẩm liên quan-->
<div class="">
	<div class="">
		
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
							<figcaption>
								<form action="/cart/add" method="post">
									
									<div class="productselect" style="display:none">
										<input type="hidden" name="variantId" value="2109683">
									</div>
									<!--số lượng-->
									<div class="soluong" style="display:none">		
										<label>Số lượng</label>
										<div class="input-group quantity">
											<span class="input-group-btn">
												<a id="q_down" class="btn btn-default" type="button">-</a>
											</span>
											<input type="text" class="form-control" name="quantity" id="quantity_wanted" size="2" value="1">
											<span class="input-group-btn">
												<a id="q_up" class="btn btn-default" type="button">+</a>
											</span>
										</div>	
									</div>
									<p>	
										<button class="aeffects addtocart add-to-cart" type="submit" id="button-cart">
											<span class="glyphicon glyphicon-shopping-cart"></span></button>	
										
										<a href=""><i class="fa fa-external-link"></i></a>
									</p>
								</form>
							</figcaption>			
						</figure>
					</div>
					<div class="itemdetail itemfotter col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<div class="itemdetailtitle">
							<a href=""><?php echo $row['name']; ?></a>
						</div>

						<div class="productprice">
							<a class="price" href=""><?php echo number_format($row['price_buy']); ?>vnđ</a>
						</div>
					</div>
				</div>	
				<div class="img51">
					<div class="grid">
						<figure class="effect-hera banchay" onclick="window.location.href='<?php echo $row['name']; ?>'">
							<img src="public/imgs/product/<?php echo $row['img']; ?>" class="midheight img-responsive" alt="<?php echo $row['name']; ?>">
							<figcaption>
								<form action="/cart/add" method="post">
									
									<div class="productselect" style="display:none">
										<input type="hidden" name="variantId" value="2109651">	
									</div>
									<!--số lượng-->
									<div class="soluong" style="display:none">		
										<label>Số lượng</label>
										<div class="input-group quantity">
											<span class="input-group-btn">
												<a id="q_down" class="btn btn-default" type="button">-</a>
											</span>
											<input type="text" class="form-control" name="quantity" id="quantity_wanted" size="2" value="1">
											<span class="input-group-btn">
												<a id="q_up" class="btn btn-default" type="button">+</a>
											</span>
										</div>	
									</div>
									<p>										
										<button class="aeffects addtocart add-to-cart" type="submit" id="button-cart">
											<span class="glyphicon glyphicon-shopping-cart"></span></button>	
										
										<a href=""><i class="fa fa-external-link"></i></a>
									</p>
								</form>
							</figcaption>			
						</figure>
					</div>
					<div class="itemdetail itemfotter col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<div class="itemdetailtitle">
							<a href=""><?php echo $row['name']; ?></a>
						</div>

						<div class="productprice">
							<a class="price" href=""><?php echo number_format($row['price_buy']); ?>vnđ</a>
						</div>
					</div>
				</div>			
			</div>
		</div>		
	</div>
</div>
</div>
</div>	
</div>

					 
					
						
						
					
					
					

