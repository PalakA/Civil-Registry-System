package civil.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import civil.DisplayMarriage;
import civil.UserMarriage;

@WebServlet("/InfoMarriageServ")
public class InfoMarriageServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");

		String husname = request.getParameter("husname");
		String wifename = request.getParameter("wifename");
		System.out.println("firstName--->>" + husname);

		List<UserMarriage> list = DisplayMarriage.disp(husname, wifename);
		if (list.size() < 1) {
			RequestDispatcher dispatch = request
					.getRequestDispatcher("/JSP/Marriage/NotFoundMarriage.jsp");
			dispatch.forward(request, response);
		} else {
			request.setAttribute("users", list.get(0));
			RequestDispatcher dispatch = request
					.getRequestDispatcher("/JSP/Marriage/PrintMarriage.jsp");
			dispatch.forward(request, response);
		}
	}
}