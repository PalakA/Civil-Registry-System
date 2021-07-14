package civil.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import civil.DisplayBirth;
import civil.UserBirth;

;

@WebServlet("/InfoBirthServ")
public class InfoBirthServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");

		String fname1 = request.getParameter("fname1");
		String placename = request.getParameter("placename");
		String father = request.getParameter("father");
		System.out.println("firstName--->>" + fname1);

		
			List<UserBirth> list = DisplayBirth.disp(fname1, placename, father);
			if(list.size()<1){
				RequestDispatcher dispatch = request
						.getRequestDispatcher("/JSP/Birth/NotFoundBirth.jsp");
				dispatch.forward(request, response);
		} else {
			request.setAttribute("user", list.get(0));
			RequestDispatcher dispatch = request
					.getRequestDispatcher("/JSP/Birth/printBirth.jsp");
			dispatch.forward(request, response);
			
		}
	}
}