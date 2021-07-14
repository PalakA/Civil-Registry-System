package civil.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import civil.DisplayDeath;
import civil.UserDeath;

@WebServlet("/InfoDeathServ")
public class InfoDeathServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");

		String fname2 = request.getParameter("fname2");
		String placeDeath = request.getParameter("placeDeath");
		System.out.println("fname2--->>" + fname2);
		
		List<UserDeath> list = DisplayDeath.disp(fname2, placeDeath);
		
		if (list.size() <1) {
			RequestDispatcher dispatch = request
					.getRequestDispatcher("/JSP/Death/NotFoundDeath.jsp");
			dispatch.forward(request, response);
		} else {
			request.setAttribute("user3", list.get(0));
			RequestDispatcher dispatch = request
					.getRequestDispatcher("/JSP/Death/PrintDeath.jsp");
			dispatch.forward(request, response);
		}
	}
}