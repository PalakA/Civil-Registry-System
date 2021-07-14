<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Register Death</title>
</head>
<link href="/CivilRegister/CCC_files/style.css" rel="stylesheet" type="text/css">
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
     
     <br><br><br><br>
     <font face="Candara" size="5">
    <b>Registering the Death of Deceased</b></font>
    <br>
    <br><font face="arial, helvetica, sans-serif" style="font-size: 14px;">
    Deaths in India must be registered within 5 days of the date of death. 
    <br><br>One of the following persons has a legal obligation to register the death:-
  <br> <br>&nbsp; - &nbsp; A relative of the deceased
  <br>&nbsp; - &nbsp;A person present at the death
    <br>&nbsp; - &nbsp;A person causing disposal of the body (not the funeral director)
 <br>&nbsp; - &nbsp;In certain circumstances, such as the deceased having no relatives or nobody being present at the death, an administrator of an institution (e.g. the manager of a residential home)
    <br>
    <br>It is important that the information recorded in the Register of Deaths is correct. If a mistake is discovered after registration, for example in the spelling of the deceased's name, it will put you to some trouble to have a correction made.
     <br><br>
     To Register Death &nbsp;<a href="/CivilRegister/JSP/Death/AddDeath.jsp">Register</a>
     </font>
     </div>
</div>
       <!-- footer area-->
     <div class="footer">
     <p>&copy; civil registration system 2014, All rights are reserved.</p>
     </div>
</body>
</html>