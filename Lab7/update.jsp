<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thông Tin Sản Phẩm</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<style>
/* Full-width input fields */
input[type=text], input[type=password] {
	width: 100%;
	padding: 10px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
	background-color: #ddd;
	outline: none;
}

hr {
	border: 1px solid #f1f1f1;
	margin-bottom: 25px;
}

input[type=submit] {
	border: none;
	outline: none;
	padding: 15px;
	margin-top: 15px;
	background: green;
	color: #fff;
	width: 100%;
	font-size: 18px;
}

input[type=submit]:hover {
	cursor: pointer;
	color: #000;
	background: red;
}

/* Add padding to container elements */
.container {
	width: 400px;
	height: 450px;
	top: 10%;
	left: 35%;
	position: absolute;
	box-sizing: border-box;
	color: white;
}
body{
  background: url('../images/u4.jpg');
  background-size:cover;
}
#row{
padding-top: 550px;
}
</style>
<body>
<div>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="menu.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Trần Mai Nhật Uyên</title>
</head>
<body>
	<div>
		<form action="<%=request.getContextPath()%>/SuaSP" method="post">
			<div class="container">
				<h1 style="text-align: center;">
					<strong>Update Thông Tin Sản Phẩm</strong>
				</h1>
				<p>Nhập thông tin sản phẩm</p>
				<hr>

				<label for="maSP"><b>Mã Sản Phẩm</b></label> <input
					type="text" placeholder="nhập mã sản phẩm" name="Id" required 
					value="<%ServletContext context = getServletContext();
			out.print(context.getAttribute("Id"));%>">
				</label>
				<label for="tenSP"><b>Tên Sản Phẩm</b></label> <input
					type="text" placeholder="nhập tên sản phẩm" name="name" required
					value="<%ServletContext context1 = getServletContext();
			out.print(context.getAttribute("name"));%>">
				</label>
				<label for="hinhAnh"><b>Hình Ảnh</b></label> <input
					type="text" placeholder="hình ảnh" name="images" required
					value="<%ServletContext context2 = getServletContext();
			out.print(context.getAttribute("images"));%>">
				</label>
				<label for="giaBD"><b>Giá Ban Đầu</b></label> <input
					type="text" placeholder="giá ban đầu" name="price" required 
					value="<%ServletContext context3 = getServletContext();
			out.print(context.getAttribute("price"));%>">
				</label>
				<label for="giaDG"><b>Giá Đã Giảm</b></label> <input
					type="text" placeholder="giá đã giảm" name="discounted" required 
					value="<%ServletContext context4 = getServletContext();
			out.print(context.getAttribute("discounted"));%>">
				</label>
				<input type="submit" name="" value="Submit">
		
		</div>
		<div id="row" class="row">
		<jsp:include page="../footer.jsp" />
	</div>
		</form>
		<!-- jQuery library -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		</div>
</body>

</body>
</html>