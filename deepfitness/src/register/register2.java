package register;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


public class register2 {
	public String doRegister(String username, String email,String phone,String password) {
		Connection con = null;
		String message = null;
		try {
			// loading the driver class
			Class.forName("com.mysql.cj.jdbc.Driver");
			// getting the connection from DriverManager factory Class by passing the
			// connection url and credentials
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/deep7", "root", "root");
			// creating prepared statement for our required query 
			System.out.println(password);
			PreparedStatement statement = con.prepareStatement("insert into register5(name,email,phone,password) values (?,?,?,?)");
			// setting the parameters
			statement.setString(1, username);
			statement.setString(2, email);
			statement.setString(3, phone);
			statement.setString(4, password);
			// executing the prepared statement, which returns a ResultSet
			int i= statement.executeUpdate();
			 
			if(i>0)   {
				message = "Registration Successfull";
			
				
			} else {
				message = "Registration Failed";
			}
		} catch (Exception e) {
			message = "FAILURE";
			e.printStackTrace();
		}
		return message;
	}
}