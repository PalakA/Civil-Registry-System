<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Details Not Found</title>
</head>
<link href="/CivilRegister/CCC_files/style.css" rel="stylesheet"
	type="text/css">
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
			<br><br><br><br><br><br>
			<center>
				<font size="6" face=Candara> <b>Record Not Found ..!!!!</b><br>
				<br>
				</font>
			</center>
			<table align="center">
				<tr>
					<td><font face="Lucida Bright"><a href="/CivilRegister/JSP/Registry.jsp" ><button>Home</button> </a>
					</font></td>
					<td><font face="Lucida Bright">
						<a href="/CivilRegister/JSP/Birth/SearchBirth.jsp" ><button>Back</button> </a> </font></td>
				</tr>
			</table>
		</div>
	</div>
	<!-- footer area-->
	<div class="footer">
		<p>&copy; civil registration system 2014, All rights are reserved.</p>
	</div>
</body>
</html>