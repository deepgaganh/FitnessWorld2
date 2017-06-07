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
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="resources/css/login.css" />

</head>
<body>

	<div class="row">

		<div>
			<div class="row">

				<div class="form_bg">
					<form action="<c:url value="j_spring_security_check"></c:url>"
						method="post">
						
			
						<url:url value="resources/images/logo 500 by 250.png" var="url">
						</url:url>
						<url:url value="/home" var="url2"></url:url>
						<a href="${url2}"><img src="${url}" class="img-responsive" alt="Fitness World"
							width="350px" height="175"></a>
						<h2 class="text-center">Login Page</h2>
						<br />
						<div class="form-group">
							<input type="text" class="form-control" 
								placeholder="User Name" name="j_username">
						</div>
						<div class="form-group">
							<input type="password" class="form-control" 
								placeholder="Password" name="j_password">

						</div>
						<br />
						<div class="align-center">
							<button type="submit" class="btn btn-lg btn-primary	 btn-block"
								id="login">Login</button>
								
								
							<!-- 	Sign up -->
						<url:url value="/all/registrationform" var="url"></url:url>
						<h4 class="text-center"><a href="${url}"><span>Sign Up</span></a></h4>
						<br><h4> ${error } ${logout } ${registrationSuccess }</h4>
						
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	
		<%-- 	ENTER USERNAME AND PASSWORD
	<br> ${error } ${logout } ${registrationSuccess }
	<div class="wrapper">
	<form action="<c:url value="j_spring_security_check"></c:url>"
		method="post">
			<h2 class="form-signin-heading">Please login</h2>

		<label><b>Username</b></label> <input type="text" name="j_username"><br>
		<label><b>Password</b></label><input type="password" name="j_password"><br>

		<button type="submit">Login</button>

	</form>
</div>
 --%>
	
</body>

</html>