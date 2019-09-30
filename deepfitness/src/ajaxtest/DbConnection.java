package ajaxtest;

import java.sql.Connection;

import java.sql.DriverManager;

public class DbConnection {
	static Connection con=null;
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/deep7","root","root");
		}
		catch(Exception e) {
			System.out.println(e);
		}
return con;	}

}
