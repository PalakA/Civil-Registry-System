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

import civil.EditDeath;
import civil.UserDeath;

@WebServlet("/EditDeathServ")
public class EditDeathServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");

		String id ,name, sex, address, placeOfDeath, causeOfDeath, status, spousename, spouseAdd, spouseCont;

		id = request.getParameter("id");
		System.out.println("Id : -------" + id);
		name = request.getParameter("childname");
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

		address = request.getParameter("address");

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
		placeOfDeath = request.getParameter("deathplace");
		causeOfDeath = request.getParameter("causedeath");
		status = request.getParameter("status");
		spousename = request.getParameter("spousename");
		spouseAdd = request.getParameter("spouseadd");
		spouseCont = request.getParameter("spousecontact");

		UserDeath user = UserDeath.getUser(name, sex, dateOfBirth, address,
				diedOn, placeOfDeath, causeOfDeath, status, spousename,
				spouseAdd, spouseCont);

		user.setId(id);
		System.out.println("--------***-------");
		System.out.println(id);
		List<UserDeath> list = EditDeath.Edit(user);
		request.setAttribute("user2", list);
		RequestDispatcher dispatcher = request
				.getRequestDispatcher("/JSP/Death/PrintEditedDeath.jsp");
		dispatcher.forward(request, response);
		return;
	}
}