
<%@page import="java.sql.ResultSet"%>
<%@page import="model.ConnectDB"%>
<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Lab-7</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="" crossorigin="anonymous">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="" crossorigin="anonymous">

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="" crossorigin="anonymous"></script>
</head>
<body>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="">NhatUyen's WebSite</a>
		</div>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="#"><span class="glyphicon glyphicon-user"></span>Hello
			</a></li>
			<li><a href="index.jsp"><span
					class="glyphicon glyphicon-log-out"></span> Logout</a></li>
		</ul>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-expanded="false"> <span
						class="glyphicon glyphicon-shopping-cart"></span> 0 - Items<span
						class="caret"></span></a>
					<ul class="dropdown-menu dropdown-cart" role="menu">

						<li class="divider"></li>
						<li><a class="text-left" href="">Total price: 0VND</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
	</nav>
	<p style="text-align: center">
	<div class="col-lg-6 col-lg-push-3">
		<div class="input-group">
			<span class="input-group-btn"> <a href="insert.jsp"><button
						type="button" class="btn btn-primary" aria-label="Right Align">
						<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>Thêm
						Sản Phẩm
					</button></a>
			</span>
		</div>
	</div>

	
	<br>

	<%
		ConnectDB conn = new ConnectDB();
		ResultSet rs = conn.chonDuLieuTuDTB("select * from SanPham");
	%>

	<div class="list_products">
		<div class="container">
			<h2 class="text-center _title">Danh sách sản phẩm</h2>
			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th>Mã SP</th>
							<th>Tên SP</th>
							<th>Hình ảnh</th>
							<th>Giá ban đầu</th>
							<th>Giá đã giảm</th>
							<th>Thao tác</th>

						</tr>
					</thead>
					<%
						//Hi?n th? d? li?u lên table, ? dây dùng for each
						//Trong ví d? này thì nên dùng for vì có c?t s? th? t?
						while (rs.next()) {
					%>

					<tbody>
						<tr>
							<td><%=rs.getString("Id")%></td>
							<td><%=rs.getString("name")%></td>
							<td><img src="<%=rs.getString("images")%>" with="50"
								height="50"></td>
							<td><%=rs.getDouble("price")%></td>
							<td><%=new DecimalFormat("#.0").format((rs
						.getDouble("price") - (rs.getDouble("price") * (rs
						.getDouble("discounted") / 100))))%></td>

							<td><a href="../XoaSP?Id=<%=rs.getString("Id")%>">
									<button type="button" class="btn btn-danger"
										aria-label="Right Align">
										<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
									</button>
							</a> <a href="../SuaSP?Id=<%=rs.getString("Id")%>">
									<button type="button" class="btn" aria-label="Right Align">
										<span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
									</button>
							</a></td>
						</tr>
						<%
							}
						%>



					</tbody>

				</table>
				<br> <br>

			</div>
		</div>
		</div>
</body>
</html>