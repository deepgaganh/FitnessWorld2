<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ include file="header.jsp" %>
	<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body>
</br>
	<div class="container-fluid">

		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
				<li data-target="#myCarousel" data-slide-to="4"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active">
					<img
						src="http://www.biotechnutrition.co.za/images/new/Whey-Banner.jpg"
						alt="Whey Protein" style="width: 100%;">
				</div>

				<div class="item">
					<img
						src="http://biotechsportsnutrition.com/images/new/Allproducts-Banner.jpg"
						alt="Isolate Protein" style="width: 100%;">
				</div>

				<div class="item">
					<img
						src="http://www.biotechnutrition.co.za/images/new/Creatine-Banner.jpg"
						alt="Creatine" style="width: 100%;">
				</div>

				<div class="item">
					<img src="http://biotechnutrition.co.za/images/BCAA-Banner.jpg"
						alt="Fat Burner" style="width: 100%;">
				</div>

				<div class="item">
					<img src="resources/images/banner2.jpg" alt="Gym Accessories"
						width="100%">
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</div>
	
</br>
</body>
<%@ include file="footer.jsp"%>
</html>
