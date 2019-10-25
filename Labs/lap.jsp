<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
#row {
	padding-top: 0px;
}

</style>  
<body>
	<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="">NhatUyen's WebSite</a>
    </div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="../index.jsp">HOME</a></li>
			<li class="active"><a href="lap.jsp">WEB</a></li>
			
			<li><a href="../about.jsp">ABOUT</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="../Lab2/signup.jsp"><span
					class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			<li><a href="../Lab1/login.jsp"><span
					class="glyphicon glyphicon-log-in"></span> Login</a></li>
		</ul>
		</div>
</nav>
	<div>
		<br>
		<div class="row"
			style="width: 99%; height: 90vh; overflow-x: hidden; overflow-y: scroll">
			<p>5
			<div class="container">
				<h2>Bài Tập Lab</h2>
				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr>
								<th>#</th>
								<th>Title</th>
								<th>Download</th>
							</tr>
						</thead>

						<tbody>
							<tr>
								<td>1</td>
								<td>Lab-1</td>
								<td><a target="_blank" href="../Lab1/login.jsp"
									class="btn btn-primary">Go to page</a></td>

							</tr>
						</tbody>

						<tbody>
							<tr>
								<td>2</td>
								<td>Lab-2</td>
								<td><a target="_blank" href="../Lab2/signup.jsp"
									class="btn btn-primary">Go to page</a></td>

							</tr>
						</tbody>

						<tbody>
							<tr>
								<td>3</td>
								<td>Lab-3</td>
								<td><a target="_blank" href="../lab3/lab3.jsp"
									class="btn btn-primary">Go to page</a></td>

							</tr>
						</tbody>

						<tbody>
							<tr>
								<td>4</td>
								<td>Lab-4</td>
								<td><a target="_blank" href="../lab4/lab4UserController.jsp"
									class="btn btn-primary">Go to page</a></td>

							</tr>
						</tbody>

						<tbody>
							<tr>
								<td>5</td>
								<td>Lab-5</td>
								<td><a target="_blank" href="../Lab5/index.jsp" 
								class="btn btn-primary">Go to page</a></td>

							</tr>
						</tbody>
						<tbody>
							<tr>
								<td>6</td>
								<td>Lab-6</td>
								<td><a target="_blank" href="../Lab6/lap6.jsp" 
								class="btn btn-primary">Go to page</a></td>

							</tr>
						</tbody>
						<tbody>
							<tr>
								<td>7</td>
								<td>Lab-7</td>
								<td><a target="_blank" href="../Lab7/lab7UserController.jsp" 
								class="btn btn-primary">Go to page</a></td>

							</tr>
						</tbody>

					</table>
				</div>
			</div>

		</div>
	</div>
	<div id="row" class="row">
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>