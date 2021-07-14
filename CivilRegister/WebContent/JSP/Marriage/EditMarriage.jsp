<%@page import="civil.UserMarriage"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Edit Marriage Details</title>
<link href="/CivilRegister/CCC_files/style.css" rel="stylesheet"
	type="text/css">
<link href="/CivilRegister/CCC_files/Date.css" rel="stylesheet"
	type="text/css">
<link href="/CivilRegister/CCC_files/FieldSize.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="/CivilRegister/CCC_files/required.css">
</head>
<body>
	<div id="wrapper" style="height: 1000px">
		<!-- header bar-->
		<div id="header">
			<div id="headertop">
				<span class="left"><%=new SimpleDateFormat("E , dd MMM yyyy HH:mm:ss").format(new Date()) %></span>
			</div>
			<div id="headerimage">
				<img src="/CivilRegister/images/headerimg.gif">
			</div>
		</div>
		<!-- nav bar-->
    <div id="nav">
		<ul class="menu">
        <li><a href="/CivilRegister/JSP/welcome.jsp">Home</a></li>
        <li><a href="/CivilRegister/JSP/Login.jsp">Login</a>
        <li><a href="/CivilRegister/JSP/CivilReg.jsp">Civil Registration Law</a></li>
        <li><a href="/CivilRegister/JSP/DelayedReg.jsp">Registration Clock</a>
        <li><a href="/CivilRegister/JSP/Fees.jsp">Fees </a>
        <li><a href="/CivilRegister/JSP/Feedback.jsp">Feedback Forum</a></li>
        <li><a href="/CivilRegister/JSP/ContactUs.jsp">Contact us</a></li>
        <li><a href="/CivilRegister/JSP/Faqs.jsp">FAQs.</a></li>        
        </ul>
    </div> 
     <!-- content area-->
		<div class="content">
			<form action="EditMarriagServ" method="post">
				<table align="center" cellspacing="12">

					<%
						List<UserMarriage> list = (List<UserMarriage>) request
								.getAttribute("users");
						for (UserMarriage user1 : list) {
					%>
					<tbody>
						<tr>
							<td><b><font face="Tahoma" size="5">Details of
										Husband<br>
								</font></b></td>
						</tr>
						<input type="hidden" name=id value="<%=user1.getId()%>" />
						<tr>
							<td><font face="Lucida Bright">Full Name :</font></td>
							<td>
								<div class="textfield">
									<font face="Lucida Bright"><input type="text"
										name=fullname value="<%=user1.getHusbandName()%>"></font>
								</div>
							</td>
						</tr>
						<tr>
							<td><font face="Lucida Bright">Religion :</font></td>
							<td>
								<div class="textfield">
									<font face="Lucida Bright"><input type="text"
										name=religion value="<%=user1.getReligion()%>"> </font>
								</div>
							</td>
						</tr>
						<%
							Calendar calendar = Calendar.getInstance();
								calendar.setTime(user1.getDateOfBirth3());
						%>
						<tr>
							<td><font face="Lucida Bright">Date of Birth :</font></td>
							<td><div id="date1" class="datefield">
									<font face="Lucida Bright"><input type="text" id="day"
										name="day1" maxlength="2"
										value="<%=calendar.get(Calendar.DAY_OF_MONTH)%>"></font>/ <font
										face="Lucida Bright"><input type="text" id="month"
										name="month1" maxlength="2"
										value="<%=calendar.get(Calendar.MONTH) + 1%>"></font>/ <font
										face="Lucida Bright"><input type="text" id="year"
										name="year1" maxlength="4"
										value="<%=calendar.get(Calendar.YEAR)%>"></font>
								</div></td>
						</tr>
						<tr>
							<td><font face="Lucida Bright">Address :</font></td>
							<td><div class="textfield">
									<font face="Lucida Bright"><input type="text"
										name=address value="<%=user1.getAddress()%>"></font>
								</div></td>
						</tr>
						<tr>
							<td><font face="Lucida Bright">Contact No. :</font></td>
							<td><div class="textfield">
									<font face="Lucida Bright"><input type="text"
										name=contact value="<%=user1.getContact()%>"></font>
								</div></td>
						</tr>
						<tr>
							<td><font face="Lucida Bright">Place of Marriage :</font></td>
							<td><div class="textfield">
									<font face="Lucida Bright"><input type="text"
										name=placeOfMarriag value="<%=user1.getPlaceOfMarriage()%>"></font>
								</div></td>
						</tr>

						<%
							Calendar calenda = Calendar.getInstance();
								calendar.setTime(user1.getDateOfMarriage());
						%>
						<tr>
							<td><font face="Lucida Bright">Date of Marriage :</font></td>
							<td><div id="date1" class="datefield">
									<font face="Lucida Bright"><input type="text" id="day"
										name="day2" maxlength="2"
										value="<%=calenda.get(Calendar.DAY_OF_MONTH)%>"></font>/ <font
										face="Lucida Bright"><input type="text" id="month"
										name="month2" maxlength="2"
										value="<%=calenda.get(Calendar.MONTH) + 1%>"></font>/ <font
										face="Lucida Bright"><input type="text" id="year"
										name="year2" maxlength="4"
										value="<%=calenda.get(Calendar.YEAR)%>"></font>
								</div></td>
						</tr>
						<tr>
							<td><font face="Lucida Bright">Profession :</font></td>
							<td><div class="textfield">
									<font face="Lucida Bright"><input type="text"
										name=proff1 value="<%=user1.getProfession1()%>"></font>
								</div></td>
						</tr>
						<tr>
							<td><b><font face="Tahoma" size="5"><br>Details
										of Wife</font></b></td>
						</tr>
						<tr>
							<td><font face="Lucida Bright">Full Name :</font></td>
							<td><div class="textfield">
									<font face="Lucida Bright"><input type="text"
										name=wifename value="<%=user1.getWifeName()%>"></font>
								</div></td>
						</tr>

						<%
							Calendar calend = Calendar.getInstance();
								calendar.setTime(user1.getDateOfBirth2());
						%>
						<tr>
							<td><font face="Lucida Bright">Date of Birth :</font></td>
							<td><div id="date1" class="datefield">
									<font face="Lucida Bright"><input type="text" id="day"
										name="day3" maxlength="2"
										value="<%=calend.get(Calendar.DAY_OF_MONTH)%>"></font>/ <font
										face="Lucida Bright"><input type="text" id="month"
										name="month3" maxlength="2"
										value="<%=calend.get(Calendar.MONTH) + 1%>"></font>/ <font
										face="Lucida Bright"><input type="text" id="year"
										name="year3" maxlength="4"
										value="<%=calend.get(Calendar.YEAR)%>"></font>
								</div></td>
						</tr>
						<tr>
							<td><font face="Lucida Bright">Contact No. :</font></td>
							<td><div class="textfield">
									<font face="Lucida Bright"><input type="text"
										name=cont2 value="<%=user1.getContact1()%>"></font>
								</div></td>
						</tr>
						<tr>
							<td><font face="Lucida Bright">Profession :</font></td>
							<td><div class="textfield">
									<font face="Lucida Bright"><input type="text"
										name=proff2 value="<%=user1.getProfession1()%>"></font>
								</div></td>
						</tr>
						<tr></tr>
						<tr>
							<td></td>
							<td><div class="submit">
									<font face="Lucida Bright"><input type="submit"
										name="Reg" value="Register"></font>
								</div></td>
						</tr>
					</tbody>
					<%
						}
					%>
				</table>
			</form>
		</div>
	</div>
	<!-- footer area-->
	<div class="footer">
		<p>© civil registration system 2014, All rights are reserved.</p>
	</div>
</body>
</html>