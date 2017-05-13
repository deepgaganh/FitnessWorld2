<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags" prefix="url"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>

	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="home"><img
				src="resources/images/logo 500 by 250.png" class="img-responsive"></a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-right">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="login"><span class="glyphicon glyphicon-user"></span>
							Sign Up</a></li>
					<li><a href="sign_up"><span
							class="glyphicon glyphicon-log-in"></span>Login</a></li>
				</ul>
				</br>
				</br>
				</br>
				</br>
				</br>
				</br>
				<li class="active"><a href="home">Home</a></li>
				<li><a href="about">About Us</a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown">Muscle Management<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="whey">Whey Protein</a></li>
						<li><a href="isolated">Isolated Protein</a></li>
						<li><a href="fat">Fat Cutters</a></li>
						<li><a href="pre">Pre Workout</a></li>
					</ul></li>
				<url:url value="admin/product/productform" var="url"></url:url>
				<li><a href="${url }">Add New Product</a></li>
				<url:url value="/all/product/productlist" var="url1"></url:url>
				<li><a href="${url1 }">Browse All Products</a></li>
				<li><a href="gym">Gym Accessories</a></li>
				<li><a href="contact">Contact Us</a></li>

			</ul>

		</div>
	</div>
	</nav>


</body>
</html>