package civil.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import civil.conn.provider.ConProv;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String Userid, pass;
		Userid = request.getParameter("userid");
		pass = request.getParameter("pass");

		try {
			String userid = null, password = null;
			Connection con = ConProv.getCon();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from login");
			while (rs.next()) {
				userid = rs.getString("Userid");
				password = rs.getString("passw");
			}

			if (Userid.equals(userid) && pass.equals(password)) {
				RequestDispatcher dispatcher = request
						.getRequestDispatcher("/JSP/Registry.jsp");
				dispatcher.forward(request, response);
			} else {
				RequestDispatcher dispatcher = request
						.getRequestDispatcher("/JSP/Login.jsp");
				dispatcher.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}