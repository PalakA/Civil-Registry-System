<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="civil.UserBirth"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Edit Birth Details</title>
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
			<form action="EditBirthServ" method="post">
				<center>
					<font size="6" face="Candara"> <br> <b>Birth
							Registration Form</b><br> <br>
					</font>
				</center>
				<table align="center" cellspacing="12">

					<%
						List<UserBirth> list = (List<UserBirth>) request
								.getAttribute("users");
						for (UserBirth user1 : list) {
					%>
					<tbody>
						<tr>
						<tr>
						<input type="hidden" name=id value="<%=user1.getId()%>" />
					
							<td><font face="Lucida Bright">Child's Name :</font></td>
							<td>
								<div class="textfield">
									<font face="Lucida Bright"><input type="text"
										name=childname value="<%=user1.getFirstName()%>"></font>
								</div>
							</td>
						</tr>
						<tr>
							<td><font face="Lucida Bright">Sex :</font></td>
							<td>
								<div class="textfield">
									<font face="Lucida Bright"><input type="text" name=sex
										value="<%=user1.getSex()%>"> </font>
								</div>
							</td>
						</tr>
						<tr>
							<td><font face="Lucida Bright">Place of Birth :</font></td>
							<td><div class="textfield">
									<font face="Lucida Bright"><input type="text"
										name=birthplace value="<%=user1.getPlaceOfBirth()%>">
									</font>
								</div></td>
						</tr>
						<%
						Calendar calendar = Calendar.getInstance();
						calendar.setTime(user1.getDateOfBirth());
						%>
						<tr>
							<td><font face="Lucida Bright">Date of Birth:</font></td>
							<td><div id="date1" class="datefield">
									<font face="Lucida Bright"><input type="text" id="day" name="day" maxlength="2" value="<%=calendar.get(Calendar.DAY_OF_MONTH)%>"></font>/ 
									<font face="Lucida Bright"><input type="text" id="month" name="month" maxlength="2" value="<%=calendar.get(Calendar.MONTH)+1%>"></font>/
									<font face="Lucida Bright"><input type="text" id="year" name="year" maxlength="4" value="<%=calendar.get(Calendar.YEAR)%>"></font>
								</div></td>
						</tr>
						<tr>
							<td><font face="Lucida Bright">Time:</font></td>
							<td><div id="date1" class="datefield">
									<font face="Lucida Bright"><input type="text" id="hour" maxlength="2" name=hour value="<%=calendar.get(Calendar.HOUR_OF_DAY)%>"></font>
									<b>:</b> 
									<font face="Lucida Bright"><input type="text" id="min" name=min maxlength="2" value="<%=calendar.get(Calendar.MINUTE)%>"></font>
									<b>:</b> 
									<font face="Lucida Bright"><input type="text" id="sec" maxlength="2" name=sec value="<%=calendar.get(Calendar.SECOND)%>"></font>
								</div></td>
						</tr>
						<tr>
							<td><font face="Lucida Bright">Name of
									Hospital/Clinic :</font></td>
							<td><div class="textfield">
									<font face="Lucida Bright"><input type="text"
										name=clinicname value="<%=user1.getHospital()%>"></font>
								</div></td>
						</tr>
						<tr>
							<td><font face="Lucida Bright">Father's Name :</font></td>
							<td><div class="textfield">
									<font face="Lucida Bright"><input type="text"
										name=fathername value="<%=user1.getFatherName()%>"></font>
								</div></td>
						</tr>
						<tr>
							<td><font face="Lucida Bright">Mother's Name :</font></td>
							<td><div class="textfield">
									<font face="Lucida Bright"><input type="text"
										name=mothername value="<%=user1.getMotherName()%>"></font>
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
							<td><font face="Lucida Bright">Contact No.</font></td>
							<td><div class="textfield">
									<font face="Lucida Bright"><input type="text"
										name=contact value="<%=user1.getContact()%>"></font>
								</div></td>
						</tr>
						<tr>
							<td><font face="Lucida Bright">Religion :</font></td>
							<td><div class="textfield">
									<font face="Lucida Bright"><input type="text"
										name=religion value="<%=user1.getReligion()%>"></font>
								</div></td>
						</tr>
						<tr>
							<td><font face="Lucida Bright">In Relation to the
									Child :</font></td>
							<td><div class="textfield">
									<font face="Lucida Bright"><input type="text"
										name=relationchild value="<%=user1.getRelation()%>"></font>
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