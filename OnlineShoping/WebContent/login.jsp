<%@page import="beans.Login1"%>
<%@page import="beans.Login"%>  

<jsp:useBean id="l" class="beans.Login"/>  
  
<jsp:setProperty property="*" name="l"/>  

<%  
boolean status=Login1.validate(l);  
if(status)
{  
	
response.sendRedirect("phone.jsp?id=1");
session.setAttribute("s", l.getName());
session.setAttribute("mobile", l.getMobile());
session.setAttribute("state", l.getState());
session.setAttribute("district", l.getDistrict());
session.setAttribute("city",l.getCity());
session.setAttribute("pincode",l.getPincode());
}  
else  
{  
out.print("Sorry, email or password error");  
%>    
<a href="index.html">Login Again</a>
<%  
}  
%>  