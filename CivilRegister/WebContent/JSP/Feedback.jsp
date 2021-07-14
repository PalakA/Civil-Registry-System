<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>FeedBack Forum</title>
<link href="/CivilRegister/CCC_files/style.css" rel="stylesheet"
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
			<form action="../AddFeedback" method="post">
				<br> <br> 
					<img style="float: right;" src="/CivilRegister/images/compl.jpg"/>
				<table align="center" cellspacing="12">
					<tr>
						<td><font face="arial, helvetica, sans-serif" style="font-size: 20px;"> <b><br> <br>
								Feedback Forum</b> <br> <br></font></td>
					</tr>
					<tr>
						<td><font face="arial, helvetica, sans-serif" style="font-size: 14px;"> Name : </font></td>
						<td><div class="textfield">
								<input type="text" name="name"
									oninvalid="setCustomValidity('Enter Name')"
									onchange="try{setCustomValidity('')}catch(e){}" type="text"
									required pattern="[a-z|A-Z| ]*">
							</div></td>
					</tr>
					<tr>
						<td><font face="arial, helvetica, sans-serif" style="font-size: 14px;"> Contact No. : </font></td>
						<td><div class="textfield">
								<input type="tel" name="contact" type="number" maxlength="10"
									required>
							</div></td>
					</tr>
					<tr>
						<td><font face="arial, helvetica, sans-serif" style="font-size: 14px;"> Feedback :</font></td>
						<td><div class="textarea">
								<textarea placeholder="Enter Feedback" name="complaint" rows="4"
									oninvalid="setCustomValidity('Enter Feedback')"
									onchange="try{setCustomValidity('')}catch(e){}"></textarea>
							</div></td>
					</tr>
					<tr>
						<td></td>
						<td><div class="submit">
								<font face="arial, helvetica, sans-serif" style="font-size: 14px;"><input type="submit"
									name="Submit" value="Submit"></font>
							</div></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<!-- footer area-->
	<div class="footer">
		<p>&copy; civil registration system 2014, All rights are reserved.</p>
	</div>
</body>
</html>