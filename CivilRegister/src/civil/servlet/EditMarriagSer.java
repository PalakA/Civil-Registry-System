package civil.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import civil.EditedMarriage;
import civil.UserMarriage;
import civil.generateMarriag;

@WebServlet("/EditMarriagSer")
public class EditMarriagSer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");

		String action = request.getParameter("action");
		if ("Edit".equals(action)) {
			String id = request.getParameter("id1");
			System.out.println("////////////marriage////////");
			System.out.println(id);
			List<UserMarriage> list = EditedMarriage.disp(id);

			request.setAttribute("users", list);
			RequestDispatcher dispatch = request
					.getRequestDispatcher("/JSP/Marriage/EditMarriage.jsp");
			dispatch.forward(request, response);

		} else if ("Generate Certificate".equals(action)) {

			String id = request.getParameter("id");
			List<UserMarriage> list = generateMarriag.disp(id);
			request.setAttribute("users", list);
			RequestDispatcher dispatch = request
					.getRequestDispatcher("/JSP/Marriage/MarCerti.jsp");
			dispatch.forward(request, response);
		}
		
	}
}