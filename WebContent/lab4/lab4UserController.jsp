<%@page import="model.KhachHang"%>
<%@page import="dao.GioHangDAO"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="model.SanPham"%> 
<%@page import="java.util.ArrayList"%>
<%@page import="model.Product"%>
<%@page import="model.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Lab-4</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="" crossorigin="anonymous">

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="" crossorigin="anonymous">

	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="" crossorigin="anonymous"></script>
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
<br>
				
	<%
		ArrayList<Product> list = ProductDAO.getListProduct();
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
							<th></th>
						</tr>
					</thead>
					<%
						//Hi?n th? d? li?u lên table, ? dây dùng for each
						//Trong ví d? này thì nên dùng for vì có c?t s? th? t?
						for (Product p : list) {
					%>
					
					<tbody>
						<tr>
							<td><%=p.getId()%></td>
							<td><%=p.getName()%></td>
							<td><img src="<%=p.getImag()%>" with="50" height="50"></td>
							<td><%=p.getPrice()%></td>
							<td><%=new DecimalFormat("#.0").format((p.getPrice() - (p
						.getPrice() * (p.getDicounted() / 100))))%></td>

						<td>
						<a href="<%=request.getContextPath()%>/xulybuttonxoa?maSanPham=<%=p.getId()%>">
							<button type="button" class="btn btn-danger" aria-label="Right Align">
								<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
							</button></a>
						</td>
					</tr>
				<%} %>
			
				
				
				</tbody>
				
			</table>
			<br><br>
			
			</div>
		</div>
	</center>
</body>
</html>