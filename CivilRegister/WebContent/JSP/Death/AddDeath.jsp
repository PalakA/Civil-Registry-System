<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Register Death</title>
<link href="/CivilRegister/CCC_files/style.css" rel="stylesheet"
	type="text/css">
<link href="/CivilRegister/CCC_files/Date.css" rel="stylesheet"
	type="text/css">
<link href="/CivilRegister/CCC_files/FieldSize.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="/CivilRegister/CCC_files/required.css">
<script src="/CivilRegister/CCC_files/jquery-1.11.0.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		function checkradiobox() {
			var radio = $("input[name='status']:checked").val();
			$('#spousename, #spouseadd, #spousephone').attr('disabled', true);
			if (radio == "Married") {
				$('#spousename').attr('disabled', false);
				$("#spousename").focus();
				$('#spouseadd').attr('disabled', false);
				$("#spouseadd").focus();
				$('#spousephone').attr('disabled', false);
				$("#spousephone").focus();
			}
			if (radio == "Never Married") {
				$('#spousename').attr('disabled', true);
				$("#spousename").focus();
				$('#spouseadd').attr('disabled', true);
				$("#spouseadd").focus();
				$('#spousephone').attr('disabled', true);
				$("#spousephone").focus();
			} else if (radio == "Divorced") {
				$('#spousename').attr('disabled', true);
				$("#spousename").focus();
				$('#spouseadd').attr('disabled', true);
				$("#spouseadd").focus();
				$('#spousephone').attr('disabled', true);
				$("#spousephone").focus();
			}
		}
		$("#Married, #never ,#divorced").change(function() {
			checkradiobox();
		});
		checkradiobox();
	});
</script>
</head>
<body>
	<div id="wrapper" style="height:1050px">
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
		<form action="../../AddDeathServ" method="post">
			<br> <br>
			<center>
				<font size="6" face=Candara><b>Death
						Registration Form</b><br> <br>
				</font>
			</center>
			<table align="center" cellspacing="12">
				<tr>
					<td><font face="Tahoma" size="5">Deceased Person :</font></td>
				</tr>
				<tr>
					<td><font face="Lucida Bright">Name :</font></td>
					<td><div class="textfield">
							<input type="text" name=name
								oninvalid="setCustomValidity('Enter Name')"
								onchange="try{setCustomValidity('')}catch(e){}" type="text"
								required pattern="[a-z|A-Z| ]*">
						</div></td>
				</tr>
				<tr>
					<td><font face="Lucida Bright">Sex :</font></td>
					<td><input type="radio" name=sex value="male"
						checked="checked"><font face="Lucida Bright">Male </font></td>
					<td><input type="radio" name=sex value="female"><font
						face="Lucida Bright">Female </font></td>
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
								name="year" oninvalid="setCustomValidity('Enter Valid Year')"
								onchange="try{setCustomValidity('')}catch(e){}">
						</div></td>
				</tr>
				<tr>
					<td><font face="Lucida Bright">Address :</font></td>
					<td><div class="textfield">
							<input type="text" name=adress
								oninvalid="setCustomValidity('Enter Address')"
								onchange="try{setCustomValidity('')}catch(e){}" type="text"
								required>
						</div></td>
				</tr>
				<tr>
					<td><font face="Lucida Bright">Died On :</font></td>
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
								name="year1" oninvalid="setCustomValidity('Enter Valid Year')"
								onchange="try{setCustomValidity('')}catch(e){}">
						</div></td>
				</tr>
				<tr>
					<td><font face="Lucida Bright">Place of Death :</font></td>
					<td><div class="textfield">
							<input type="text" name=place
								oninvalid="setCustomValidity('Enter Place')"
								onchange="try{setCustomValidity('')}catch(e){}" type="text"
								required pattern="[a-z|A-Z]*">
						</div></td>
				</tr>
				<tr>
					<td><font face="Lucida Bright">Cause of Death :</font></td>
					<td><div class="textfield">
							<input type="text" name=cause
								oninvalid="setCustomValidity('Enter Cause')"required >
						</div></td>
				</tr>

				<tr>
					<td><font face="Tahoma" size="5">Marriage Particulars :</font></td>
				</tr>
				<tr>
					<td><font face="Lucida Bright">Status :</font></td>
					<td><input type="radio" name=status value="Married"
						id="Married"><font face="Lucida Bright">Married <br>
							<input type="radio" name=status value="Never Married" id="never">Never
							Married <br> <input type="radio" name=status
							value="Divorced" id="divorced"> Divorced
					</font><br></td>
				</tr>
				<tr>
					<td><font face="Lucida Bright">Name of Spouse:</font></td>
					<td><div class="textfield">
							<input type="text" name=spousename id="spousename">
						</div></td>
				</tr>
				<tr>
					<td><font face="Lucida Bright">Address :</font></td>
					<td><div class="textfield">
							<input type="text" name=spouseadd id="spouseadd">
						</div></td>
				</tr>
				<tr>
					<td><font face="Lucida Bright">Contact No.</font></td>
					<td><div class="textfield">
							<input type="text" name=spousephone
								oninvalid="setCustomValidity('Enter Valid Contact No.')"
								onchange="try{setCustomValidity('')}catch(e){}" maxlength="10"
								id="spousephone">
						</div></td>
				</tr>
				<tr>
					<td></td>
					<td><div class="submit">
							<input type="submit" name=Add value="ADD">
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