package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	public Connection getConnection() throws Exception {
		Connection connection = null;
		Class.forName("com.mysql.jdbc.Driver");
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/phones?autoReconnect=true&useSSL=false",
				"root", "root");
//		connection.close();

		return connection;

	}
}
