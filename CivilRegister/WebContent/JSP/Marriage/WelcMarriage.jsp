<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Register Marriage</title>
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
    <b>Registering Marriage</b></font>
    <br>
    <br><font face="arial, helvetica, sans-serif" style="font-size: 14px;">
    A marriage which has already been solemnised can be registered either under the Hindu Marriage Act, 1955 or under the Special Marriage Act, 1954. The Hindu Marriage Act is applicable in cases where both husband and wife are Hindus, Buddhists, Jains or Sikhs or where they have converted into any of these religions. Where either of the husband or wife or both are not Hindus, Buddhists, Jains or Sikhs the marriage is registered under the Special Marriage Act, 1954.
    <br><br>A Marriage Certificate is the proof of registration of a marriage. The need for a Marriage Certificate arises in case you need to prove that you are legally married to someone, for purposes like obtaining a passport, changing your maiden name, etc. 
  <br><br>To be eligible for marriage, the minimum age limit is 21 for males and 18 for females. 
   <br><br>
     To Register a marriage <a href="/CivilRegister/JSP/Marriage/AddMarriage.jsp">Register</a>
     </font>
     </div>
</div>
       <!-- footer area-->
     <div class="footer">
     <p>&copy; civil registration system 2014, All rights are reserved.</p>
     </div>
</body>
</html>