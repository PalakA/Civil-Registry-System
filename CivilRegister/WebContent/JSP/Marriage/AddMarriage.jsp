<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Register Marriage</title>
<link href="/CivilRegister/CCC_files/style.css" rel="stylesheet"
	type="text/css">
<link href="/CivilRegister/CCC_files/Date.css" rel="stylesheet"
	type="text/css">
<link href="/CivilRegister/CCC_files/FieldSize.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="/CivilRegister/CCC_files/required.css">
</head>
<body>
	<div id="wrapper" style="height:1100px">
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
		<form action="../../AddMarriage" method="post">
			<br> <br>
			<center>
				<font size="6" face=Candara> <b>Marriage
						Registration Form</b><br> <br>
				</font>
			</center>
			<table align="center" cellspacing="12">
				<tr>
					<td><b><font face="Tahoma">Details of Husband<br></font></b></td>
				</tr>
				<tr>
					<td><font face="Lucida Bright">Full Name :</font></td>
					<td><div class="textfield">
							<input type="text" name=husbandname
								oninvalid="setCustomValidity('Enter Full Name')"
								onchange="try{setCustomValidity('')}catch(e){}" type="text"
								required pattern="[a-z|A-Z| ]*">
						</div></td>
				</tr>
				<tr>
					<td><font face="Lucida Bright">Religion :</font></td>
					<td><div class="textfield">
							<input type="text" name=religion
								oninvalid="setCustomValidity('Enter Religion')"
								onchange="try{setCustomValidity('')}catch(e){}" type="text"
								required pattern="[a-z|A-Z]*">
						</div></td>
				</tr>
				<tr>
					<td><font face="Lucida Bright">Date of Birth :</font></td>
					<td><div id="date1" class="datefield">
							<input id="day" type="tel" maxlength="2" placeholder="DD"
								name="day" pattern="0[1-9]|1[0-9]|2[0-9]|3[01]"
								oninvalid="setCustomValidity('Enter Valid Date')"
								onchange="try{setCustomValidity('')}catch(e){}"> / <input
								id="month" type="tel" maxlength="2" placeholder="MM"
								name="month" pattern="0[1-9]|1[012]"
								oninvalid="setCustomValidity('Enter Valid Month')"
								onchange="try{setCustomValidity('')}catch(e){}">/ <input
								id="year" type="tel" maxlength="4" placeholder="YYYY"
								name="year"
								oninvalid="setCustomValidity('Enter Valid Year')"
								onchange="try{setCustomValidity('')}catch(e){}">
						</div></td>
				</tr>
				<tr>
					<td><font face="Lucida Bright">Address :</font></td>
					<td><div class="textfield">
							<input type="text" name=address
								oninvalid="setCustomValidity('Enter Address')" required>
						</div></td>
				</tr>
				<tr>
					<td><font face="Lucida Bright">Contact No. :</font></td>
					<td><div class="textfield">
							<input type="text" name=contact
								oninvalid="setCustomValidity('Enter Valid Contact No.')"
								onchange="try{setCustomValidity('')}catch(e){}" type="text"
								required maxlength="10">
						</div></td>
				</tr>
				<tr>
					<td><font face="Lucida Bright">Place of Marriage :</font></td>
					<td><div class="textfield">
							<input type="text" name=placemarriage
								oninvalid="setCustomValidity('Enter Place of Marriage')"
								onchange="try{setCustomValidity('')}catch(e){}" type="text"
								required pattern="[a-z|A-Z]*">
						</div></td>
				</tr>
				<tr>
					<td><font face="Lucida Bright">Date of Marriage :</font></td>
					<td><div id="date1" class="datefield">
							<input id="day" type="tel" maxlength="2" placeholder="DD"
								name="day1" pattern="0[1-9]|1[0-9]|2[0-9]|3[01]"
								oninvalid="setCustomValidity('Enter Valid Date')"
								onchange="try{setCustomValidity('')}catch(e){}"> / <input
								id="month" type="tel" maxlength="2" placeholder="MM"
								name="month1" pattern="0[1-9]|1[012]"
								oninvalid="setCustomValidity('Enter Valid Month')"
								onchange="try{setCustomValidity('')}catch(e){}">/ <input
								id="year" type="tel" maxlength="4" placeholder="YYYY"
								name="year1"
								oninvalid="setCustomValidity('Enter Valid Year')"
								onchange="try{setCustomValidity('')}catch(e){}">
						</div></td>
				</tr>
				<tr>
					<td><font face="Lucida Bright">Profession :</font></td>
					<td><div class="textfield">
							<input type="text" name=profession
								oninvalid="setCustomValidity('Enter Profession')"
								onchange="try{setCustomValidity('')}catch(e){}" type="text"
								required pattern="[a-z|A-Z]*">
						</div></td>
				</tr>
				<tr>
					<td><b><font face="Tahoma"><br>Details of Wife</font></b></td>
				</tr>
				<tr>
					<td><font face="Lucida Bright">Full Name :</font></td>
					<td><div class="textfield">
							<input type="text" name=wifename
								oninvalid="setCustomValidity('Enter Full Name')"
								onchange="try{setCustomValidity('')}catch(e){}" type="text"
								required pattern="[a-z|A-Z| ]*">
						</div></td>
				</tr>
				<tr>
					<td><font face="Lucida Bright">Date of Birth :</font></td>
					<td><div id="date1" class="datefield">
							<input id="day" type="tel" maxlength="2" placeholder="DD"
								name="day2" pattern="0[1-9]|1[0-9]|2[0-9]|3[01]"
								oninvalid="setCustomValidity('Enter Valid Date')"
								onchange="try{setCustomValidity('')}catch(e){}"> / <input
								id="month" type="tel" maxlength="2" placeholder="MM"
								name="month2" pattern="0[1-9]|1[012]"
								oninvalid="setCustomValidity('Enter Valid Month')"
								onchange="try{setCustomValidity('')}catch(e){}">/ <input
								id="year" type="tel" maxlength="4" placeholder="YYYY"
								name="year2"
								oninvalid="setCustomValidity('Enter Valid Year')"
								onchange="try{setCustomValidity('')}catch(e){}">
						</div></td>
				</tr>
				<tr>
					<td><font face="Lucida Bright">Contact No. :</font></td>
					<td><div class="textfield">
							<input type="text" name=wifecontact
								oninvalid="setCustomValidity('Enter Valid Contact No.')"
								onchange="try{setCustomValidity('')}catch(e){}" type="text"
								required maxlength="10">
						</div></td>
				</tr>
				<tr>
					<td><font face="Lucida Bright">Profession :</font></td>
					<td><div class="textfield">
							<input type="text" name=wifeprofession
								oninvalid="setCustomValidity('Enter Profession')"
								onchange="try{setCustomValidity('')}catch(e){}" type="text"
								required pattern="[a-z|A-Z]*">
						</div></td>
				</tr>
				<tr></tr>
				<tr>
					<td></td>
					<td><div class="submit">
							<font face="Lucida Bright"> <input type="submit" name=Add
								value="ADD">
							</font>
						</div></td>
				</tr>
			</table>
		</form>
			</div></div>
		<!-- footer area-->
		<div class="footer">
			<p>© civil registration system 2014, All rights are reserved.</p>
		</div>
</body>
</html>