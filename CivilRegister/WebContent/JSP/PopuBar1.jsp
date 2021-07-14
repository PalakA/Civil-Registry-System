<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registered Deaths</title>
<script src='/CivilRegister/CCC_files/Chart.js'></script>
<style>
canvas {
	
}
</style>
</head>
<body>

	<font face="arial, helvetica, sans-serif" style="font-size: 12px;">
		<center>
			<b>Number of Registered Deaths 1984-2013 (In Lakhs)</b>
		</center>
		<br> <canvas id="canvas" height="350" width="750"></canvas>
<script>

		var barChartData = {
			labels : ["","1984","1985","1986","1987","1988","1989","1990","1991","1992","1993","1994","1995","1996","1997","1998","1999","2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2010","2011","2012","2013"],
			datasets : [
				{
					fillColor : "red",
					strokeColor : "rgba(220,220,220,1)",
					data : [27,25,23,26,25,30,31,33,31.5,37,38,39.5,38.5,40,36,32,39,35,37,39,40,45,49.5,48,49,55,60,65,67,67]
				}
		]
		}

	var myLine = new Chart(document.getElementById("canvas").getContext("2d")).Bar(barChartData);
	
	</script>
	</font>
</body>
</html>