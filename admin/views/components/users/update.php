<?php 
$id=$_REQUEST['id'];
$users=loadModel('users');
$row=$users->users_detail($id);
?>
<form action="index.php?option=users&cat=proccess&id=<?php echo $row['id']; ?>" name="form1" method="post" enctype="multipart/form-data">
	<div class="panel panel-default">
		<div class="panel-heading">
			<div class="row">
				<div class="col-md-6">
					<h3 class="panel-title">Cập nhật thành viên</h3>
				</div>
				<div class="col-md-6 text-right">
					<button name="CAPNHAT" type="submit" class="btn btn-default">Lưu[Cập nhật]</button>
					<a class="btn btn-primary btn-smbtn btn-default btn-ms" href="index.php?option=users" role="button">
						<span class="glyphicon glyphicon-remove"></span> Thoát
					</a>
					
				</div>
			</div>
		</div>
		<div class="panel-body">
			<div class="col-md-9">
				<div class="form-group">
					<label for="">Họ và Tên</label>
					<input name="fullname" type="text" value="<?php echo $row['fullname']; ?>" class="form-control" placeholder="Họ và Tên" required>
				</div>
				<div class="form-group">
					<label for="">Tên đăng nhập</label>
					<input name="username" type="text" value="<?php echo $row['username']; ?>" class="form-control" placeholder="Tên đăng nhập" readonly>
				</div>
				<div class="form-group">
					<label for="">Mật khẩu cũ</label>
					<input name="passwordcu" type="password"  class="form-control" placeholder="Mật khẩu cũ" required>
				</div>
				<div class="form-group">
					<label for="">Mật khẩu</label>
					<input name="password1" type="password"  class="form-control" placeholder="Mật khẩu" required>
				</div>
				
				<div class="form-group">
					<label for="">Xác nhận mật khẩu</label>
					<input name="password2" type="password" class="form-control" placeholder="Xác nhận mật khẩu" required>
				</div>
				<div class="form-group">
					<label for="">Email</label>
					<input name="email" type="email" value="<?php echo $row['email']; ?>" class="form-control" placeholder="Email" required>
				</div>
			</div>
			<div class="col-md-3">
				<div class="form-group">
					<label for="">Hình đại diện</label>
					<input name="img" type="file" class="form-control" placeholder="Hình đại diện">
				</div>
				<div class="form-group">
					<label for="">Điện thoại</label>
					<input name="phone" type="phone" value="<?php echo $row['phone']; ?>" class="form-control" placeholder="Điện thoại" required>
				</div>
				<div class="form-group">
					<label for="">Giới tính</label>
					<select name="gender" class="form-control">
						<option value="1">Nam</option>
						<option value="0">Nữ</option>
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