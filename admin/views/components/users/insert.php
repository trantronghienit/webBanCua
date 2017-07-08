
<form action="index.php?option=users&cat=proccess" name="form1" method="post" enctype="multipart/form-data">
	<div class="panel panel-default">
		<div class="panel-heading">
			<div class="row">
				<div class="col-md-6">
					<h3 class="panel-title">Thêm thành viên</h3>
				</div>
				<div class="col-md-6 text-right">
					<button name="THEM" type="submit" class="btn btn-default">Lưu[Thêm]</button>
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
					<input name="fullname" type="text" class="form-control" id="" placeholder="Họ và Tên" required>
				</div>
				<div class="form-group">
					<label for="">Tên đăng nhập</label>
					<input name="username" type="text" class="form-control" id="" placeholder="Tên đăng nhập" required>
				</div>
				<div class="form-group">
					<label for="">Mật khẩu</label>
					<input name="password1" type="password" class="form-control" id="" placeholder="Mật khẩu" required>
				</div>
				<div class="form-group">
					<label for="">Xác nhận mật khẩu</label>
					<input name="password2" type="password" class="form-control" id="" placeholder="Xác nhận mật khẩu" required>
				</div>
				<div class="form-group">
					<label for="">Email</label>
					<input name="email" type="email" class="form-control" id="" placeholder="Email" required>
				</div>
			</div>
			<div class="col-md-3">
				<div class="form-group">
					<label for="">Hình đại diện</label>
					<input name="img" type="file" class="form-control" placeholder="Hình đại diện">
				</div>
				<div class="form-group">
					<label for="">Điện thoại</label>
					<input name="phone" type="phone" class="form-control" id="" placeholder="Điện thoại" required>
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