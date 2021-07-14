<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Search Birth Details</title>
<link href="/CivilRegister/CCC_files/style.css" rel="stylesheet"
	type="text/css">
<link href="/CivilRegister/CCC_files/Date.css" rel="stylesheet"
	type="text/css">
<link href="/CivilRegister/CCC_files/FieldSize.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="/CivilRegister/CCC_files/required.css">
</head>
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
			<form action="../../InfoBirthServ" method="post">
				<center>
					<font size="6" face=Candara> <br> <br><b>Search
							Birth Details</b><br> <br>
					</font>
				</center>
				<table align="center" cellspacing="12">
					<tr>
						<td><font face="Lucida Bright">Name of Child :</font></td>
						<td><div class="textfield">
								<input type="text" name=fname1
									oninvalid="setCustomValidity('Enter Child's Name')"
									onchange="try{setCustomValidity('')}catch(e){}" required>
							</div></td>
					</tr>
					<tr>
						<td><font face="Lucida Bright">Place of Birth :</font></td>
						<td><div class="textfield">
								<input type="text" name=placename
									oninvalid="setCustomValidity('Enter Place of Birth')"
									onchange="try{setCustomValidity('')}catch(e){}" required>
							</div></td>
					</tr>
					<tr>
						<td><font face="Lucida Bright">Sex :</font></td>
						<td><font face="Lucida Bright">Male </font><input
							type="radio" name=sex checked="checked"></td>
						<td><font face="Lucida Bright">Female </font><input
							type="radio" name=sex></td>
					</tr>
					<tr>
						<td><font face="Lucida Bright">Father's Name :</font></td>
						<td><div class="textfield">
								<input type="text" name=father
									oninvalid="setCustomValidity('Enter Father's Name')"
									onchange="try{setCustomValidity('')}catch(e){}" required>
							</div></td>
					</tr>
					<tr></tr>
					<tr>
						<td></td>
						<td><div class="submit">
								<br> <font face="Lucida Bright"><input type="submit"
									name=search value="Search"></font>
							</div></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<!-- footer area-->
	<div class="footer">
		<p>© civil registration system 2014, All rights are reserved.</p>

	</div>
</body>
</html>