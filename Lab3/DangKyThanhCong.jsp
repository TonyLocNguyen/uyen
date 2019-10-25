<%@page import="nhatuyen.Account"%>
<%@page import="javax.websocket.Session"%>
<%@page import="java.nio.channels.SeekableByteChannel"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Dang Ky Thanh Cong</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head> 
<body>
<%@ page import="nhatuyen.Account" %>

<%
	Account acc =(Account) session.getAttribute("account");
	if(acc == null) {
		
%>
	<jsp:forward page="lab3-bootraps.jsp"></jsp:forward>
	
<%	} else {					
}
%>
<div class="jumbotron text-center">
  <h1>Chào mừng bạn <%=acc.getName()%> đã đến gia đình của chúng tôi</h1>
  <p> Đây là email:<%=acc.getEmail()%> và mật khẩu:<%=acc.getPassword()%> của bạn đã đăng kí.Chúc bạn vui vẻ !  </p> 
</div>

</body>
</html>