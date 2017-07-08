<?php 
	$category=loadModel('category');
	$pt=loadClass('Pagination');
	$limit=10;
	$current=$pt->PageCurrent();
	$first=$pt->PageFirst($current,$limit);
	$list=$category->category_trash($first,$limit);
	$total=$category->category_trash_count();
 ?>
 <section>
	<div class="row">
		<div class="col-md-6">
			<h1 class="panel-title">Thùng rác loại sản phẩm</h3>
		</div>
		<div class="col-md-6 text-right">
			<a class="btn btn-primary btn-sm" href="index.php?option=category" role="button">
				<span class="glyphicon glyphicon-plus"></span>Thoát</a>		
		</div>
</section>
<div class="box">

	<div class="box-header with-border">
		<!-- Search Limit -->
		<section class="content-search">
			<div class="form-inline">
				<div class="input-group">
					<span class="input-group-addon" id="basic-addon1">Tìm kiếm</span>
					<input type="text" name="search" onkeypress="FEnter(event);" id="search" class="form-control">
					<span class="input-group-addon"><i onclick="FChange();" class="glyphicon glyphicon-search"></i></span>
				</div>
				<div class="input-group">
					<span class="input-group-addon" id="basic-addon1">Hiển thị</span>
					<select name="limit" id="limit" onchange="FChange();" class="form-control">
						<option value="10">10</option>
						<option value="20">20</option>
						<option value="30">30</option>
						<option value="40">40</option>
						<option value="50">50</option>
						<option value="100">100</option>
						<option value="all">Tất cả</option>
					</select>
				</div>
			</div>
		</section>
		<!--./Search Limit -->
		<div class="box-tools pull-right">
			<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
		</div>
	</div>
	<!-- /.box-header -->
	<div class="box-body">
		<div class="row" style='padding:0px; margin:0px;'>
			<!--ND-->
			<div class="table-responsive">
				<table class="table table-hover">
					<thead>
						<tr>
							<th class='text-center' style='width:10px;'><input name='checkAll' id='checkAll' type='checkbox'/></th>
							<th style="width: 350px;">Tên loại sản phẩm</th>
					
							<th class="text-center" style="width: 90px;">Khôi phục</th>
							<th class="text-center" style="width: 90px;">Xóa Vĩnh Viễn</th>
							<th class="text-center" style="width: 90px;">ID</th>
						</tr>
					</thead>
					<tbody>
						<?php foreach($list as $row): ?>
							<?php $id=$row['id']; ?>
							<tr>
								<td class="text-center"><input type="checkbox" value=""></td>
								<td><?php echo $row['name']; ?></td>
								
								<td class="text-center">
									<a class="btn btn-default btn-xs" href="index.php?option=category&cat=retrash&id=<?php echo $id;?>" role="button"><span class="glyphicon glyphicon-repeat "></span>Khôi phục</a>
								</td>
								<td class="text-center">
									<a class="btn btn-default btn-xs" href="index.php?option=category&cat=delete&id=<?php echo $id;?>" role="button">
										<span class="glyphicon glyphicon-trash maudo"></span>Xóa Vĩnh Viễn</a>					
								</td>
								<td class="text-center"><?php echo $id; ?></td>
							</tr>
						<?php endforeach; ?>
					</tbody>
				</table>
			</div>
			<!-- /.ND -->
			<div class="row pagination text-center ">			
				<?php echo $pt->PagePer($total, $current, $limit,'category'); ?>
			</div>
		</div>
	</div><!-- ./box-body -->
</div><!-- /.box -->