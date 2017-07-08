<?php 
$product=loadModel('product');
$category=loadModel('category');
$listcatid=$category->category_list();
$optioncatid="";
foreach ($listcatid as $v) {
		$optioncatid.="<option value='".$v['id']."'>".$v['name']."</option>";
	}
?>
<form action="index.php?option=product&cat=proccess" name="form1" method="post" enctype="multipart/form-data">
	<div class="panel panel-default">
		<div class="panel-heading">
			<div class="row">
				<div class="col-md-6">
					<h3 class="panel-title">Thêm sản phẩm</h3>
				</div>
				<div class="col-md-6 text-right">
					<button name="THEM" type="submit" class="btn btn-default">Lưu[Thêm]</button>
					<a class="btn btn-primary btn-smbtn btn-default btn-ms" href="index.php?option=product" role="button">
						<span class="glyphicon glyphicon-remove"></span> Thoát
					</a>
					
				</div>
			</div>
		</div>
		<div class="panel-body">
			<div class="col-md-9">
				<div class="form-group">
					<label for="">Tên sản phẩm</label>
					<input name="name" type="text" class="form-control" id="" placeholder="Tên sản phẩm" required>
				</div>
				<div class="form-group">
					<label for="">Chi tiết</label>
					<textarea name="detail" class="form-control" rows="3"></textarea>		
					
					<script>CKEDITOR.replace('detail')</script>	

				</div>
				<div class="form-group">
					<label for="">Meta keyword</label>
					<textarea name="metakey" class="form-control" rows="3"></textarea>			
				</div>
				<div class="form-group">
					<label for="">Meta desc</label>
					<textarea name="metadesc" class="form-control" rows="3"></textarea>			
				</div>
			</div>
			<div class="col-md-3">
				<div class="form-group">
					<label for="">Loại sản phẩm</label>
					<select name="catid" class="form-control">
						<option value="">Chọn loại sản phẩm</option>
						<?php echo $optioncatid; ?>
					</select>			
				</div>
				<div class="form-group">
					<label for="">Số lượng</label>
					<input type="number" name="number" class="form-control" value="1" min="1" max="100" step="1" >		
				</div>
				<div class="form-group">
					<label for="">Giá bán</label>
					<input type="number" name="price_buy" class="form-control" value="10000" min="10000" max="100000000" step="5000" >		
				</div>
				<div class="form-group">
					<label for="">Giá khuyến mãi</label>
					<input type="number" name="price_sale" class="form-control" value="10000" min="10000" max="100000000" step="5000" >		
				</div>
				<div class="form-group">
					<label for="">Hình sản phẩm</label>
					<input type="file" name="img" id="input" class="form-control" required>	
				</div>
				<div class="form-group">
					<label for="">Xuất bản</label>
					<select name="status" class="form-control">
						<option value="1">Xuất bản</option>
						<option value="0">Chưa xuất bản</option>
					</select>			
				</div>
			</div>
		</div>
	</div>
</form>