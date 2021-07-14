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

import civil.RegisterDeath;
import civil.UserDeath;

@WebServlet("/AddDeathServ")
public class AddDeathServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");

		String name, sex, address, placeOfDeath, causeOfDeath, status, spousename, spouseAdd, spouseCont;

		name = request.getParameter("name");
		sex = request.getParameter("sex");

		int day = 0, month = 0, year = 0;
		day = Integer.parseInt(request.getParameter("day"));
		month = Integer.parseInt(request.getParameter("month"));
		year = Integer.parseInt(request.getParameter("year"));

		Date dateOfBirth = null;
		try {
			dateOfBirth = new SimpleDateFormat("yyyy-MM-dd").parse(year + "-"
					+ month + "-" + day);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		System.out.println("day: " + day + "month: " + month + "year: " + year
				+ dateOfBirth);

		address = request.getParameter("adress");
		System.out.println(address);

		int day1 = 0, month1 = 0, year1 = 0;
		day1 = Integer.parseInt(request.getParameter("day1"));
		month1 = Integer.parseInt(request.getParameter("month1"));
		year1 = Integer.parseInt(request.getParameter("year1"));
		Date diedOn = null;
		try {
			diedOn = new SimpleDateFormat("yyyy-MM-dd").parse(year1 + "-"
					+ month1 + "-" + day1);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		System.out.println("diedOn==>" + diedOn);
		placeOfDeath = request.getParameter("place");
		causeOfDeath = request.getParameter("cause");
		status = request.getParameter("status");
		spousename = request.getParameter("spousename");
		spouseAdd = request.getParameter("spouseadd");
		spouseCont = request.getParameter("spousephone");

		UserDeath user = UserDeath.getUser(name, sex, dateOfBirth, address,
				diedOn, placeOfDeath, causeOfDeath, status, spousename,
				spouseAdd, spouseCont);
		List<UserDeath> users = RegisterDeath.register(user);
		request.setAttribute("users", users);
		RequestDispatcher dispatcher = request
				.getRequestDispatcher("/JSP/Death/Success.jsp");
		dispatcher.forward(request, response);
		return;
	}
}