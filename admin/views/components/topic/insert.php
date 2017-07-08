<?php 
$topic=loadModel('topic');
$listcatid=$topic->topic_list();
$optioncatid="";
$optionorders="";
foreach ($listcatid as $v) {
		$optioncatid.="<option value='".$v['id']."'>".$v['name']."</option>";
		$optionorders.="<option value='".$v['orders']."'>Sau ".$v['name']."</option>";
	}
?>
<form action="index.php?option=topic&cat=proccess" name="form1" method="post">
	<div class="panel panel-default">
		<div class="panel-heading">
			<div class="row">
				<div class="col-md-6">
					<h3 class="panel-title">Danh sách bài biết</h3>
				</div>
				<div class="col-md-6 text-right">
					<button name="THEM" type="submit" class="btn btn-default">Lưu[Thêm]</button>
					<a class="btn btn-primary btn-smbtn btn-default btn-ms" href="index.php?option=topic" role="button">
						<span class="glyphicon glyphicon-remove"></span> Thoát
					</a>
					
				</div>
			</div>
		</div>
		<div class="panel-body">
			<div class="col-md-9">
				<div class="form-group">
					<label for="">Tên bài biết</label>
					<input name="name" type="text" class="form-control" id="" placeholder="Tên bài biết" required>
				</div>
				<div class="form-group">
					<label for="">Meta keywword</label>
					<textarea name="metakey" class="form-control" rows="3"></textarea>			
				</div>
				<div class="form-group">
					<label for="">Meta desc</label>
					<textarea name="metadesc" class="form-control" rows="3"></textarea>			
				</div>
			</div>
			<div class="col-md-3">
				<div class="form-group">
					<label for="">Chủ đề cha</label>
					<select name="parentid" class="form-control">
						<option value="1">Không cha</option>
						<?php echo $optioncatid; ?>
					</select>			
				</div>
				<div class="form-group">
					<label for="">Xếp Sau</label>
					<select name="orders" class="form-control">
						<option value="1">Chọn Vị Trí </option>
						<?php echo $optionorders; ?>
					</select>			
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