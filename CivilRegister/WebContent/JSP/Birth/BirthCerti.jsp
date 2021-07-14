<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="civil.UserBirth"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Birth Certificate</title>
<style type="text/css">
.double-border {
	border: 10px solid #FF9900;
	padding: 2em;
	width: 45em;
	height: 23em;
	position: relative;
}

.double-border:before {
	background: none;
	border: 7px solid #009900;
	content: "";
	display: block;
	position: absolute;
	top: 4px;
	left: 4px;
	right: 4px;
	bottom: 4px;
	pointer-events: none;
}
@media print
{    
    .no-print, .no-print *
    {
        display: none !important;
    }
}
</style>
</head>
<body>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class='no-print' href="javascript:window.print();">Print</a>

	<%
		List<UserBirth> list = (List<UserBirth>) request.getAttribute("users");
		for (UserBirth user1 : list) {
	%>
	<br>
	<br>
	<div class="double-border">
	<font face="arial, helvetica, sans-serif" style="font-size: 14px;">
		<center>
		<img style="float: right;" src="/CivilRegister/images/d.jpg" />
			<img src="/CivilRegister/images/birth-certificate.jpg" />
			
		</center>

		<br> <br>
		<center>
			This is to Certify that<br><br>
			<font face="Berlin Sans FB" style="font-size: 20px;">&nbsp;<i><%=user1.getFirstName()%></i></font></center>
		<br><br><br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sex:&nbsp;<font face="Berlin Sans FB" style="font-size: 18px;"><u>&nbsp;<%=user1.getSex()%>&nbsp;&nbsp;</u></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;s/d/o&nbsp;&nbsp;&nbsp;Mrs.&nbsp;<u><font face="Berlin Sans FB" style="font-size: 18px;">&nbsp;&nbsp;&nbsp;&nbsp;<%=user1.getMotherName()%>&nbsp;&nbsp;&nbsp;</font></u>&nbsp;&nbsp;and&nbsp;&nbsp;&nbsp;&nbsp;Mr.&nbsp;<u><font face="Berlin Sans FB" style="font-size: 18px;">&nbsp;&nbsp;&nbsp;&nbsp;<%=user1.getFatherName()%>&nbsp;&nbsp;&nbsp;</font></u>
		<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Address:&nbsp;&nbsp;&nbsp;&nbsp;<u><font face="Berlin Sans FB" style="font-size: 18px;">&nbsp;&nbsp;&nbsp;&nbsp;<%=user1.getAddress()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Religion:&nbsp;&nbsp;&nbsp;&nbsp;<u><font face="Berlin Sans FB" style="font-size: 18px;">&nbsp;&nbsp;&nbsp;&nbsp;<%=user1.getReligion()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></u>
		<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;was born on&nbsp;&nbsp;&nbsp;&nbsp;<u><font face="Berlin Sans FB" style="font-size: 18px;">&nbsp;&nbsp;&nbsp;&nbsp;<%=user1.getDateOfBirth()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></u>&nbsp;&nbsp;&nbsp;&nbsp;at: &nbsp;<u><font face="Berlin Sans FB" style="font-size: 18px;">&nbsp;&nbsp;<%=user1.getHospital()%>&nbsp;&nbsp;&nbsp;</font><font face="arial, helvetica, sans-serif" style="font-size: 10px;">(hospital)</font>&nbsp;&nbsp;&nbsp;</u>
		&nbsp;&nbsp;&nbsp;&nbsp;
		<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;place:&nbsp;<u><font face="Berlin Sans FB" style="font-size: 18px;">&nbsp;&nbsp;<%=user1.getPlaceOfBirth()%>&nbsp;&nbsp;&nbsp;</font><font face="arial, helvetica, sans-serif" style="font-size: 10px;">(city)</font>&nbsp;&nbsp;&nbsp;</u>
<br><Br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="/CivilRegister/images/mark.jpg" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="/CivilRegister/images/sig.jpg" />

</font></div>
<%
	}
%>
</body>
</html>