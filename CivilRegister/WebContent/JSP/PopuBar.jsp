<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registered Live Births</title>
<script src='/CivilRegister/CCC_files/Chart.js'></script>
<style>
canvas {
	
}
</style>
</head>
<body>

	<font face="arial, helvetica, sans-serif" style="font-size: 12px;">
		<center>
			<b>Number of Registered Live Births 1984-2013 (In Lakhs)</b>
		</center>
		<br> <canvas id="canvas" height="350" width="750"></canvas>
<script>

		var barChartData = {
			labels : ["1984","1985","1986","1987","1988","1989","1990","1991","1992","1993","1994","1995","1996","1997","1998","1999","2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2010","2011","2012","2013"],
			datasets : [
				{
					fillColor : "rgba(220,220,220,1)",
					strokeColor : "rgba(220,220,220,1)",
					data : [90,85,70,95,97,100,110,118,120,122,125,127,130,133,140,115,116,117,120,125,160,155,157,162,180,185,200,215,220]
				}
		]
		}

	var myLine = new Chart(document.getElementById("canvas").getContext("2d")).Bar(barChartData);
	
	</script>
</body>
</html>