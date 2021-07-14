package civil.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import civil.EditedDeath;
import civil.UserDeath;
import civil.generateDeath;

@WebServlet("/EditDeathSer")
public class EditDeathSer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");

		String action = request.getParameter("action");
		if ("Edit".equals(action)) {
			String id = request.getParameter("id");
			System.out.println("////////////");
			System.out.println(id);
			List<UserDeath> list = EditedDeath.disp(id);

			request.setAttribute("users", list);
			RequestDispatcher dispatch = request
					.getRequestDispatcher("/JSP/Death/EditDeath.jsp");
			dispatch.forward(request, response);

		} else if ("Generate Certificate".equals(action)) {

			String id = request.getParameter("id");
			List<UserDeath> list = generateDeath.disp(id);
			request.setAttribute("users", list);
			RequestDispatcher dispatch = request
					.getRequestDispatcher("/JSP/Death/DeathCerti.jsp");
			dispatch.forward(request, response);
		}
	}
}