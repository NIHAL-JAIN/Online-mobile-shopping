package beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Login1 {
	public static boolean validate(Login l){  
		boolean status=false;  
		try{  
		Connection con=ConnectionProvider.getCon();  
		              
		PreparedStatement ps=con.prepareStatement(  
		    "select * from user where email=? and password=?");  
		  
		ps.setString(1,l.getEmail());  
		ps.setString(2, l.getPassword());  
		              
		ResultSet rs=ps.executeQuery();  
		status=rs.next();
		String str=rs.getString("Name");
		l.setName(str);
		String str1=rs.getString("Contact");
		l.setMobile(str1);
		l.setState(rs.getString("state"));
		l.setDistrict(rs.getString("distric"));
		l.setCity(rs.getString("city"));
		l.setPincode(rs.getString("pincode"));
		
		              
		}catch(Exception e){
			e.printStackTrace();
		}  
		  
		return status;  
		  
		}  
}
