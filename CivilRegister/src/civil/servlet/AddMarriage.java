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

import civil.RegisterMarriage;
import civil.UserMarriage;

@WebServlet("/AddMarriage")
public class AddMarriage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");

		String husbandName, religion, address, contact, placeOfMarriage, profession, wifeName, contact1, profession1;

		husbandName = request.getParameter("husbandname");
		religion = request.getParameter("religion");

		int day = 0, month = 0, year = 0;
		day = Integer.parseInt(request.getParameter("day"));
		month = Integer.parseInt(request.getParameter("month"));
		year = Integer.parseInt(request.getParameter("year"));
		Date dateOfBirth3 = null;
		try {
			dateOfBirth3 = new SimpleDateFormat("yyyy-MM-dd").parse(year + "-"
					+ month + "-" + day);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		System.out.println("day: " + day + "month: " + month + "year: " + year
				+ dateOfBirth3);

		address = request.getParameter("address");
		contact = request.getParameter("contact");
		placeOfMarriage = request.getParameter("placemarriage");

		int day1 = 0, month1 = 0, year1 = 0;
		day1 = Integer.parseInt(request.getParameter("day1"));
		month1 = Integer.parseInt(request.getParameter("month1"));
		year1 = Integer.parseInt(request.getParameter("year1"));
		Date dateOfMarriage = null;
		try {
			dateOfMarriage = new SimpleDateFormat("yyyy-MM-dd").parse(year1 + "-"
					+ month1 + "-" + day1);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		System.out.println("day: " + day1 + "month: " + month1 + "year: " + year1
				+ dateOfMarriage);

		profession = request.getParameter("profession");
		wifeName = request.getParameter("wifename");

		int day2 = 0, month2 = 0, year2 = 0;
		day2 = Integer.parseInt(request.getParameter("day2"));
		month2 = Integer.parseInt(request.getParameter("month2"));
		year2 = Integer.parseInt(request.getParameter("year2"));
		Date dateOfBirth2 = null;
		try {
			dateOfBirth2 = new SimpleDateFormat("yyyy-MM-dd").parse(year2 + "-"
					+ month2 + "-" + day2);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		System.out.println("day: " + day2 + "month: " + month2 + "year: " + year2
				+ dateOfBirth2);

		contact1 = request.getParameter("wifecontact");
		profession1 = request.getParameter("wifeprofession");

		UserMarriage user = UserMarriage.getUser(husbandName, religion,
				dateOfBirth3, address, contact, placeOfMarriage,
				dateOfMarriage, profession, wifeName, dateOfBirth2, contact1,
				profession1);
		List<UserMarriage> users = RegisterMarriage.register(user);
		request.setAttribute("users", users);
		RequestDispatcher dispatcher = request
				.getRequestDispatcher("/JSP/Marriage/Success.jsp");
		dispatcher.forward(request, response);
		return;
	}
}