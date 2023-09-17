package connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class webConnection {
	
	public static Connection connectionmethod() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/advancejava","root","");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return connection;
	}

}
