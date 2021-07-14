package civil.conn.provider;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConProv {
	public static Connection con = null;
	static {
		try {
			String url = "jdbc:mysql://localhost:3306/projectcivil";
			String user = "root";
			String pass = "root";
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			con = DriverManager.getConnection(url, user, pass);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void main(String args[]) {
		System.out.println(con);
	}

	public static Connection getCon() {
		try {
			if (con == null|| con.isClosed()) {
				try {
					String url = "jdbc:mysql://localhost:3306/projectcivil";
					String user = "root";
					String pass = "root";
					DriverManager.registerDriver(new com.mysql.jdbc.Driver());
					con = DriverManager.getConnection(url, user, pass);
					System.out.println("<<<<<<<<<<<---------------------------------------->>>>>>>>>>>");
					System.out.println(con);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}
}