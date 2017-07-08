<?php
$category=loadModel('category');
$phantrang=loadClass('Pagination');
$current=$phantrang->PageCurrent();
$limit=8;
$first=$phantrang->PageFirst($current,$limit);
$list=$category->category_view($first,$limit);
$total=$category->category_view_count();
?>
 <section>
	<div class="row">
		<div class="col-md-6">
			<h1 class="panel-title">Danh sách loại sản phẩm</h3>
		</div>
		<div class="col-md-6 text-right">
			<a class="btn btn-primary btn-sm" href="index.php?option=category&cat=insert" role="button">
				<span class="glyphicon glyphicon-plus"></span> Thêm mới
			</a>
			<a class="btn btn-primary btn-sm" href="index.php?option=category&cat=trash" role="button">
				<span class="glyphicon glyphicon-trash"></span> Thùng rác
			</a>
							
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
							<th>Tên loại sản phẩm</th>
							<th class="text-center" style='width:90px;'>Trạng thái</th>
							<th class="text-center" style='width:90px;'>Sửa</th>
							<th class="text-center" style='width:90px;'>Xóa</th>
							<th class="text-center" style='width:90px;'>ID</th>
						</tr>
					</thead>
					<tbody>
						<?php foreach($list as $row): ?>
							<?php $id=$row['id']; ?>
							<tr>
								<td class="text-center"><input type="checkbox" value=""></td>
								<td><?php echo $row['name']; ?></td>
								<td class="text-center">
								<a href="index.php?option=category&cat=status&id=<?php echo $id;?>">
									<?php if( $row['status']==1): ?>
                                         <span class="glyphicon glyphicon-ok-circle xanh"></span>
                                     <?php else: ?>
                                        <span class="glyphicon glyphicon-remove-circle do"></span>
                                    <?php endif; ?>
                                  </a>
								</td>
								<td class="text-center">
									<a class="btn btn-default btn-xs btn-success" style="color: white"  href="index.php?option=category&cat=update&id=<?php echo $id;?>" role="button"><span class="glyphicon glyphicon-pencil"></span>Sửa</a>
								</td>
								<td class="text-center">
									<a class="btn btn-default btn-xs btn-danger "  style="color: white"  href="index.php?option=category&cat=deltrash&id=<?php echo $id;?>" role="button">
										<span class="glyphicon glyphicon-trash"></span>Xóa</a>					
								</td>
								<td class="text-center"><?php echo $id; ?></td>
							</tr>
						<?php endforeach; ?>
					</tbody>
				</table>
			</div>
			<!-- /.ND -->
			<div class ="row text-center">
		<ul class="pagination">
			<?php echo $phantrang->PagePer($total,$current,$limit,'category'); ?>
		</ul>
</div>
			
</div>
</div><!-- ./box-body -->
</div><!-- /.box -->