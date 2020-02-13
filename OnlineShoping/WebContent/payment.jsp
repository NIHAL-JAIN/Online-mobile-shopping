<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Transaction</title>
<div align="right" style="margin-top: 20px; margin-right:50px;" >
<%@ include file="logout.html"  %>
</div>
</head>
<br>
<body background="im/e.jpg">
<form action="completepayment.jsp">
<center>
<%String s=(String)session.getAttribute("s");
int pr=(int)session.getAttribute("pr");
String bp=(String)session.getAttribute("bp");
int dc=(int)session.getAttribute("dc");
%>
<center><%="Hello : "+s %></center>
<br>
<center><%="You Can Choose : "+bp %></center>
<br>
<center><%int total=pr+dc; %><%="Total Amount : "+total %></center>
<br>
<label>CardNumber   </label><input type="numeric" placeholder="cardnumber" required>
<br>
<label>CVV  </label><input type="password" placeholder="CVV" required>
<br>
<label>Pin  </label><input type="password" placeholder="Pin" required>
<br>
<label>ExpireyDate </label>
<select>
<option>Month</option>
<option>1</option>
<option>2</option>
<option>3</option>
<option>4</option>
<option>5</option>
<option>6</option>
<option>7</option>
<option>8</option>
<option>9</option>
<option>10</option>
<option>11</option>
<option>12</option>
</select>
<select>
<option>Year</option>
<option>2018</option>
<option>2019</option>
<option>2020</option>
<option>2021</option>
<option>2022</option>
<option>2023</option>
<option>2024</option>
</select>
<br>
<br>
<button type="submit">Payment</button>
</center>
</form>
</body>
</html>