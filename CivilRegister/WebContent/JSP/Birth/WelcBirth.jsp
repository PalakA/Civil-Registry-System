<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Register Birth</title>
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
    <b>Registering the birth of your child</b></font>
    <br>
    <br><font face="arial, helvetica, sans-serif" style="font-size: 14px;">
    Births in India must be registered within 42 days from the date of the birth.Section 3(3) of the Civil Registration Act 1984 (as amended), sets out the true legal position in relation to persons qualified to give information concerning a birth. 
    <br><br>The persons, known as qualified informants, are as follows:-
  <br> <br>&nbsp; - &nbsp;The father and mother of the child
  <br>&nbsp; - &nbsp;The occupier of the house in which the child was, to the knowledge of that occupier, born
    <br>&nbsp; - &nbsp;Any person present at the birth
 <br>&nbsp; - &nbsp;Any person having charge of the child
    <br>
    <br>Please bear in mind that there is a legal obligation to register a birth within 42 days and by failing to do this, a qualified informant may be quilty of an offence and liable on summary conviction to a fine not exceeding Rs 1,000.
     <br><br>
     To Add a new Birth <a href="/CivilRegister/JSP/Birth/AddBirth.jsp">Register Birth</a>
     </font>
     </div>
</div>
       <!-- footer area-->
     <div class="footer">
     <p>&copy; civil registration system 2014, All rights are reserved.</p>
     </div>
</body>
</html>