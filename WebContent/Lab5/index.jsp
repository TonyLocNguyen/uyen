<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.KhachHang"%>
<%@page import="dao.GioHangDAO"%>
<%@page import="model.SanPham"%>
<%@page import="model.Product"%>
<%@page import="model.ProductDAO"%>
<%@page import="dao.GioHangDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>đăng nhập</title>
<meta charset="utf-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.boxx nayi z
	otstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
.khungsanpham {
	padding-top: 20px;
	padding-left: 30px;
	float: left;
}

.boder {
	border: solid;
	width: 200px;
	height: 270px;
}

.img {
	margin-left: 3px;
	margin-top: 3px;
	width: 192px;
	height: 180px;
}

.gia {
	text-align: center;
	color: red;
	margin-top: 10px;
	margin-bottom: 10px;
}

.mua {
	color: red;
}
</style>
</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">NhatUyen's WebSite <%
					KhachHang kh = (KhachHang) session.getAttribute("user");
					if (kh != null) {
						out.print(kh.getName());
					}
				%></a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Trang chủ</a></li>
				<li><a href="lab5-bootstrap.jsp">Bài Tập Bootstrap</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="DangKy.jsp"><span
						class="glyphicon glyphicon-user"></span> Đăng kí</a></li>
				<li><a href="DangNhap.jsp"><span
						class="glyphicon glyphicon-log-in"></span> Đăng nhập</a></li>
				<li><a href="../index.jsp"><span
						class="glyphicon glyphicon-user"></span> Đăng xuất</a></li>
			</ul>
		</div>
	</nav>
	
	<div class="container">

		<a href="GioHang.jsp"><button type="button" class="btn btn-danger"
				aria-label="Right Align">
				<span class="glyphicon glyphicon-cart" aria-hidden="true"></span>Xem
				giỏ hàng
			</button></a>
		<h3>Các sản phẩm hiện có</h3>
		<%
			ArrayList<SanPham> dsSanPham = new GioHangDAO().getDsSanPham();
		%>
		<%
			for (int i = 0; i < dsSanPham.size(); i++) {
		%>
		<div class="khungsanpham">
			<div class="boder">
				<div class="img">
					<img src="<%=dsSanPham.get(i).getHinhAnh()%>" width="192px"
						height="180px">
				</div>
				<div class="gia">
					<%=dsSanPham.get(i).getGiaSanPham()%>
				</div>
				<div class="mua">
					<center>
						<a
							href="<%=request.getContextPath()%>/XuLyMuaSanPham?maSanPham=<%=dsSanPham.get(i).getMaSanPham()%>"><button
								class="btn btn-success">Mua ngay</button></a>
					</center>
				</div>
			</div>
		</div>


		<%}%>

	</div>
	<div style="padding-left: 100px; padding-top: 15px;">
		<a href="DangXuat"><button type="button" class="btn btn-danger"
				aria-label="Right Align">
				<span class="glyphicon glyphicon-user" aria-hidden="true"></span>Đăng
				xuất
			</button></a>

	</div>
</body>
</html>
