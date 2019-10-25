<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<title>Trần Mai Nhật Uyên</title>
		<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="./bootstrap/css/bootstrap-theme.css">
		<link rel="stylesheet" type="text/css" href="./bootstrap/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href=".fa/css/font-awesome.css">
		<script type="text/javascript" src="./jquery/jquery-3.2.1.js"></script>
		<script type="text/javascript" src="./bootstrap/js/bootstrap.js"></script>
		<link rel="stylesheet" type="text/css" href="./bootstrap-select/bootstrap-select.css">
		<script type="text/javascript" src="./bootstrap-select/bootstrap-select.js"></script>
	</head>
	<body>

		<div class="container-fluid">

				<h2 class="text-center">Quản Lý Nhân viên</h2>

				<div class="row">
					<div class="col-lg-8 pull-right">
						<div class="input-group">	
							<input type="search" name="" class="form-control" placeholder="Nhập giá trị tìm kiếm...">	
							<span class="input-group-btn">
								<button class="btn btn-primary" type="button"><span class="glyphicon glyphicon-search">Tìm Kiếm</button>
								<button class="btn btn-primary" type="button"><span class="glyphicon glyphicon-plus"> Thoát</button>
							</span>
						</div>
					</div>
				</div>


				<hr/>
				<div class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>STT</th>
								<th>Mã NV</th>
								<th>Họ tên</th>
								<th>Ngày sinh</th>
								<th>Quê quán</th>
								<th>Thao tác</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>NV0001</td>
								<td>Trần Mai Nhật Uyên</td>
								<td>01/05/1982</td>
								<td>Thái Bình</td>
								<td>
									<button class="btn btn-info" type="button"><span class="glyphicon glyphicon-info-sign"></button>
									<button class="btn btn-primary" type="button"><span class="glyphicon glyphicon-edit"></button>
									<button class="btn btn-danger" type="button"><span class="glyphicon glyphicon-trash"></button>
								</td>
							</tr>
							<tr>
								<td>2</td>
								<td>NV0002</td>
								<td>Nguyễn Văn An</td>
								<td>07/04/1980</td>
								<td>Vũng Tàu</td>
								<td>
									<button class="btn btn-info" type="button"><span class="glyphicon glyphicon-info-sign"></button>
									<button class="btn btn-primary" type="button"><span class="glyphicon glyphicon-edit"></button>
									<button class="btn btn-danger" type="button"><span class="glyphicon glyphicon-trash"></button>
								</td>
							</tr>
							<tr>
								<td>3</td>
								<td>NV0003</td>
								<td>Nguyễn Thị Bi</td>
								<td>04/09/1983</td>
								<td>Vũng Tàu</td>
								<td>
									<button class="btn btn-info" type="button"><span class="glyphicon glyphicon-info-sign"></button>
									<button class="btn btn-primary" type="button"><span class="glyphicon glyphicon-edit"></button>
									<button class="btn btn-danger" type="button"><span class="glyphicon glyphicon-trash"></button>
								</td>
							</tr>
							<tr>
								<td>4</td>
								<td>NV0004</td>
								<td>Trần Văn Tú</td>
								<td>04/07/1988</td>
								<td>Vũng Tàu</td>
								<td>
									<button class="btn btn-info" type="button"><span class="glyphicon glyphicon-info-sign"></button>
									<button class="btn btn-primary" type="button"><span class="glyphicon glyphicon-edit"></button>
									<button class="btn btn-danger" type="button"><span class="glyphicon glyphicon-trash"></button>
								</td>
							</tr>
							<tr>
								<td>5</td>
								<td>NV0005</td>
								<td>Mai Văn Anh</td>
								<td>11/08/1989</td>
								<td>Vũng tàu</td>
								<td>
									<button class="btn btn-info" type="button"><span class="glyphicon glyphicon-info-sign"></button>
									<button class="btn btn-primary" type="button"><span class="glyphicon glyphicon-edit"></button>
									<button class="btn btn-danger" type="button"><span class="glyphicon glyphicon-trash"></button>
								</td>
							</tr>
						</tbody>
					</table>
				</div>

				<br/>
				<br/>
				<br/>
				<br/>
				<br/>
			

				<h2 class="text-center">Thiết Lập Hệ Số Lương Cho Nhân Viên</h2>

				<div class="row">
					<div class="col-lg-8 pull-right">
						<div class="input-group">	
							<input type="search" name="" class="form-control" placeholder="Nhập giá trị tìm kiếm...">	
							<span class="input-group-btn">
								<button class="btn btn-primary" type="button"><span class="glyphicon glyphicon-search"> Tìm Kiếm</button>
							</span>
						</div>
					</div>
				</div>


				<hr/>
				<div class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>STT</th>
								<th>Mã NV</th>
								<th>Họ Tên</th>
								<th>Loại NV</th>
								<th>Lương theo ngĂ y</th>
								<th>Thao tác</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>NV0001</td>
								<td>Trần Mai Nhật Uyên</td>
								<td>
									<select class="selectpicker">
										<option>Nhân viên cao cấp</option>
										<option>Nhân viên giỏi</option>
										<option>Nhân viên</option>
									</select>
								</td>
								<td>
									<input class="form-control" type="text" value="300.000"></input>
								</td>
								<td>
									<button class="btn btn-info" type="button"><span class="glyphicon glyphicon-info-sign"></button>
									<button class="btn btn-primary" type="button"><span class="glyphicon glyphicon-edit"></button>
									<button class="btn btn-danger" type="button"><span class="glyphicon glyphicon-trash"></button>
								</td>
							</tr>
							<tr>
								<td>2</td>
								<td>NV0002</td>
								<td>Nguyễn Văn An</td>
								<td>
									<select class="selectpicker">
										<option>Nhân viên cao câp</option>
										<option selected>Nhân viên gỏi</option>
										<option>Nhân viên</option>
									</select>
								</td>
								<td>
									<input class="form-control" type="text" value="250.000"></input>
								</td>
								<td>
									<button class="btn btn-info" type="button"><span class="glyphicon glyphicon-info-sign"></button>
									<button class="btn btn-primary" type="button"><span class="glyphicon glyphicon-edit"></button>
									<button class="btn btn-danger" type="button"><span class="glyphicon glyphicon-trash"></button>
								</td>
							</tr>
							<tr>
								<td>3</td>
								<td>NV0003</td>
								<td>Nguyễn Thị Bi</td>
								<td>
									<select class="selectpicker">
										<option>Nhân viên cao cấp</option>
										<option selected>Nhân viên giỏi</option>
										<option>Nhân viên</option>
									</select>
								</td>
								<td>
									<input class="form-control" type="text" value="250.000"></input>
								</td>
								<td>
									<button class="btn btn-info" type="button"><span class="glyphicon glyphicon-info-sign"></button>
									<button class="btn btn-primary" type="button"><span class="glyphicon glyphicon-edit"></button>
									<button class="btn btn-danger" type="button"><span class="glyphicon glyphicon-trash"></button>
								</td>
							</tr>
							<tr>
								<td>4</td>
								<td>NV0004</td>
								<td>Trần Văn Tú</td>
								<td>
									<select class="selectpicker">
										<option>Nhân viên cao cấp</option>
										<option>Nhân viên giỏi</option>
										<option>Nhân viên</option>
									</select>
								</td>
								<td>
									<input class="form-control" type="text" value="300.000"></input>
								</td>
								<td>
									<button class="btn btn-info" type="button"><span class="glyphicon glyphicon-info-sign"></button>
									<button class="btn btn-primary" type="button"><span class="glyphicon glyphicon-edit"></button>
									<button class="btn btn-danger" type="button"><span class="glyphicon glyphicon-trash"></button>
								</td>
							</tr>
							<tr>
								<td>5</td>
								<td>NV0005</td>
								<td>Mai Văn Anh</td>
								<td>
									<select class="selectpicker">
										<option>Nhân Viên cao cấp</option>
										<option>Nhân viên giỏi</option>
										<option selected>Nhân viên</option>
									</select>
								</td>
								<td>
									<input class="form-control" type="text" value="220.000"></input>
								</td>
								<td>
									<button class="btn btn-info" type="button"><span class="glyphicon glyphicon-info-sign"></button>
									<button class="btn btn-primary" type="button"><span class="glyphicon glyphicon-edit"></button>
									<button class="btn btn-danger" type="button"><span class="glyphicon glyphicon-trash"></button>
								</td>
							</tr>
						</tbody>
					</table>
				</div>

		</div>

	</body>
</html>	