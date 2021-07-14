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
<style type="text/css" media="screen">
ul.mixed {
	list-style-type: none;
}

ul.mixed li:before {
	content: "\2022";
	padding-right: 0.5em;
}

li.pink:before {
	color: #FF1493;
	font-size: 25px;
}

li.seagreen:before {
	color: #46BFBD;
	font-size: 25px
}

li.orange:before {
	color: #FDB45C;
	font-size: 25px
}

li.yellow:before {
	color: #FFFF00;
	font-size: 25px
}

li.black:before {
	color: #000000;
	font-size: 25px
}

li.turquoise:before {
	color: #008080;
	font-size: 25px
}

li.lightpink:before {
	color: #EE82EE;
	font-size: 25px
}

li.coral:before {
	color: #FF8153;
	font-size: 25px
}

li.mustard:before {
	color: #FFEA88;
	font-size: 25px
}

li.grey:before {
	color: 4D5360;
	font-size: 25px
}

li.green:before {
	color: #ADFF2F;
	font-size: 25px
}

li.mustard:before {
	color: #FFEA88;
	font-size: 25px
}

li.white:before {
	color: #F0F8FF;
	font-size: 25px
}

li.skinny:before {
	color: #FAEBD7;
	font-size: 25px
}

li.blue:before {
	color: #00FFFF;
	font-size: 25px
}

li.brown:before {
	color: #D2691E;
	font-size: 25px
}

li.darkblue:before {
	color: #00008B;
	font-size: 25px
}

li.purple:before {
	color: #8B008B;
	font-size: 25px
}

li.darkgreen:before {
	color: #ACC26D;
	font-size: 25px
}
</style>
</head>
<body>
	<canvas id="canvas" height="400" width="400"></canvas>
	<font face="arial, helvetica, sans-serif" style="font-size: 12px;">
		<table>
			<tr>
				<td>
					<ul class="mixed">
						<li class="pink">Uttar Pradesh-20%</li>
						<li class="seagreen">Maharashtra-16%</li>
						<li class="orange">Bihar-25%</li>
						<li class="yellow">West Bengal-14%</li>
						<li class="black">Andhra Pradesh-11%</li>
						<li class="turquoise">Madhya Pradesh-20%</li>
						<li class="lightpink">Tamil Nadu-15%</li>
						<li class="coral">Rajasthan-21%</li>
						<li class="mustard">Karnataka-16%</li>
					</ul>
				</td>
				<td>
					<ul class="mixed">
						<li class="grey">Gujarat-20%</li>
						<li class="green">Odisha-14%</li>
						<li class="white">Kerala-5%</li>
						<li class="skinny">Jharkhand-22%</li>
						<li class="blue">Assam-17%</li>
						<li class="brown">Punjab-14%</li>
						<li class="darkblue">Chhattisgarh-23%</li>
						<li class="purple">Haryana-20%</li>
						<li class="darkgreen">Jammu and Kashmir-14%</li>
					</ul>
				</td>
			</tr>
		</table>
	</font>
	
	<script>

		var doughnutData = [ {
			value : 20,
			color : "#FF1493"
		}, {
			value : 16,
			color : "#46BFBD"
		}, {
			value : 25,
			color : "#FDB45C"
		}, {
			value : 14,
			color : "#FFFF00"
		}, {
			value : 11,
			color : "#000000"
		}, {
			value : 20,
			color : "#008080"
		}, {
			value : 15,
			color : "#EE82EE"
		}, {
			value : 21,
			color : "#FF8153"
		}, {
			value : 16,
			color : "#FFEA88"
		}, {
			value : 20,
			color : "#4D5360"
		}, {
			value : 14,
			color : "#ADFF2F"
		}, {
			value : 5,
			color : "#F0F8FF"
		}, {
			value : 22,
			color : "#FAEBD7"
		}, {
			value : 17,
			color : "#00FFFF"
		}, {
			value : 14,
			color : "#D2691E"
		}, {
			value : 23,
			color : "#00008B"
		}, {
			value : 20,
			color : "#8B008B"
		}, {
			value : 14,
			color : "#ACC26D"
		}

		];

		var myDoughnut = new Chart(document.getElementById("canvas")
				.getContext("2d")).Doughnut(doughnutData);
	</script>

</body>
</html>