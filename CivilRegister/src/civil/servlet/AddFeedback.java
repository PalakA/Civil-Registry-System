package civil.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import civil.RegisterFeedback;
import civil.UserFeedback;

@WebServlet("/AddFeedback")
public class AddFeedback extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String Name, Contact, Feedback;
		Name = request.getParameter("name");
		Contact = request.getParameter("contact");
		Feedback = request.getParameter("complaint");

		UserFeedback user = UserFeedback.getUser(Name, Contact, Feedback);
		List<UserFeedback> users = RegisterFeedback.register(user);
		request.setAttribute("users", users);
		RequestDispatcher dispatcher = request
				.getRequestDispatcher("/JSP/FeedSuccess.jsp");
		dispatcher.forward(request, response);
		return;
	}
}