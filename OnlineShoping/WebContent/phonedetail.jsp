<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PhoneDetal</title>
</head>
<div align="right" style="margin-right: 50px" >
<%@ include file="logout.html"  %>
</div>
<br>
<%String s=(String)session.getAttribute("s");%>
<center><%="Hello:"+s %></center>
<br>
<br>
<body>
<center>
<%
int Id = Integer.parseInt(request.getParameter("id"));

File[]file = (File[])application.getAttribute("files");
int table = Id-1;
%>

<table>

		<center><tr><td colspan="2"><img src = "images/<%=file[table].getName()%>"></td></tr></center>
<%
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping", "root", "123");
		PreparedStatement ps = con.prepareStatement("select * from product where id = ?");
		ps.setInt(1, Id);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
		%>
		<tr>
		<th>ID</th>
		<td><%=rs.getInt("Id") %></td>
		</tr>
		<tr>
		<th>BrandeName</th>
		<%String bp=rs.getString("BrandName"); 
		session.setAttribute("bp", bp);
		%>
		<td><%=bp %></td>
		</tr>
		<tr>
		<th>Type</th>
		<td><%=rs.getString("Type") %></td>
		</tr>
		<tr>
		<th>OS</th>
		<td><%=rs.getString("Os") %></td>
		</tr>
		<tr>
		<th>Display</th>
		<td><%=rs.getString("Display") %></td>
		</tr>
		<tr>
		<th>Ram</th>
		<td><%=rs.getString("Ram") %></td>
		</tr>
		<tr>
		<th>InternalMemory</th>
		<td><%=rs.getString("InternalMemory") %></td>
		</tr>
		<tr>
		<th>CameraFront</th>
		<td><%=rs.getString("CameraFront") %></td>
		</tr>
		<tr>
		<th>CameraBack</th>
		<td><%=rs.getString("CameraRear") %></td>
		</tr>
		<tr>
		<th>BodyType</th>
		<td><%=rs.getString("BodyType") %></td>
		</tr>
		<tr>
		<th>FingerPrint</th>
		<td><%=rs.getString("FingerPrint") %></td>
		</tr>
		<tr>
		<th>Sensor</th>
		<td><%=rs.getString("Sensor") %></td>
		</tr>
		<tr>
		<th>Price</th>
		<%int pr=rs.getInt("Price");
		session.setAttribute("pr", pr);
		%>
		<td><%=pr %></td>
		</tr>
	   <%int dc=rs.getInt("DeliveryCharge");
	   session.setAttribute("dc", dc);
	   
	   %>
		<%	
		}
		%>
	</table>
	<br>
	<a href="paymentmode.jsp?id=</a>"><button type="button">Buy Now</button></a> 
	<br>
	<br>
	   <a href="phone.jsp"><button type="button">Back</button></a>
	</center>
	
</body>
</html>