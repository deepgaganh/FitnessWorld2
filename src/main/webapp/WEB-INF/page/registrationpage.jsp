<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp"%>

<html>
<head>
<title>Registration</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>

	<div class="container-wrapper">
		<div class="container">
			<div class="page-header text-center">
				<h1>Register Customer</h1>

				<p class="lead">Please fill in your information below:</p>
			</div>

			<url:url value="/all/register" var="url"></url:url>
			<form:form action="${url }" modelAttribute="customer" method="post">

				<h3 class="text-center">Basic Info:</h3>

				<!-- First Grip of Form -->
				<div class="row">
					<div class="col-md-6">

						<div class="form-group">
							<label for="id"></label>
							<form:hidden path="id"></form:hidden>
							<form:errors path="id" cssStyle="color:red"></form:errors>

						</div>

						<div class="form-group">
							<label for="firstname">Firstname</label>
							<form:input path="firstname" id="firstname" class="form-control"></form:input>
							<form:errors path="firstname" cssStyle="color:red"></form:errors>
						</div>


						<div class="form-group">
							<label for="lastname">Lastname</label>
							<form:input path="lastname" id="lastname" class="form-control"></form:input>
							<form:errors path="lastname" cssStyle="color:#ff0000"></form:errors>
						</div>



						<div class="form-group">
							<label for="email">Email</label> <span style="color: #ff0000">${duplicateEmail }</span>
							<form:errors path="email" cssStyle="color:#ff0000"></form:errors>
							<form:input path="email" id="email" class="form-control"></form:input>


						</div>
					</div>
					<div class="col-md-6">
						<br>
						<div class="form-group">
							<label for="phone">Phone</label>
							<form:errors path="phone" cssStyle="color: #ff0000"></form:errors>
							<form:input path="phone" id="phone" pattern="^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$"
								title="Must start from 9, 8 or 7" class="form-control"></form:input>

						</div>

						<div class="form-group">
							<label for="users.username">Username</label> <span
								style="color: #ff0000">${duplicateUsername }</span>
							<form:errors path="users.username" cssStyle="color:red"></form:errors>
							<form:input path="users.username" class="form-control"></form:input>


						</div>


						<div class="form-group">
							<label for="users.password">Password</label>
							<form:errors path="users.password" cssStyle="color:#ff0000"></form:errors>
							<form:input path="users.password" type="password"
								pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
								title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" class="form-control"></form:input>

						</div>
					</div>
				</div>

				<br>

				<!-- Second Grid of Form -->
				<div class="row">
					<div class="col-md-6">
						<h3>Billing Address:</h3>

						<div class="form-group">
							<label for="billingAddress.streetnumber">Street Name</label>
							<form:errors path="billingAddress.streetnumber"
								cssStyle="color:#ff0000"></form:errors>
							<form:input path="billingAddress.streetnumber"
								class="form-control"></form:input>

						</div>

						<div class="form-group">
							<label for="billingAddress.housenumber">House Number</label>
							<form:input path="billingAddress.housenumber"
								class="form-control"></form:input>
							<form:errors path="billingAddress.housenumber"
								cssStyle="color:#ff0000"></form:errors>
						</div>

						<div class="form-group">
							<label for="billingAddress.city">City</label>
							<form:input path="billingAddress.city" class="form-control"></form:input>
							<form:errors path="billingAddress.city" cssStyle="color:#ff0000"></form:errors>
						</div>

						<div class="form-group">
							<label for="billingAddress.country">Country</label>
							<form:input path="billingAddress.country" class="form-control"></form:input>
							<form:errors path="billingAddress.country"
								cssStyle="color:#ff0000"></form:errors>
						</div>

						<div class="form-group">
							<label for="billingAddress.zipcode">Zipcode</label>
							<form:input path="billingAddress.zipcode" class="form-control"></form:input>
							<form:errors path="billingAddress.zipcode"
								cssStyle="color:#ff0000"></form:errors>
						</div>
					</div>

					<div class="col-md-6">
						<h3>Shipping Address:</h3>

						<div class="form-group">
							<label for="shippingAddress.streetnumber">Street Name</label>
							<form:input path="shippingAddress.streetnumber"
								class="form-control"></form:input>
							<form:errors path="shippingAddress.streetnumber"
								cssStyle="color:#ff0000"></form:errors>
						</div>

						<div class="form-group">
							<label for="shippingAddress.housenumber">Apartment Number</label>
							<form:input path="shippingAddress.housenumber"
								class="form-control"></form:input>
							<form:errors path="shippingAddress.housenumber"
								cssStyle="color:#ff0000"></form:errors>
						</div>

						<div class="form-group">
							<label for="shippingAddress.city">City</label>
							<form:input path="shippingAddress.city" class="form-control"></form:input>
							<form:errors path="shippingAddress.city" cssStyle="color:#ff0000"></form:errors>
						</div>

						<div class="form-group">
							<label for="shippingAddress.country">Country</label>
							<form:input path="shippingAddress.country" class="form-control"></form:input>
							<form:errors path="shippingAddress.country"
								cssStyle="color:#ff0000"></form:errors>
						</div>

						<div class="form-group">
							<label for="shippingAddress.zipcode">Zipcode</label>
							<form:input path="shippingAddress.zipcode" class="form-control"></form:input>
							<form:errors path="shippingAddress.zipcode"
								cssStyle="color:#ff0000"></form:errors>
						</div>
					</div>
				</div>
				<div class="col-lg-12 text-center">
					<input type="submit" value="Register"
						class="btn btn-lg btn-primary ">
				</div>
			</form:form>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>

</body>
<%@ include file="footer.jsp"%>
</html>