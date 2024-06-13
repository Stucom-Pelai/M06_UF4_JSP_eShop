package val.shop.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Class to connect database
 */
public class ConnectionDB {
	private static Connection connection = null;

	/**
	 * get connection from database
	 * @return connection object
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 */
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		if (connection == null) {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:8000/ecartdb", "root", "1234");
			System.out.print("connected");
		}
		return connection;
	}
}
