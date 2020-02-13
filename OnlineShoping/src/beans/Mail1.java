package beans;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class Mail1 extends Authenticator {
	
	protected PasswordAuthentication getPasswordAuthentication() 
	{
		PasswordAuthentication auth = new PasswordAuthentication("tariqbond786@gmail.com","mtabond786");
		return auth ;
	}
	
	
}
