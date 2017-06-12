<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link rel="stylesheet" href='resources/css/checkoutcss.css'>
<title>Shipping & Payment Info</title>
</head>
<body>
	<h3>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
		&nbsp &nbsp &nbsp &nbsp &nbsp Please confirm your Shipping and Payment
		details.</h3>
	<div class="container wrapper">
		<div class="container">

			<c:url value="/page" var="url"></c:url>
			<form:form action="${url}" modelAttribute="customere" method="post">

				<div class="form-group">
					<label for="id"></label>
					<form:hidden path="id"></form:hidden>
					<form:errors path="id" cssStyle="color:red"></form:errors>
				</div>


				<div class="form-group">
					<label for="firstname"></label>
					<form:hidden path="firstname"></form:hidden>
					<form:errors path="firstname" cssStyle="color:red"></form:errors>
				</div>
				<div class="form-group">
					<label for="lastname"></label>
					<form:hidden path="lastname"></form:hidden>
					<form:errors path="lastname" cssStyle="color:red"></form:errors>
				</div>
				<table class="table table-bordered">
					<tr>
						<td>
							<!-- <div class="form-group"> --> <label for="email">E-mail</label>
						</td>
						<td><form:input path="email"></form:input> <form:errors
								path="email" cssStyle="color:red"></form:errors> <span
							style="color: red">${duplicateEmail }</span> <!-- </div> --></td>
					</tr>
					<tr>
						<td>
							<!-- <div class="form-group"> --> <label for="phone">Phone</label>
						</td>
						<td><form:input path="phone"></form:input> <form:errors
								path="phone" cssStyle="color:red"></form:errors> <!-- </div> -->
						</td>
					</tr>
				</table>

				<div class="form-group">
					<label for="billingAddress"></label>
					<form:hidden path="billingAddress.id"></form:hidden>
					<form:errors path="billingAddress.id" cssStyle="color:red"></form:errors>
				</div>
				<table class="table table-bordered">
					<caption>Billing Address</caption>
					<tr>
						<td><label for="billingAddress.streetnumber">Street</label></td>
						<td><form:input path="billingAddress.streetnumber"></form:input>
							<form:errors path="billingAddress.streetnumber"
								cssStyle="color:red"></form:errors> <!-- </div> --></td>
					</tr>

					<tr>
						<td><label for="billingAddress.housenumber">Apartment/House
								Number</label></td>
						<td><form:input path="billingAddress.housenumber"></form:input>
							<form:errors path="billingAddress.housenumber"
								cssStyle="color:red"></form:errors> <!-- </div> --></td>
					</tr>

					<tr>
						<td><label for="billingAddress.city">City</label></td>
						<td><form:input path="billingAddress.city"></form:input> <form:errors
								path="billingAddress.city" cssStyle="color:red"></form:errors> <!-- </div> -->
						</td>
					</tr>

					<tr>
						<td><label for="billingAddress.country">Country</label></td>
						<td><form:input path="billingAddress.country"></form:input> <form:errors
								path="billingAddress.country" cssStyle="color:red"></form:errors>
							<!-- </div> --></td>
					</tr>

					<tr>
						<td><label for="billingAddress.zipcode">Zipcode</label></td>
						<td><form:input path="billingAddress.zipcode"></form:input> <form:errors
								path="billingAddress.zipcode" cssStyle="color:red"></form:errors>
						</td>
					</tr>
				</table>

				<div class="form-group">
					<label for="ShippingAddress"></label>
					<form:hidden path="ShippingAddress.id"></form:hidden>
					<form:errors path="ShippingAddress.id" cssStyle="color:red"></form:errors>
				</div>

				<table class="table table-bordered">
					<caption>Shipping Address</caption>
					<tr>
						<td><label for="ShippingAddress.streetnumber">Street</label>
						</td>
						<td><form:input path="ShippingAddress.streetnumber"></form:input>
							<form:errors path="ShippingAddress.streetnumber"
								cssStyle="color:red"></form:errors> <!-- </div> --></td>
					</tr>

					<tr>
						<td><label for="ShippingAddress.housenumber">Apartment/House
								Number</label></td>
						<td><form:input path="ShippingAddress.housenumber"></form:input>
							<form:errors path="ShippingAddress.housenumber"
								cssStyle="color:red"></form:errors> <!-- </div> --></td>
					</tr>

					<tr>
						<td><label for="ShippingAddress.city">City</label></td>
						<td><form:input path="ShippingAddress.city"></form:input> <form:errors
								path="ShippingAddress.city" cssStyle="color:red"></form:errors>
							<!-- </div> --></td>
					</tr>

					<tr>
						<td><label for="ShippingAddress.country">Country</label></td>
						<td><form:input path="ShippingAddress.country"></form:input>
							<form:errors path="ShippingAddress.country" cssStyle="color:red"></form:errors>
					</tr>

					<tr>
						<td><label for="ShippingAddress.zipcode">Zipcode</label></td>
						<td><form:input path="ShippingAddress.zipcode"></form:input>
							<form:errors path="ShippingAddress.zipcode" cssStyle="color:red"></form:errors>
							<!-- </div> --></td>
					</tr>
					
				</table>
				
				
				<div class="form-group">
					<label for="cart"></label>
					<form:hidden path="cart.id"></form:hidden>
					<form:errors path="cart.id" cssStyle="color:red"></form:errors>
				</div>
				<div class="form-group">
					<label for="cart"></label>
					<form:hidden path="cart.customer.id"></form:hidden>
					<form:errors path="cart.customer.id" cssStyle="color:red"></form:errors>
				</div>
				<div class="form-group">
					<label for="users"></label>
					<form:hidden path="users.id"></form:hidden>
					<form:errors path="users.id" cssStyle="color:red"></form:errors>
				</div>
				<div class="form-group">
					<label for="users"></label>
					<form:hidden path="users.username"></form:hidden>
					<form:errors path="users.username" cssStyle="color:red"></form:errors>
				</div>
				<div class="form-group">
					<label for="users"></label>
					<form:hidden path="users.password"></form:hidden>
					<form:errors path="users.password" cssStyle="color:red"></form:errors>
				</div>

				<div class="form-group">
					<label for="users"></label>
					<form:hidden path="users.enabled"></form:hidden>
					<form:errors path="users.enabled" cssStyle="color:red"></form:errors>
				</div>

				<input type="submit" value="Purchase">
				
				
			</form:form>
		</div>
	</div>
	
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
</body>
</html>
<%@ include file="footer.jsp"%>