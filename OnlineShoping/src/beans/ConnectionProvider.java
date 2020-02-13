package beans;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {

	static String DRIVER="com.mysql.jdbc.Driver";  
	static String CONNECTION_URL="jdbc:mysql://localhost:3306/shopping";  
	static String USERNAME="root";  
	static String PASSWORD="123"; 
	
	private static Connection con=null;  
	static{  
	try{  
	Class.forName(DRIVER);  
	con=DriverManager.getConnection(CONNECTION_URL,USERNAME,PASSWORD);  
	}catch(Exception e)
	{
		e.printStackTrace();
	}  
	}  
	  
	public static Connection getCon(){  
	    return con;  
	} 
}
