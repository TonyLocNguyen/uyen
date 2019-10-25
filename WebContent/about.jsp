<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Trần Mai Nhật Uyên</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">

<!-- Fonts -->
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link href="css/animate.css" rel="stylesheet" />
<!-- Squad theme CSS -->
<link href="css/about.css" rel="stylesheet">
<link href="color/default.css" rel="stylesheet">
<link href="styles.css" rel="stylesheet">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<!-- dinh dang lien ket toi mxh -->
<link rel ="stylesheet" href ="css/font-awesome.min.css">
</head>
<style>

navbar navbar-inverse {
	position: absolute;
	top: 20px;
	left: 10px;
	right: 10px;
	bottom: 100px;
	z-index: 1;
	opacity: 1;
}
#intro h2{
color: white;
text-align: center;
}
#intro h4{
color: white;
text-align: center;
}
#intro{
background: url('images/6.jpg');

}
<!--icon dẫn tới mxh -->
#link .icon {
	
}
.fa {
	padding: 15px;
	width: 15px;
	text-align: center;
	text-decoration: none;
	margin: 0 5px;
	border-radius: 50%;
}

.fa:hover {
	opacity: 0.7;
}

.fa-facebook {
	background: #3B5998;
	color: white;
}

.fa-twitter {
	background: #55ACEE;
	color: white;
}

.fa-google {
	background: #dd4b39;
	color: white;
}

.fa-youtube {
	background: #bb0000;
	color: gray;
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
	<!-- Section: intro -->
	<section id="intro" class="intro">

	<div style="text-align: left; text-indent: 150px" class="slogan">
		<h2>
			HI,<span class="text_color">I'm</span>
		</h2>
		<h4>- Trần Mai Nhật Uyên -</h4>
		<h4>Trường đại học Nông Lâm Thành Phố Hồ Chí Minh</h4>
		<h4>Khoa công nghệ thông tin</h4>
		<p style="color: white;">
			<a href="#about">....</a>
		</p>
	</div>

	</section>
	<!-- /Section: intro -->
	<!-- Section: about -->
	<section id="about" class="home-section text-center bg-gray">

	<div class="heading-about">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-lg-offset-4">
					<div class="wow bounceInDown" data-wow-delay="0.4s">
						<div class="section-heading">
							<h2>Thông tin về tôi</h2>
							<i class="fa fa-2x fa-angle-down"></i>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-lg-2 col-lg-offset-5">
				<hr class="marginbot-50">
			</div>
		</div>
		<div class="row">
			<div class="col-md-3">
				<div class="wow fadeInLeft" data-wow-delay="0.2s">
					<div class="service-box">

						<div style="text-align: left" class="service-desc">
							<h5>Thông tin cá nhân</h5>
							<p
								style="font-size: 16px; font-family: Arial, Helvetica, sans-serif">
								<strong>Họ và Tên: </strong>Trần Mai Nhật Uyên
							</p>
							<p
								style="font-size: 16px; font-family: Arial, Helvetica, sans-serif">
								<strong>Ngày sinh:</strong>06/03/1997
							</p>
							<p
								style="font-size: 16px; font-family: Arial, Helvetica, sans-serif">
								<strong>Học tập tại:</strong>Trường Đại Học Nông Lâm Thành Phố
								Hồ Chí Minh
							</p>
							<p
								style="font-size: 16px; font-family: Arial, Helvetica, sans-serif">
								<strong>Sinh viên khoa:</strong>Công Nghệ Thông Tin
							</p>
							<p
								style="font-size: 16px; font-family: Arial, Helvetica, sans-serif">
								<strong>Lớp:</strong>DH15DTB
							</p>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="wow fadeInRight" data-wow-delay="0.2s">
					<div class="service-box">
						<div style="text-align: left" class="service-desc">
							<h5></h5>
							<p
								style="font-size: 16px; font-family: Arial, Helvetica, sans-serif">
								<strong>Tuổi:</strong>21
							</p>
							<p
								style="font-size: 16px; font-family: Arial, Helvetica, sans-serif">
								<strong>Email:</strong>15130230@st.hcmuaf.edu.vn
							</p>
							<p
								style="font-size: 16px; font-family: Arial, Helvetica, sans-serif">
								<strong>Số điện thoại:</strong>0964 054 787
							</p>
							<p
								style="font-size: 16px; font-family: Arial, Helvetica, sans-serif">
								<strong>Địa chỉ:</strong>Đông Hòa - Dĩ An - Bình Dương
							</p>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="wow fadeInLeft" data-wow-delay="0.2s">
					<div class="service-box">

						<div style="text-align: left" class="service-desc">
							<h5>Học tập</h5>
							<p
								style="font-size: 16px; font-family: Arial, Helvetica, sans-serif">
								<strong>2015-2019:</strong>Sinh viên
							</p>
							<p
								style="font-size: 16px; font-family: Arial, Helvetica, sans-serif">Trường
								Đại Học Nông Lâm Thành Phố Hồ Chí Minh</p>
							<p
								style="font-size: 16px; font-family: Arial, Helvetica, sans-serif">Khoa
								công nghệ thông tin</p>

						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="wow fadeInLeft" data-wow-delay="0.2s">
					<div class="service-box">

						<div style="text-align: left" class="service-desc">
							<h5>Theo dõi tôi</h5>
							
	<!-- tạo thẻ liên kết tới MXH -->
	<div id="link">
		<div class="icon">
			<!-- nút facebook -->
			<a href="https://www.facebook.com/the.end.564" target="_blank"
				title="Facebook" rel="follow, index" href="#" class="fa fa-facebook"></a>

			<!-- nút youtube -->
			<a href="https://www.youtube.com/channel/UCA2Jmy2uGIwLFdSs-mX00DA"
				target="_blank" title="Youtube" rel="follow, index"
				class="fa fa-youtube"></a>

			<!-- nút twitter -->
			<a href="#" class="fa fa-twitter"></a>

			<!-- nút google -->
			<a
				href="https://myaccount.google.com/u/3/?utm_source=OGB&utm_medium=act"
				target="_blank" title="Google" rel="follow, index" href="#"
				class="fa fa-google"></a>

		</div>
	</div>
	<!-- jQuery library -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<div id="row" class="row">
	<jsp:include page="footer.jsp" />
	</div>
	</section> <!-- /Section: About --> <!-- Core JavaScript Files --> <script
		src="js/jquery.min.js"></script> <script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.easing.min.js"></script> <script
		src="js/jquery.scrollTo.js"></script> <script src="js/wow.min.js"></script>
</body>
</html>