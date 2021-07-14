<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="civil.UserDeath"%>
<%@page import="civil.EditDeath"%>
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
					List<UserDeath> list = (List<UserDeath>) request
							.getAttribute("user2");
					for (UserDeath user2 : list) {
					%>
				<input type="hidden" name="id" value="<%=user2.getId()%>" />
				<tr>
						<td><font face="Calibri" size="4"><b>Name :</b></font></td>
						<td><font face="Calibri" size="4">&nbsp;&nbsp;&nbsp;<%=user2.getName()%></font>
						</td>
					</tr>
					<tr>
						<td><font face="Calibri" size="4"><b>Sex :</b></font></td>
						<td><font face="Calibri" size="4"> &nbsp;&nbsp;&nbsp;<%=user2.getSex()%></font>
					</tr>
					<tr>
						<td><font face="Calibri" size="4"><b>Date of Birth :</b></font></td>
						<td><font face="Calibri" size="4">&nbsp;&nbsp;&nbsp; <%=user2.getDateOfBirth()%></font>
					</tr>
					<tr>
						<td><font face="Calibri" size="4"><b>Address :</b></font></td>
						<td><font face="Calibri" size="4">&nbsp;&nbsp;&nbsp; <%=user2.getAddress()%></font>
					</tr>
					<tr>
						<td><font face="Calibri" size="4"><b>Died On :</b></font></td>
						<td><font face="Calibri" size="4">&nbsp;&nbsp;&nbsp; <%=user2.getDiedOn()%></font>
					</tr>
					<tr>
						<td><font face="Calibri" size="4"><b>Place of Death :</b></font></td>
						<td><font face="Calibri" size="4">&nbsp;&nbsp;&nbsp; <%=user2.getPlaceOfDeath()%></font>
					</tr>
					<tr>
						<td><font face="Calibri" size="4"><b>Cause of Death :</b></font></td>
						<td><font face="Calibri" size="4">&nbsp;&nbsp;&nbsp; <%=user2.getCauseOfDeath()%></font>
					</tr>
					<tr>
						<td><font face="Calibri" size="4"><b>Status :</b></font></td>
						<td><font face="Calibri" size="4">&nbsp;&nbsp;&nbsp; <%=user2.getStatus()%></font>
					</tr>
					<tr>
						<td><font face="Calibri" size="4"><b>Name of Spouse :</b></font></td>
						<td><font face="Calibri" size="4">&nbsp;&nbsp;&nbsp; <%=user2.getSpousename()%></font>
					</tr>
					<tr>
						<td><font face="Calibri" size="4"><b>Address :</b></font></td>
						<td><font face="Calibri" size="4">&nbsp;&nbsp;&nbsp; <%=user2.getSpouseAdd()%></font>
					</tr>
					<tr>
						<td><font face="Calibri" size="4"><b>Contact No. :</b></font></td>
						<td><font face="Calibri" size="4">&nbsp;&nbsp;&nbsp; <%=user2.getSpouseCont()%></font>
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