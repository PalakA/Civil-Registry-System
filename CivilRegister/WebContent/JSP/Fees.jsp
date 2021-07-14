<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Fees</title>
<link href="/CivilRegister/CCC_files/style.css" rel="stylesheet"
	type="text/css">
<link href="/CivilRegister/CCC_files/FieldSize.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="/CivilRegister/CCC_files/required.css">
</head>
<body>
	<div id="wrapper" style="height: 1150px">
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
			<br>
			<font size="5" face="Calibri "> <b>Fees</b></font><hr>
			 <font face="arial, helvetica, sans-serif" style="font-size: 14px;">
			 <br>
			 The total cost of your ceremony will vary depending on two things; firstly at what time you wish to hold your ceremony and secondly where you wish to hold it. The fees that make up the costs are detailed in the Fees Orders below, however, to help you quickly work out what a ceremony will cost, we have set out below total indicative costs for the various scenarios.
			 <br><br>The amounts below show the different fees payable for a ceremony (irrespective of whether a marriage or civil partnership, the fees are the same). We say these are total indicative costs simply because additional fees would be payable if you wish to extend the duration of your ceremony (the costs shown are based on a Registrar being present for no more than one hour) or if you wish to have a rehearsal in the presence of a Registrar. These additional fees are set out in the Fees Orders below, although in practice couples do not normally request these options and therefore the amount shown would be the total cost in the vast majority of cases.
			 <br>
			 <h3>Civil Registry or registration office</h3>
			 Registration or ceremony in the presence of a Registrar at the <u>Civil Registry</u> or a <u>registration office:</u>
			 <br><br>
			 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>·</b>&nbsp;Monday to Friday; 9.30 a.m. to 4.30 p.m.: Rs 190.00
			 <br>
			 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>·</b>&nbsp;Saturday; 9.30 a.m. to 4.00 p.m.: Rs 230.00
			 <br>
			 <h3>Approved Place (the venue having 3 year Approved Place status)</h3>
			 Registration or ceremony in the presence of a Registrar at a place, aircraft (within Manx airspace), vessel (within Manx territorial waters) or vehicle <u>granted 3 year Approved Place status:</u>
			 <br><br>
			 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>·</b>&nbsp;Monday to Friday, 9.30 a.m. to 4.30 p.m.: Rs 260.00
			<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>·</b>&nbsp;Saturday, 9.30 a.m. to 4.00 p.m.: Rs 300.00
			<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>·</b>&nbsp;At any other time or on a bank holiday: Rs 400.00
			<br>
			<h3>Approved Place (with consent of the owner and the Chief Registrar)*</h3>
			Registration or ceremony in the presence of a Registrar at a place, aircraft (within Manx airspace), vessel (within Manx territorial waters) or vehicle <u>not granted 3 year Approved Place status:</u>
			<br><br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>·</b>&nbsp;Monday to Friday, 9.30 a.m. to 4.30 p.m.: Rs 470.00
			<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>·</b>&nbsp;Saturday, 9.30 a.m. to 4.00 p.m.: Rs 510.00
			<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>·</b>&nbsp;At any other time or on a bank holiday: Rs 610.00
			<br><br>
			* The fees are higher as a representative of the General Registry must inspect the place as to its suitability before you can proceed and formalise any arrangements.
			
			
			
			
			
			
			 </font>
		</div>
	</div>
	<!-- footer area-->
	<div class="footer">
		<p>&copy; civil registration system 2014, All rights are reserved.</p>
	</div>
</body>
</html>