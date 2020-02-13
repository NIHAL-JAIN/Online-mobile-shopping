<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Choice Phone</title>
</head>
<div align="right" style="margin-right: 50px" >
<%@ include file="logout.html"  %>
</div>
<br>
<br>
<%
String s = (String)session.getAttribute("s");
%>
<center><%="Hello:"+s%></center>
<br>
<br>
<body >
<center>
<%
String path= application.getRealPath("images/");
File file = new File(path);
File[] list = file.listFiles();
application.setAttribute("files", list);
%>
<table>

<%
for(int i = 0; i<list.length; i++)
{
	 String filename = list[i].getName();
	 int index = filename.lastIndexOf(".");
	String onlyFileName = filename.substring(0,index);
%>
<tr>
<tr><a href=" phonedetail.jsp?id=<%=(i+1)%>"><img src="images/<%=list[i].getName()%>" width="200"></a><%=onlyFileName%></tr>
</tr>
<%
}
%>
</table>
</center>
</body>
</html>