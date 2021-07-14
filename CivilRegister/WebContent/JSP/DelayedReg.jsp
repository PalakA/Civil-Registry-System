<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Registration Clock</title>
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
			<br><br> <font size="5" face="Calibri "> <b>Graphical Representation</b></font><br><font
				face="arial, helvetica, sans-serif" style="font-size: 14px;">
				
				<img style="float: right;width:350px;height: 350px;" src="/CivilRegister/images/india_flag_map.jpg" /><br><br><br><br><br><br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;~ <a href="/CivilRegister/JSP/Population.jsp" onClick="javascript:void window.open('/CivilRegister/JSP/Population.jsp','','width=500,height=500,toolbar=0,menubar=0,location=0,status=1,scrollbars=1,resizable=1,left=100,top=100');return false;">
				Population of States </a>
				<br>
    			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;~ <a href="/CivilRegister/JSP/PopuLine.jsp" onClick="javascript:void window.open('/CivilRegister/JSP/PopuLine.jsp','','width=600,height=500,toolbar=0,menubar=0,location=0,status=1,scrollbars=1,resizable=1,left=100,top=100');return false;">
				Population of States (In Numbers) </a>
				<br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;~ <a href="/CivilRegister/JSP/PopuBar.jsp" onClick="javascript:void window.open('/CivilRegister/JSP/PopuBar.jsp','','width=750,height=500,toolbar=0,menubar=0,location=0,status=1,scrollbars=1,resizable=1,left=100,top=100');return false;">
				Number of Registered Live Births 1984-2013</a> 
				<br>
 				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;~ <a href="/CivilRegister/JSP/PopuBar1.jsp" onClick="javascript:void window.open('/CivilRegister/JSP/PopuBar1.jsp','','width=800,height=500,toolbar=0,menubar=0,location=0,status=1,scrollbars=1,resizable=1,left=100,top=100');return false;">
				Number of Registered Deaths 1984-2013</a> 
 			
 				
			</font>
		</div>
	</div>
	<!-- footer area-->
	<div class="footer">
		<p>&copy; civil registration system 2014, All rights are reserved.</p>
	</div>
</body>
</html>