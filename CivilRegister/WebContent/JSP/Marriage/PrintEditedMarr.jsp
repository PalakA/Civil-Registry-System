<%@page import="civil.UserMarriage"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="civil.UserMarriage"%>
<%@page import="civil.EditMarriage"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Updated Details</title>
<link href="/CivilRegister/CCC_files/style.css" rel="stylesheet"
	type="text/css">
<link href="/CivilRegister/CCC_files/Date.css" rel="stylesheet"
	type="text/css">
<link href="/CivilRegister/CCC_files/FieldSize.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="/CivilRegister/CCC_files/required.css">
</head>
<body>
	<div id="wrapper">
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
			<form action="/CivilRegister/JSP/Registry.jsp" method="post">
				<br> <br> <br> <br>
				<table align="center">
					<%
					List<UserMarriage> list = (List<UserMarriage>) request
							.getAttribute("users1");
					for (UserMarriage user2 : list) {
					%>
					<tr>
							<td><b><font face="Tahoma" size="4">Details of
										Husband<br>
								</font></b></td>
								<br>
						</tr>
				<input type="hidden" name="id" value="<%=user2.getId()%>" />
				<tr>
						<td><font face="Calibri" size="4"><b>Full Name :</b></font></td>
						<td><font face="Calibri" size="4">&nbsp;&nbsp;&nbsp;&nbsp;<%=user2.getHusbandName()%></font>
						</td>
					</tr>
					<tr>
						<td><font face="Calibri" size="4"><b>Religion :</b></font></td>
						<td><font face="Calibri" size="4">&nbsp;&nbsp;&nbsp; <%=user2.getReligion()%></font>
					</tr>
					<tr>
						<td><font face="Calibri" size="4"><b>Date of Birth :</b></font></td>
						<td><font face="Calibri" size="4">&nbsp;&nbsp;&nbsp; <%=user2.getDateOfBirth3()%></font>
					</tr>
					<tr>
						<td><font face="Calibri" size="4"><b>Address :</b></font></td>
						<td><font face="Calibri" size="4">&nbsp;&nbsp;&nbsp; <%=user2.getAddress()%></font>
					</tr>
					<tr>
						<td><font face="Calibri" size="4"><b>Contact No. :</b></font></td>
						<td><font face="Calibri" size="4"> &nbsp;&nbsp;&nbsp;&nbsp;<%=user2.getContact()%></font>
					</tr>
					<tr>
						<td><font face="Calibri" size="4"><b>Place of Marriage :</b></font></td>
						<td><font face="Calibri" size="4">&nbsp;&nbsp;&nbsp; <%=user2.getPlaceOfMarriage()%></font>
					</tr>
					<tr>
						<td><font face="Calibri" size="4"><b>Date of Marriage :</b></font></td>
						<td><font face="Calibri" size="4">&nbsp;&nbsp;&nbsp; <%=user2.getDateOfMarriage()%></font>
					</tr>
					<tr>
						<td><font face="Calibri" size="4"><b>Profession :</b></font></td>
						<td><font face="Calibri" size="4">&nbsp;&nbsp;&nbsp; <%=user2.getProfession1()%></font>
					</tr>
					<tr>
							<td><b><font face="Tahoma" size="4"><br>Details
										of Wife</font></b></td>
						</tr>
						<br>
					<tr>
						<td><font face="Calibri" size="4"><b>Full Name :</b></font></td>
						<td><font face="Calibri" size="4">&nbsp;&nbsp;&nbsp; <%=user2.getWifeName()%></font>
					</tr>
					<tr>
						<td><font face="Calibri" size="4"><b>Date of Birth :</b></font></td>
						<td><font face="Calibri" size="4">&nbsp;&nbsp;&nbsp; <%=user2.getDateOfBirth2()%></font>
					</tr>
					<tr>
						<td><font face="Calibri" size="4"><b>Contact No. :</b></font></td>
						<td><font face="Calibri" size="4">&nbsp;&nbsp;&nbsp; <%=user2.getContact1()%></font>
							<br>
					</tr>
					<tr>
						<td><font face="Calibri" size="4"><b>Profession :</b></font></td>
						<td><font face="Calibri" size="4">&nbsp;&nbsp;&nbsp; <%=user2.getProfession1()%></font>
							<br>
					</tr>
					<%
						}
					%>
				</table>
				<center>
					<div class="submit">
					<br>
						<br> <font face="Lucida Bright"><input type="submit"
							name=Cont value="Continue"></font>
				</center>
				<br>
				</form>
		</div>
	</div>
	<!-- footer area-->
	<div class="footer">
		<p>&copy; civil registration system 2014, All rights are reserved.</p>
	</div>
</body>
</html>