<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Welcome</title>
<link href="/CivilRegister/CCC_files/style.css" rel="stylesheet"
	type="text/css">
<link href="/CivilRegister/CCC_files/FieldSize.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="/CivilRegister/CCC_files/required.css">
</head>
<body link="#000000" vlink="#000000" alink="#000000">
	<div id="wrapper" style="height: 850px">
		<!-- header bar-->
		<div id="header">
			<div id="headertop">
				<span class="left"><%=new SimpleDateFormat("E , dd MMM yyyy HH:mm:ss")
					.format(new Date())%></span>
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
			<br>
			<font face="arial, helvetica, sans-serif" style="font-size: 15px;">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
				href="/CivilRegister/JSP/welcome.jsp" style="text-decoration: none">Log
					Out</a></font>
			<br><br><br><br><font face="arial, helvetica, sans-serif"
				style="font-size: 20px;">
					<table>
					<tr>
					<td></td><td></td><td></td>
								<td></td><td></td><td></td><td></td>
								<td></td><td></td><td></td><td></td>
								<td></td><td></td><td></td><td></td>
								<td></td><td></td><td></td><td></td>
								<td></td><td></td><td></td><td></td>
								<td></td><td></td><td></td><td></td>
								<td><font face="arial, helvetica, sans-serif"
								style="font-size: 20px;"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Register</b></font></td>
								<td></td><td></td>
								<td></td><td></td>
								<td></td><td></td>
								<td></td><td></td><td></td><td></td>
								<td></td><td></td><td></td><td></td>
								<td></td><td></td>
								<td><font face="arial, helvetica, sans-serif"
								style="font-size: 20px;"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Search</b></font></td>
					</tr>
					<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
						<tr>
						<td><font face="arial, helvetica, sans-serif"
								style="font-size: 20px;"> <b><br> Birth Portal :- </b> <br>
									<br></font></td>
									<td></td><td></td>
								<td></td><td></td><td></td><td></td>
								<td></td><td></td><td></td><td></td>
								<td></td><td></td><td></td><td></td>
								<td></td><td></td><td></td><td></td>
								<td></td><td></td><td></td><td></td>
								<td></td><td></td><td></td><td></td>
								
							<td><a href="/CivilRegister/JSP/Birth/WelcBirth.jsp"
								class="classname">Register Birth</a></td>
								<td></td><td></td>
								<td></td><td></td>
								<td></td><td></td>
								<td></td><td></td><td></td><td></td>
								<td></td><td></td><td></td><td></td>
								<td></td><td></td>
							<td><a href="/CivilRegister/JSP/Birth/SearchBirth.jsp"
								class="classname" style="text-decoration: none">Search Birth
									Details </a></td>
						</tr>
						<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
						<tr>
						<td><font face="arial, helvetica, sans-serif"
								style="font-size: 20px;"> <b><br> Marriage
										Portal :- </b> <br> <br></font></td>
								<td></td><td></td>
								<td></td><td></td><td></td><td></td>
								<td></td><td></td><td></td><td></td>
								<td></td><td></td><td></td><td></td>
								<td></td><td></td><td></td><td></td>
								<td></td><td></td><td></td><td></td>
								<td></td><td></td><td></td><td></td>
					
							<td><a href="/CivilRegister/JSP/Marriage/WelcMarriage.jsp"
								class="classname" style="text-decoration: none">Register
									Marriage </a></td>
									<td></td><td></td>
								<td></td><td></td>
								<td></td><td></td>
								<td></td><td></td><td></td><td></td>
								<td></td><td></td><td></td><td></td>
								<td></td><td></td>
							<td><a href="/CivilRegister/JSP/Marriage/SearchMarriage.jsp"
								class="classname" style="text-decoration: none"> Search
									Marriage Details </a></td>
						</tr>
							<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
						<tr>
						<td><font face="arial, helvetica, sans-serif"
								style="font-size: 20px;"> <b><br> Death Portal :- </b> <br>
									<br></font></td>
									<td></td><td></td>
								<td></td><td></td><td></td><td></td>
								<td></td><td></td><td></td><td></td>
								<td></td><td></td><td></td><td></td>
								<td></td><td></td><td></td><td></td>
								<td></td><td></td><td></td><td></td>
								<td></td><td></td><td></td><td></td>
							
							<td><a href="/CivilRegister/JSP/Death/WelcDeath.jsp"
								class="classname" style="text-decoration: none"> Register Death
							</a></td>
							<td></td><td></td>
								<td></td><td></td>
								<td></td><td></td>
								<td></td><td></td><td></td><td></td>
								<td></td><td></td><td></td><td></td>
								<td></td><td></td>
							<td><a href="/CivilRegister/JSP/Death/SearchDeath.jsp"
								class="classname" style="text-decoration: none"> Search Deceased
									Details </a></td>
						</tr>
					</table>
			</font>
		</div>
	</div>
	<!-- footer area-->
	<div class="footer">
		<p>&copy; civil registration system 2014, All rights are reserved.</p>
	</div>
</body>
</html>