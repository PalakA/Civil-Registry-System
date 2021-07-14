<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="civil.UserDeath"%>
<%@page import="civil.RegisterDeath"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Deceased Details</title>
<link href="/CivilRegister/CCC_files/style.css" rel="stylesheet"
	type="text/css">
<link href="/CivilRegister/CCC_files/Date.css" rel="stylesheet"
	type="text/css">
<link href="/CivilRegister/CCC_files/FieldSize.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="/CivilRegister/CCC_files/required.css">
</head>
<body>
	<div id="wrapper" style="height: 950px">
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
			<form action="EditDeathSer" method="post">
				<br> <br>
				<br>
				<br>
				<table align="center" border="1" cellpadding="6">
					<%
						UserDeath user1 = (UserDeath) request.getAttribute("user3");
					%>
					<input type="hidden" name=id value="<%=user1.getId()%>" />
					<tr>
						<td><font face="Calibri" size="4"><b>Name :</b></font></td>
						<td><font face="Calibri" size="4"><%=user1.getName()%></font></td>
					</tr>
					<tr>
						<td><font face="Calibri" size="4"><b>Sex :</b></font></td>
						<td><font face="Calibri" size="4"><%=user1.getSex()%></font>
					</tr>
					<tr>
						<td><font face="Calibri" size="4"><b>Date of Birth
									:</b></font></td>
						<td><font face="Calibri" size="4"><%=user1.getDateOfBirth()%></font>
					</tr>
					<tr>
						<td><font face="Calibri" size="4"><b>Address :</b></font></td>
						<td><font face="Calibri" size="4"><%=user1.getAddress()%></font>
					</tr>
					<tr>
						<td><font face="Calibri" size="4"><b>Died On :</b></font></td>
						<td><font face="Calibri" size="4"> <%=user1.getDiedOn()%></font>
					</tr>
					<tr>
						<td><font face="Calibri" size="4"><b>Place of
									Death :</b></font></td>
						<td><font face="Calibri" size="4"> <%=user1.getPlaceOfDeath()%></font>
					</tr>
					<tr>
						<td><font face="Calibri" size="4"><b>Cause of
									Death :</b></font></td>
						<td><font face="Calibri" size="4"> <%=user1.getCauseOfDeath()%></font>
					</tr>
					<tr>
						<td><font face="Calibri" size="4"><b>Status :</b></font></td>
						<td><font face="Calibri" size="4"> <%=user1.getStatus()%></font>
					</tr>
					<tr>
						<td><font face="Calibri" size="4"><b>Name of
									Spouse :</b></font></td>
						<td><font face="Calibri" size="4"> <%=user1.getSpousename()%></font>
					</tr>
					<tr>
						<td><font face="Calibri" size="4"><b>Address :</b></font></td>
						<td><font face="Calibri" size="4"> <%=user1.getSpouseAdd()%></font>
					</tr>
					<tr>
						<td><font face="Calibri" size="4"><b>Contact No. :</b></font></td>
						<td><font face="Calibri" size="4"> <%=user1.getSpouseCont()%></font>
							<br>
					</tr>
				</table>
				<br><br>
				<center>
					<div class="submit">
						<font face="Lucida Bright"><input type="submit" name=action
							value="Edit"> </font>
					</div>
					<br>
					<div class="submit1">
						<font face="Lucida Bright"><input type="submit"
							name=action value="Generate Certificate"> </font>
					</div>
				</center>
			</form>
		</div>
	</div>
	<!-- footer area-->
	<div class="footer">
		<p>&copy; civil registration system 2014, All rights are reserved.</p>
	</div>
</body>
</html>