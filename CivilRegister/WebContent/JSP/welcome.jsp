<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Civil Registry System of India</title>

</head>
<link href="/CivilRegister/CCC_files/style.css" rel="stylesheet" type="text/css">
<body>
	<div id="wrapper" style="height: 800px">
		<!-- header bar-->
		<div id="header">
			<div id="headertop">
				<span class="left"><%=new SimpleDateFormat("E , dd MMM yyyy HH:mm:ss").format(new Date())%></span>
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
     <br><br><br><br>
     <img style="float: right;" src="/CivilRegister/images/unit_logo.gif"/>
 
     <font face="arial, helvetica, sans-serif" style="font-size: 14px;">
     The Civil Registration Management System (CRMS) has been by developed by NIC (National Informatics Center) for the registration of three vital events i.e: Birth, Death and Marriage. The scope of NIC is to automate all the local governments in a country and provide computerized registration and certification issuance of the vital events. The system provides up-to-date status reporting facilities for selected events. NIC has successfully developed and implemented CRMS for India at the grass-root level, with online, web based connectivity for provisioning of monitoring facilities to<br> designated Government officials. 
    
  
    
     </font>
     </div>
</div>
       <!-- footer area-->
     <div class="footer">
     <p>&copy; civil registration system 2014, All rights are reserved.</p>
     </div>
</body>
</html>