package beans;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class Signup1 {
	public static int register(SignUp s){  
		int status=0;  
		try{  
		Connection con=ConnectionProvider.getCon();  
		 PreparedStatement ps=con.prepareStatement("insert into User values(?,?,?,?,?,?,?,?)");
			ps.setString(1,s.getName());
			ps.setString(2,s.getEmail());
			ps.setString(4,s.getMobile());
			ps.setString(3,s.getPassword());
			ps.setString(6,s.getState());
			ps.setString(7,s.getDistrict());
			ps.setString(8,s.getCity());
			ps.setString(5, s.getPincode());
			
			
			
			 
		              
		status=ps.executeUpdate();
		
		return status; 
		}catch(Exception e){}  
		      
		return status;  
		}  
}
