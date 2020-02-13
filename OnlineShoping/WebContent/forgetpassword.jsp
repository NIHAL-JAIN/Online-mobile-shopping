<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Session"%>
<%@page import="javax.mail.Authenticator"%>
<%@page import="java.util.Properties"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<%
String email=request.getParameter("email");
try{  
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoping", "root", "123");
	PreparedStatement ps = con.prepareStatement("select * from shopping where email = ?");
	ps.setString(1, email);
	ResultSet rs = ps.executeQuery();
	while(rs.next()){
 String s=	rs.getString("password");
	 session.setAttribute("s", s);
	}

              
}catch(Exception e){
	e.printStackTrace();
}  


%>
<%
String s=(String)session.getAttribute("s");


%>


<% 

 String username = "message.sending123@gmail.com";
 String password = "Abcd1234#";
String host = "smtp.gmail.com";

Properties props = new Properties();
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.starttls.enable", "true");
props.put("mail.smtp.host", host);
props.put("mail.smtp.port", "587");

Session session1 = Session.getInstance(props,
new javax.mail.Authenticator() {
protected PasswordAuthentication getPasswordAuthentication() {
  return new PasswordAuthentication(username, password);
}
});

try {

Message message = new MimeMessage(session1);

 
message.setFrom(new InternetAddress(email));


message.setRecipients(Message.RecipientType.TO,
InternetAddress.parse(email));


message.setSubject("Mail Aya");


message.setText("Your Password Is:"+s);

Transport.send(message);

%>
<%@ include file="login.html"  %>
<%

} catch (Exception e) {
	  out.println(" faild message....");

	}
	
%>
