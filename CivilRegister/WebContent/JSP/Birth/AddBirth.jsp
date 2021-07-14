<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Register Birth</title>
<link href="/CivilRegister/CCC_files/style.css" rel="stylesheet"
	type="text/css">
<link href="/CivilRegister/CCC_files/Date.css" rel="stylesheet"
	type="text/css">
<link href="/CivilRegister/CCC_files/FieldSize.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="/CivilRegister/CCC_files/required.css">
</head>
<body>
	<div id="wrapper" style="height:1000px">
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
		<form action="../../AddbirthServ" method="post">
			<center>
				<font size="6" face="Candara"> <br> <b>Birth
						Registration Form</b><br> <br>
				</font>
			</center>
			<table align="center" cellspacing="12">
				<tbody>
					<tr>
						<td><font face="Lucida Bright">Child's Name :</font></td>
						<td>
							<div class="textfield">
								<input id="fname" oninvalid="setCustomValidity('Enter Name')"
									onchange="try{setCustomValidity('')}catch(e){}" type="text"
									name="fname" required pattern="[a-z|A-Z| ]*">
							</div>
						</td>
					</tr>
					<tr>
						<td><font face="Lucida Bright">Sex :</font></td>
						<td><font face="Lucida Bright">Male </font> <input
							type="radio" value="male" name="sex" checked="checked"></td>
						<td><font face="Lucida Bright">Female </font> <input
							type="radio" value="female" name="sex"></td>
					</tr>
					<tr>
						<td><font face="Lucida Bright">Place of Birth :</font></td>
						<td><div class="textfield">
								<input type="text"
									oninvalid="setCustomValidity('Enter Birth Place')"
									onchange="try{setCustomValidity('')}catch(e){}" name="place"
									required pattern="[a-z|A-Z]*">
							</div></td>
					</tr>
					<tr>
						<td>Date of Birth:</td>
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
						<td><font face="Lucida Bright">Time :</font></td>
						<td><div id="day" class="datefield">
								<input id="hour" type="tel" maxlength="2" placeholder="HH"
									name="hour"> <b>:</b> <input id="min" type="tel"
									maxlength="2" placeholder="MM" name="min"><b>:</b> <input
									id="sec" type="tel" maxlength="2" placeholder="SS" name="sec">
							</div></td>
					</tr>
					<tr>
						<td><font face="Lucida Bright">Name of Hospital/Clinic
								:</font></td>
						<td><div class="textfield">
								<input type="text"
									oninvalid="setCustomValidity('Enter Hospital Name')"
									onchange="try{setCustomValidity('')}catch(e){}" name="hospital"
									required pattern="[a-z|A-Z| ]*">
							</div></td>
					</tr>
					<tr>
						<td><font face="Lucida Bright">Father's Name :</font></td>
						<td><div class="textfield">
								<input type="text"
									oninvalid="setCustomValidity('Enter Father's Name')"
									onchange="try{setCustomValidity('')}catch(e){}" name="father"
									required pattern="[a-z|A-Z| ]*">
							</div></td>
					</tr>
					<tr>
						<td><font face="Lucida Bright">Mother's Name :</font></td>
						<td><div class="textfield">
								<input type="text" name="mother">
							</div></td>
					</tr>
					<tr>
						<td><font face="Lucida Bright">Address :</font></td>
						<td><div class="textfield">
								<input type="text"
									oninvalid="setCustomValidity('Enter Address')"
									onchange="try{setCustomValidity('')}catch(e){}" name="address"
									required>
							</div></td>
					</tr>
					<tr>
						<td><font face="Lucida Bright">Contact No.</font></td>
						<td><div class="textfield">
								<input type="text"
									oninvalid="setCustomValidity('Enter Valid Contact No.')"
									onchange="try{setCustomValidity('')}catch(e){}" name="phone"
									required maxlength="10">
							</div></td>
					</tr>
					<tr>
						<td><font face="Lucida Bright">Religion :</font></td>
						<td><div class="textfield">
								<input type="text" name="religion">
							</div></td>
					</tr>
					<tr>
						<td><font face="Lucida Bright">In Relation to the
								Child :</font></td>
						<td><div class="textfield">
								<input type="text"
									oninvalid="setCustomValidity('Enter your relation with Child for eg. (Father,Mother,Uncle etc.)')"
									onchange="try{setCustomValidity('')}catch(e){}" name="relation"
									required pattern="[a-z|A-Z]*">
							</div></td>
					</tr>
					<tr></tr>
					<tr>
						<td></td>
						<td><div class="submit">
								<font face="Lucida Bright"><input type="submit"
									name="Add" value="ADD"></font>
							</div></td>
					</tr>
				</tbody>
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