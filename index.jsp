<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="assets/css/main.css" />
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="menu.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Trần Mai Nhật Uyên</title>
</head>
<style>
#trangchu{
padding-top: 0px;
}
#row{
padding-top: 350px;
}
</style>
<body>
	<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="">NhatUyen's WebSite</a>
    </div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="index.jsp">HOME</a></li>
			<li class="active"><a href="<%=request.getContextPath()%>/Labs/lap.jsp">WEB</a></li>
			<%-- Sai chổ này nè! --%>
			<li><a href="about.jsp">ABOUT</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="<%=request.getContextPath()%>/Lab2/signup.jsp"><span
					class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			<li><a href="<%=request.getContextPath()%>/Lab1/login.jsp"><span
					class="glyphicon glyphicon-log-in"></span> Login</a></li>
		</ul>
		</div>
</nav>
	<div id="trangchu" class="row">
		<jsp:include page="trangchu.jsp" />
	</div>
	<div id="row" class="row">
	<jsp:include page="footer.jsp" />
	</div>
	<!-- jQuery library -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>

</html>