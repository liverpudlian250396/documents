package manager.students;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionUtils {
	public static  Connection getMyConnection () throws SQLException, ClassNotFoundException
	{
		String hostName = "localhost";
		String dbName = "students_management";
		String user = "root";
		String password = "2503";
		String connectionURL = "jdbc:mysql://"+hostName + ":3306/"+dbName;
		Connection conn = DriverManager.getConnection(connectionURL,user,password);
		return conn;		
	}
	public static void main(String[] args)
	{
		try {
			Connection abc = getMyConnection();
			System.out.println(abc);
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
}
