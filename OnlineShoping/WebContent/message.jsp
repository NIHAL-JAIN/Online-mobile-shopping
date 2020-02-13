<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<br>
<div align="right" style="margin: 50px" >
<%@ include file="logout.html"  %>
</div>
<body background="im/f.jpg">
<%String s=(String)session.getAttribute("s"); %>
<center>
<h1>Your Order Request Confirm</h1>
<br>
<h2>Your Order Delivered Soon </h2>
<br>
<h3>Thank You <%=s %> For Order</h3>
</center>

</body>
</html>