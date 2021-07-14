<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="civil.UserBirth"%>
<%@page import="civil.RegisterBirth"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Birth Details</title>
<link href="/CivilRegister/CCC_files/style.css" rel="stylesheet"
	type="text/css">
<link href="/CivilRegister/CCC_files/Date.css" rel="stylesheet"
	type="text/css">
<link href="/CivilRegister/CCC_files/FieldSize.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="/CivilRegister/CCC_files/required.css">
</head>
<body>
	<div id="wrapper" style="height: 930px">
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
			<form action="EditBirthSer" method="post">
				<br> <br> <br>
				<table border="1" align="center" cellpadding="5">
					<%
						UserBirth user1 = (UserBirth) request.getAttribute("user");
					%>
					<input type="hidden" name="id" value="<%=user1.getId()%>" />

					<tr>
						<td><font face="Calibri" size="4"><b>First Name :</b></font></td>
						<td><font face="Calibri" size="4">&nbsp;&nbsp;&nbsp;&nbsp;<%=user1.getFirstName()%></font>
						</td>
					</tr>
					<tr>
						<td><font face="Calibri" size="4"><b>Sex :</b></font></td>
						<td><font face="Calibri" size="4">&nbsp;&nbsp;&nbsp; <%=user1.getSex()%></font>
					</tr>
					<tr>
						<td><font face="Calibri" size="4"><b>Place of
									Birth :</b></font></td>
						<td><font face="Calibri" size="4">&nbsp;&nbsp;&nbsp; <%=user1.getPlaceOfBirth()%></font>
					</tr>
					<tr>
						<td><font face="Calibri" size="4"><b>Date of Birth
									:</b></font></td>
						<td><font face="Calibri" size="4">&nbsp;&nbsp;&nbsp; <%=user1.getDateOfBirth()%></font>
					</tr>
					<tr>
						<td><font face="Calibri" size="4"><b>Name of
									Hospital/Clinic :</b></font></td>
						<td><font face="Calibri" size="4">
								&nbsp;&nbsp;&nbsp;&nbsp;<%=user1.getHospital()%></font>
					</tr>
					<tr>
						<td><font face="Calibri" size="4"><b>Father's Name
									:</b></font></td>
						<td><font face="Calibri" size="4">&nbsp;&nbsp;&nbsp; <%=user1.getFatherName()%></font>
					</tr>
					<tr>
						<td><font face="Calibri" size="4"><b>Mother's Name
									:</b></font></td>
						<td><font face="Calibri" size="4">&nbsp;&nbsp;&nbsp; <%=user1.getMotherName()%></font>
					</tr>
					<tr>
						<td><font face="Calibri" size="4"><b>Address :</b></font></td>
						<td><font face="Calibri" size="4">&nbsp;&nbsp;&nbsp; <%=user1.getAddress()%></font>
					</tr>
					<tr>
						<td><font face="Calibri" size="4"><b>Contact No. :</b></font></td>
						<td><font face="Calibri" size="4">&nbsp;&nbsp;&nbsp; <%=user1.getContact()%></font>
					</tr>
					<tr>
						<td><font face="Calibri" size="4"><b>Religion :</b></font></td>
						<td><font face="Calibri" size="4">&nbsp;&nbsp;&nbsp; <%=user1.getReligion()%></font>
					</tr>
					<tr>
						<td><font face="Calibri" size="4"><b>Form Filled
									By Child's :</b></font></td>
						<td><font face="Calibri" size="4">&nbsp;&nbsp;&nbsp; <%=user1.getRelation()%></font>
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