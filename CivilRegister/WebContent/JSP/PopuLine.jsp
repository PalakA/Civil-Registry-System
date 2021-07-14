<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Population of States</title>
<script src='/CivilRegister/CCC_files/Chart.js'></script>
<style>
canvas {
	
}
</style>
</head>
<body>

	<font face="arial, helvetica, sans-serif" style="font-size: 12px;">
		<center>
			<b>Population (In '00000)</b>
		</center>
		<br> <canvas id="canvas" height="450" width="600"></canvas> <script>
			var lineChartData = {
				labels : [ "Assam", "Bihar", "Chhattisgarh", "Goa", "Gujarat",
						"Haryana", "Jammu & Kashmir", "Karnataka", "Kerela",
						"Maharashtra", "Punjab", "Rajasthan", "Tamil Nadu",
						"Uttar Pradesh", "Delhi", "Uttrakhand", "Daman & Diu",
						"Sikkim", "West Bengal" ],
				datasets : [ {
					fillColor : "rgba(151,187,205,0.5)",
					strokeColor : "rgba(151,187,205,1)",
					pointColor : "rgba(151,187,205,1)",
					pointStrokeColor : "#fff",
					data : [ 303, 968, 240, 173, 585, 251, 116, 590, 344, 1116,
							274, 671, 1984, 181, 984, 263, 395, 608, 900 ]
				}

				]

			}

			var myLine = new Chart(document.getElementById("canvas")
					.getContext("2d")).Line(lineChartData);
		</script>
</body>
</html>