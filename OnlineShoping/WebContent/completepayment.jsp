<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="beans.Login"%>  

<jsp:useBean id="l" class="beans.Login"/>  
  
<jsp:setProperty property="*" name="l"/> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Complete Payment</title>
</head>
<div align="right" style="margin-top: 20px; margin-right:50px;" >
<%@ include file="logout.html"  %>
</div>
<br>
<%String s=(String)session.getAttribute("s");
int pr=(int)session.getAttribute("pr");
String bp=(String)session.getAttribute("bp");
int dc=(int)session.getAttribute("dc");
String mobile=(String)session.getAttribute("mobile");
String state=(String)session.getAttribute("state");
String district=(String)session.getAttribute("district");
String city=(String)session.getAttribute("city");
String pincode=(String)session.getAttribute("pincode");
%>
<center><%="Hello:"+s %></center>
<br>
<center><%="You Can Choose:"+bp %></center>
<br>
<center><%int total=pr+dc; %><%="Total Amount:"+total %></center>
<br>
<center><%="Mobile No:"+mobile%></center>
<br>
<br>
<center><%="Your Delievery Address: "+state+" "+district+" "+city+" "+pincode%></center>
<br>
<br>
<body background="im\K.jpg">
<center><a href="message.jsp"><button type="button">Place Your Order</button></a></center>
</body>
</html>