<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="beans.Login"%>  

<jsp:useBean id="l" class="beans.Login"/> 
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PaymentMode</title>
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
<center><%="Hello:"+s%></center>
<br>
<center><%="You Can Choose:"+bp %></center>
<br>
<center><%="Price:"+pr %></center>
<br>
<center><%="DelieveryCharge:"+dc %></center>
<br>
<center><font size="3" color="White">Contact</font><%="Mobile No:"+mobile%></center>
<br>
<center><%="Your State:"+state%></center>
<br>
<center><%="Your District:"+district%></center>
<br>
<center><%="Your City:"+city%></center>
<br>
<center><%="Your Pincode:"+pincode%></center>
<br>
<br>
<body background="im\p1.jpg">
<center>
<a href="completepayment.jsp?id="><button type="button">CashOnDelievery</button></a>
<br>
<br>
<a href="payment.jsp"><button type="button">Online Payment</button></a>
<br>
</center>
</body>
</html>