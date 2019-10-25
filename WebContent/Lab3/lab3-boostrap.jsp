
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="js/jquery-1.11.1.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Đăng kí tài khoản</title>
<style type="text/css">
body { padding-top: 0px
}
.form-control { 
margin-bottom: 10px;
}
.login-screen-bg {
background-color: #EFEFEF;
}
span{ color: red;
}
</style>
</head>
<body class="login-screen-bg">
	<form action="<%=request.getContextPath()%>/New" method=“get” id="form_register"> 
<div class="container">
  <div class="row">
    <div class="col-xs-12 col-sm-12 col-md-4 well well-sm col-md-offset-4">
      <legend><i class="glyphicon glyphicon-user"></i></a> Đăng ký thành viên!</legend>
        <div class="row">
        </div>
        <h3><b>THÔNG TIN ĐĂNG NHẬP</b></h3>
        <%
        	String email = (String) request.getAttribute("email");
        %>
        <%
        if(email == null || email.trim().isEmpty()) {
        		email="";
        }
        String email_error =(String) request.getAttribute("email_error");
        if(email_error == null) {
        	email_error ="";
        }
            		
        	%>
        	        <span id="email_error"><%=email_error%></span>
        <input class="form-control" name="email" placeholder="Email" type="gmail" id ="email" value="<%=email%>"/>

        <%
	        
	        
	        	String password = (String) request.getAttribute("password");
        		if(password == null || password.trim().equals("")) {
        			password ="";
        		}
        %>
        <%
        		String password_error = (String) request.getAttribute("password_error");
        if(password_error == null) {
        	password_error ="";
        }
        
        	%>
        <span id="password_error"><%=password_error%></span>
        <input class="form-control" name="password" placeholder="Mật khẩu" type="password" id ="password" value="<%=password%>" />
        
        
         <%
        
        
        	String retypepassword = (String) request.getAttribute("retypepassword");
         	if(retypepassword == null || retypepassword.equals("")) {
         		retypepassword="";
         	}
        %>
        <span id="retypepassword_error"></span>
        <input class="form-control" name="retypepassword" placeholder="Nhập lại mật khẩu" type="password" id="retypepassword" value="<%=retypepassword%>"/>
        
        <h3><b>THÔNG TIN CÁ NHÂN</b></h3>
        
        <%
        
        
        	String name =(String) request.getAttribute("name");
        %>
        <%
        if(name == null || name.trim().isEmpty()) {
        		name="";
        }
        String name_error =(String) request.getAttribute("name_error");
        if(name_error == null) {
            	name_error ="";
        }
            		
        	%>
        
        <span id="name_error"><%=name_error%></span>
      	<input class="form-control" name="name" placeholder="Họ và Tên" type="text" id ="name" value="<%=name%>"/>
      	
      	<%String sex =(String) request.getAttribute("sex");
        %>
        <%
        if(sex == null || sex.trim().isEmpty()) {
        		sex="";
        }
        String sex_error =(String) request.getAttribute("sex_error");
        if(sex_error == null) {
            	sex_error ="";
        } %>
      	
   	
      	<span id="sex_error"><%=sex_error%></span>
      	<% if(!sex_error.equals("")) {%>
      		<br/>
      	<%} %>
      	<label for ="sex">Phái : </label>
      	<label class="radio-inline">
          <input type="radio" name="sex" id="inlineCheckbox1" value="male" value ="male" <%if (sex.equals("male")) { %> checked <%} %> />
          Nam </label>
        <label class="radio-inline">
          <input type="radio" name="sex" id="inlineCheckbox2" value="female" value ="female" <%if (sex.equals("female")) { %> checked <%} %> />
          Nữ </label>
          <br />
           
           <%String day =(String) request.getAttribute("day");
        %>
        <%
        if(day == null || day.trim().isEmpty()) {
        		day="";
        }
        String day_error =(String) request.getAttribute("day_error");
        if(day_error == null) {
            	day_error ="";
        } %>
          
        <label> Ngày sinh</label>
        <div class="row">
          <div class="col-xs-9 col-md-9">
          <span id="day_error"><%=day_error%></span>
          </div>
          <div class="col-xs-4 col-md-4">
            <select class="form-control" name ="day" id="day" value="<%=day%>">
              <option value="day" <%if (day.equals("1")) { %> selected <%} %>>Ngày</option>
              <%for(int i =1;i<32;i++)
            	  out.print("<option value=\"" + i +"\">" + i + "<option>" );%>
            </select>
          </div>
          
          <%String month =(String) request.getAttribute("month");
        %>
        <%
        if(month == null || month.trim().isEmpty()) {
        		month="";
        }
        String month_error =(String) request.getAttribute("month_error");
        if(month_error == null) {
            	month_error ="";
        } %>
          <div class="col-xs-9 col-md-9">
			<span id="month_error"><%=month_error%></span>
          </div>
          <div class="col-xs-4 col-md-4">
            <select class="form-control" name ="month" id="month" value="<%=month%>">
              <option value="month" <%if (day.equals("1")) { %> selected <%} %>>Tháng</option>
              <%for(int i =1;i<13;i++)
            	  out.print("<option value=\"" + i +"\">" + i + "<option>");%>
            </select>
          </div>
          
          <%String year =(String) request.getAttribute("year");
        %>
        <%
        if(year == null || year.trim().isEmpty()) {
        		year="";
        }
        String year_error =(String) request.getAttribute("year_error");
        if(year_error == null) {
            	year_error ="";
        } %>
          <div class="col-xs-9 col-md-9">
			<span id="year_error"><%=year_error%></span>
          </div>
          <div class="col-xs-4 col-md-4">
            <select class="form-control" name ="year" id="year" value="<%=year%>">
              <option value="year" <%if (day.equals("1")) { %> selected <%} %>>Năm</option>
              <%for(int i =1975;i<2018;i++)
            	  out.print("<option value=\"" + i +"\">" + i + "<option>");%>
            </select>
          </div>
        </div>
        
        <%
        
        String phone =(String) request.getAttribute("phone");
        %>
        <%
        if(phone == null || phone.trim().isEmpty()) {
        		phone="";
        }
        String phone_error =(String) request.getAttribute("phone_error");
        if(phone_error == null) {
            	phone_error ="";
        } %>
        <%
        
        	%>
        <span id="phone_error"><%=phone_error%></span>
        <input class="form-control" name="phone" placeholder="Số điện thoại" type="text" id ="phone"value="<%=phone%>"/>
        
        <%
        
        String tel =(String) request.getAttribute("tel");
        %>
        <%
        if(tel == null || tel.trim().isEmpty()) {
        		tel="";
        }
        String tel_error =(String) request.getAttribute("tel_error");
        if(tel_error == null) {
            	tel_error ="";
        } %>
        <%
        
        	%>
        
        <span id="tel_error"><%=tel_error%></span>
        <input class="form-control" name="tel" placeholder="Số di động" type="text" id ="tel" value="<%=tel%>"/>
        
        <h3><b>ĐỊA CHỈ</b></h3>
        
        <%String quocgia =(String) request.getAttribute("quocgia");
        %>
        <%
        if(quocgia == null || quocgia.trim().isEmpty()) {
        		quocgia="";
        }
        String quocgia_error =(String) request.getAttribute("quocgia_error");
        if(quocgia_error == null) {
            	quocgia_error ="";
        } %>
        
        <label for ="quocgia" id ="quocgia"> Quốc Gia:</label>
               <span id="quocgia_error"><%=quocgia_error%></span>
         <div class ="row">
        <div class="col-xs-10 col-md-10">
            <select class="form-control" name ="quocgia" value="<%=quocgia%>">
              <option value="quocgia"></option>
              <% String[] quocGiaArr={"Việt Nam","Mỹ","Anh","Pháp"};
              	for(String quocGia : quocGiaArr)	
            	  out.print("<option value=\"" + quocGia +"\">" + quocGia + "<option>");%>
            	  </select>
            	  </div>
            	  </div>
            	  
            	  <%String tinhthanh =(String) request.getAttribute("tinhthanh");
        %>
        <%
        if(tinhthanh == null || tinhthanh.trim().isEmpty()) {
        		tinhthanh="";
        }
        String tinhthanh_error =(String) request.getAttribute("tinhthanh_error");
        if(tinhthanh_error == null) {
            	tinhthanh_error ="";
        } %>
            	  
         <label for ="tinhthanh" id ="tinhthanh"> Tỉnh/Thành:</label>
         <span id="tinhthanh_error"><%=tinhthanh_error%></span>
         <div class ="row">
        <div class="col-xs-10 col-md-10">
            <select class="form-control" name ="tinhthanh" value="<%=tinhthanh%>"  >
              <option value="tinhthanh" ></option>
              <% String[] tinhThanhArr={"TP.Hồ Chí Minh","Bình Dương","Bình Phước","Đồng Nai"};
              	for(String tinhThanh : tinhThanhArr)
            	  out.print("<option value=\"" + tinhThanh +"\">" + tinhThanh + "<option>");%>
            	  
            </select >
          </div>
          </div>
          
          <%String quanhuyen =(String) request.getAttribute("quanhuyen");
        %>
        <%
        if(quanhuyen == null || quanhuyen.trim().isEmpty()) {
        		quanhuyen="";
        }
        String quanhuyen_error =(String) request.getAttribute("quanhuyen_error");
        if(quanhuyen_error == null) {
            	quanhuyen_error ="";
        } %>
          
          <label for ="quanhuyen" id ="quanhuyen"> Quận/Huyện:</label>
          <span id="quanhuyen_error"><%=quanhuyen_error%></span>          
         <div class ="row">
        <div class="col-xs-10 col-md-10">
            <select class="form-control" name ="quanhuyen" value="<%=quanhuyen%>">
              <option value="quanhuyen"></option>
             <% String[] quanHuyenArr={"Thủ Đức","Quận 9","Dĩ An","Đông Hòa","Biên Hòa","LongThành"};
              	for(String quanHuyen : quanHuyenArr)
            	  out.print("<option value=\"" + quanHuyen +"\">" + quanHuyen + "<option>");%>
            	  </select>
            	  </div>
            	  </div>
        <div class="col-xs-100 col-md-100">
        
        	<%
        
        
        	String address =(String) request.getAttribute("address");
        %>
        <%
        if(address == null || address.trim().isEmpty()) {
        		address="";
        }
        String address_error =(String) request.getAttribute("address_error");
        if(address_error == null) {
            	address_error ="";
        }
            		
        	%>
        
        <label for ="address"> Địa chỉ nhà</label> 
        <span id="address_error"><%=address_error %></span>
       <textarea class="form-control" rows="5" id="address" name="address" ><%=address%></textarea>
       </div>
             
        <br />
        <button class="btn btn-lg btn-primary btn-block" type="submit" value ="DangKy"> Đăng ký</button>
    </div>
    
  </div>
</div>
</form>
</body>   
</html>