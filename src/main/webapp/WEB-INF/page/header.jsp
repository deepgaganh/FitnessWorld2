<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags" prefix="url"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- Angular Js -->
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>

<!-- JQuery -->
<script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
<script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>
<!-- Data Tables -->
<link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">
</head>
<body>

	<!-- Home Page Nav-Bar -->
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>

			<url:url value="/home" var="url"></url:url>
			<a class="navbar-brand" href="${url}"> <url:url
					value="http://localhost:8080/FitnessWorld2/resources/images/logo 500 by 250.png"
					var="url"></url:url> <img src="${url}" class="img-responsive"></a>
		</div>

		<!-- Collapse Nav-bar -->
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-right">
				<ul class="nav navbar-nav navbar-right">

					<c:if test="${pageContext.request.userPrincipal.name!=null }">
						<li><a href="">Welcome
								${pageContext.request.userPrincipal.name }</a></li>
					</c:if>



					<url:url value="/all/registrationform" var="url"></url:url>

					<c:if test="${pageContext.request.userPrincipal.name==null }">
						<li><a href="${url}"><span
								class="glyphicon glyphicon-log-in"></span>Sign Up</a></li>
						<url:url value="/login" var="url"></url:url>
						<li><a href="${url}"><span
								class="glyphicon glyphicon-user"></span> login</a></li>
					</c:if>

					<c:if test="${pageContext.request.userPrincipal.name!=null }">
						<li><a
							href="<c:url value="/j_spring_security_logout"></c:url>">logout</a>
						</li>
						<c:if
							test="${pageContext.request.userPrincipal.name != 'pooja'}">

							<url:url value="/cart" var="url"></url:url>
							<li><a href="${url }"> <span
									class="glyphicon glyphicon-shopping-cart"></span>
							</a></li>
						</c:if>
					</c:if>

				</ul>
				</br>
				</br>
				</br>
				</br>
				</br>
				</br>
				<!-- HOME -->
				<url:url value="/home" var="url"></url:url>
				<li class="active"><a href="${url}">Home</a></li>

				<!-- ABOUT US -->
				<url:url value="/about" var="url"></url:url>
				<li><a href="${url}">About Us</a></li>

				<!-- DropDown -->
				 <li class="dropdown"><a href="" class="dropdown-toggle"
					data-toggle="dropdown"> Select by Category<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<c:forEach var="c" items="${categories }">
							<li><a
								href="<c:url value="/all/product/productsByCategory?searchCondition=${c.name }"></c:url>">
									${c.name }</a></li>
						</c:forEach>
					</ul></li>
 

				<!-- Admin Add Product -->

				<c:if test="${pageContext.request.userPrincipal.name!=null }">
					<c:if test="${pageContext.request.userPrincipal.name == 'pooja'}">
						<url:url value="/admin/product/productform" var="url"></url:url>
						<li><a href="${url }">Add New Product</a></li>
					</c:if>

					<!-- Browse All Product -->
					<url:url value="/all/product/productlist" var="url"></url:url>
					<li><a href="${url}">Browse All Products</a></li>

					<!-- Admin Add Category -->
					<c:if test="${pageContext.request.userPrincipal.name == 'pooja'}">
						<url:url value="/admin/category/categoryform" var="url"></url:url>
						<li><a href="${url}">Add Category</a></li>
					</c:if>
					<!-- Browse All Category -->
					<url:url value="/all/category/categorylist" var="url"></url:url>
					<li><a href="${url}">Browse All Category</a></li>
				</c:if>
				
				<!-- Contact Us -->
				<url:url value="/contact" var="url"></url:url>
				<li><a href="${url}">Contact Us</a></li>

			</ul>

		</div>
	</div>
	</nav>


</body>
</html>