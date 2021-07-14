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
import civil.EditMarriage;
import civil.UserMarriage;

@WebServlet("/EditMarriagServ")
public class EditMarriagServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String id, husbandName, religion, address, contact, placeOfMarriage, profession, wifeName, contact1, profession1;

		id = request.getParameter("id");
		System.out.println("<<<<<<<<<>>>>>>>>>>>"+id);
		husbandName = request.getParameter("fullname");
		religion = request.getParameter("religion");

		int day1 = 0, month1 = 0, year1 = 0;
		day1 = Integer.parseInt(request.getParameter("day1"));
		month1 = Integer.parseInt(request.getParameter("month1"));
		year1 = Integer.parseInt(request.getParameter("year1"));

		Date dateOfBirth3 = null;
		try {
			dateOfBirth3 = new SimpleDateFormat("yyyy-MM-dd").parse(year1 + "-"
					+ month1 + "-" + day1);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		address = request.getParameter("address");
		contact = request.getParameter("contact");
		placeOfMarriage = request.getParameter("placeOfMarriag");

		int day2 = 0, month2 = 0, year2 = 0;
		day2 = Integer.parseInt(request.getParameter("day2"));
		month2 = Integer.parseInt(request.getParameter("month2"));
		year2 = Integer.parseInt(request.getParameter("year2"));

		Date dateOfMarriage = null;
		try {
			dateOfMarriage = new SimpleDateFormat("yyyy-MM-dd").parse(year2
					+ "-" + month2 + "-" + day2);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		profession = request.getParameter("proff1");
		wifeName = request.getParameter("wifename");

		int day3 = 0, month3 = 0, year3 = 0;
		day3 = Integer.parseInt(request.getParameter("day3"));
		month3 = Integer.parseInt(request.getParameter("month3"));
		year3 = Integer.parseInt(request.getParameter("year3"));

		Date dateOfBirth2 = null;
		try {
			dateOfBirth2 = new SimpleDateFormat("yyyy-MM-dd").parse(year3 + "-"
					+ month3 + "-" + day3);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		contact1 = request.getParameter("cont2");
		profession1 = request.getParameter("proff2");

		UserMarriage user1 = UserMarriage.getUser(husbandName, religion,
				dateOfBirth3, address, contact, placeOfMarriage,
				dateOfMarriage, profession, wifeName, dateOfBirth2, contact1,
				profession1);

		user1.setId(id);
		System.out.println("--------***-------");
		System.out.println(id);
		List<UserMarriage> list = EditMarriage.Edit(user1);
		request.setAttribute("users1", list);
		RequestDispatcher dispatcher = request
				.getRequestDispatcher("/JSP/Marriage/PrintEditedMarr.jsp");
		dispatcher.forward(request, response);
		return;
	}
}