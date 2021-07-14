package civil.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import civil.RegisterBirth;
import civil.UserBirth;

@WebServlet("/AddbirthServ")
public class AddbirthServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");

		String firstName, sex, placeOfBirth, hospital, fatherName, motherName, address, contact, religion, relation;

		firstName = request.getParameter("fname");
		sex = request.getParameter("sex");
		placeOfBirth = request.getParameter("place");

		int day = 0, month = 0, year = 0, hour = 0, min = 0, sec = 0;
		year = Integer.parseInt(request.getParameter("year"));
		month = Integer.parseInt(request.getParameter("month"));
		day = Integer.parseInt(request.getParameter("day"));
		hour = Integer.parseInt(request.getParameter("hour"));
		min = Integer.parseInt(request.getParameter("min"));
		sec = Integer.parseInt(request.getParameter("sec"));
		System.out.println(year + "-" + month + "-" + day + " " + hour + "-"
							+ min + "-" + sec);
		Date dateOfBirth = null;
		try {
			dateOfBirth = new SimpleDateFormat("yyyy-MM-dd HH-mm-ss")
					.parse(year + "-" + month + "-" + day + " " + hour + "-"
							+ min + "-" + sec);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		System.out.println("dateOfBirth==>"+dateOfBirth);
		hospital = request.getParameter("hospital");
		fatherName = request.getParameter("father");
		motherName = request.getParameter("mother");
		address = request.getParameter("address");
		contact = request.getParameter("phone");
		religion = request.getParameter("religion");
		relation = request.getParameter("relation");

		UserBirth user = UserBirth.getUser(firstName, sex, placeOfBirth,
				dateOfBirth, hospital, fatherName, motherName, address,
				contact, religion, relation);

		List<UserBirth> users = RegisterBirth.register(user);
		request.setAttribute("users", users);
		RequestDispatcher dispatcher = request
				.getRequestDispatcher("/JSP/Birth/Success.jsp");
		dispatcher.forward(request, response);
		return;
	}
}