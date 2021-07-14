<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="civil.UserDeath"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Edit Death Details</title>
<link href="/CivilRegister/CCC_files/style.css" rel="stylesheet"
	type="text/css">
<link href="/CivilRegister/CCC_files/Date.css" rel="stylesheet"
	type="text/css">
<link href="/CivilRegister/CCC_files/FieldSize.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="/CivilRegister/CCC_files/required.css">
</head>
<body>
	<div id="wrapper" style="height: 1050px">
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
			<form action="EditDeathServ" method="post">
				<br> <br>
				<center>
					<font size="6" face=Candara><b>Death Registration Form</b><br>
						<br> </font>
				</center>
				<table align="center" cellspacing="12">
					<%
						List<UserDeath> list = (List<UserDeath>) request
								.getAttribute("users");
						for (UserDeath user1 : list) {
					%>
					<input type="hidden" name=id value="<%=user1.getId()%>" />
					<tr>
						<td><font face="Tahoma" size="5">Deceased Person :</font></td>
					</tr>
					<tr>
						<td><font face="Lucida Bright">Name :</font></td>
						<td><div class="textfield">
								<font face="Lucida Bright"><input type="text"
									name=childname value="<%=user1.getName()%>"></font>
							</div></td>
					</tr>
					<tr>
						<td><font face="Lucida Bright">Sex :</font></td>
						<td><div class="textfield">
								<font face="Lucida Bright"><input type="text" name=sex
									value="<%=user1.getSex()%>"> </font>
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
						<td><font face="Lucida Bright">Address :</font></td>
						<td><div class="textfield">
								<font face="Lucida Bright"><input type="text"
									name=address value="<%=user1.getAddress()%>"></font>
							</div></td>
					</tr>
					<%
						Calendar calenda = Calendar.getInstance();
						calendar.setTime(user1.getDiedOn());
						%>
						<tr>
							<td><font face="Lucida Bright">Died On :</font></td>
							<td><div id="date1" class="datefield">
									<font face="Lucida Bright"><input type="text" id="day1" name="day1" maxlength="2" value="<%=calenda.get(Calendar.DAY_OF_MONTH)%>"></font>/ 
									<font face="Lucida Bright"><input type="text" id="month1" name="month1" maxlength="2" value="<%=calenda.get(Calendar.MONTH)+1%>"></font>/
									<font face="Lucida Bright"><input type="text" id="year" name="year1" maxlength="4" value="<%=calenda.get(Calendar.YEAR)%>"></font>
								</div></td>
						</tr>
					<tr>
						<td><font face="Lucida Bright">Place of Death :</font></td>
						<td><div class="textfield">
								<font face="Lucida Bright"><input type="text"
									name=deathplace value="<%=user1.getPlaceOfDeath()%>"></font>
							</div></td>
					</tr>
					<tr>
						<td><font face="Lucida Bright">Cause of Death :</font></td>
						<td><div class="textfield">
								<font face="Lucida Bright"><input type="text"
									name=causedeath value="<%=user1.getCauseOfDeath()%>"></font>
							</div></td>
					</tr>

					<tr>
						<td><font face="Tahoma" size="5">Marriage Particulars
								:</font></td>
					</tr>
					<tr>
						<td><font face="Lucida Bright">Status :</font></td>
						<td><div class="textfield">
								<font face="Lucida Bright"><input type="text" name=status
									value="<%=user1.getStatus()%>"></font>
							</div></td>
					</tr>
					<tr>
						<td><font face="Lucida Bright">Name of Spouse:</font></td>
						<td><div class="textfield">
								<font face="Lucida Bright"><input type="text"
									name=spousename value="<%=user1.getSpousename()%>"></font>
							</div></td>
					</tr>
					<tr>
						<td><font face="Lucida Bright">Address :</font></td>
						<td><div class="textfield">
								<font face="Lucida Bright"><input type="text"
									name=spouseadd value="<%=user1.getSpouseAdd()%>"></font>
							</div></td>
					</tr>
					<tr>
						<td><font face="Lucida Bright">Contact No.</font></td>
						<td><div class="textfield">
								<font face="Lucida Bright"><input type="text" maxlength="10"
									name=spousecontact value="<%=user1.getSpouseCont()%>"></font>
							</div></td>
					</tr>
					<tr></tr>
						<tr>
							<td></td>
							<td><div class="submit">
									<font face="Lucida Bright"><input type="submit"
										name="Register" value="Register"></font>
								</div></td>
						</tr>
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