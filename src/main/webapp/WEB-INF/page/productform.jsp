
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Form</title>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>

	<div class="container">
		<div class="page-header">
			<h1 class="text-center">Product Form</h1>

			<p class="lead text-center">Please fill in information below:</p>
		</div>

		<url:url value="/admin/product/saveproduct" var="url"></url:url>
		<form:form action="${url }" modelAttribute="product" method="post"
			enctype="multipart/form-data">
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label for="id"></label>
						<form:hidden path="id"></form:hidden>
					</div>

					<div class="form-group">
						<label for="name">Name</label>
						<form:input path="name" class="form-control"></form:input>
					</div>

					<div class="form-group">
						<label for="manufacturer">Manufacturer</label>
						<form:input path="manufacturer" class="form-control"></form:input>
					</div>

					<div class="form-group">
						<label for="discription">Discription</label>
						<form:input path="discription" class="form-control"></form:input>
					</div>
				</div>
				<br>
				<div class="col-md-6">
					<div class="form-group">
						<label for="price">Price</label>
						<form:input path="price" class="form-control"></form:input>
					</div>


					<div class="form-group">
						<label for="unitInStock">Unit In Stock</label>
						<form:input path="unitInStock" class="form-control"></form:input>
					</div>

					<div class="form-group">
						<label for="image">Upload Image</label> <input type="file"
							name="image">
					</div>
				</div>
			</div>
			<div class="col-md-12">
				<div class="form-group">
					<label for="category">Select Category : </label>
					<c:forEach items="${categorydetails }" var="c">

						<form:radiobutton path="category.cid" value="${c.cid }" />${c.name }

					</c:forEach>

				</div>
			</div>


			<div class="col-lg-12 text-center">
				<input type="submit" value="Add Product" class="btn btn-lg btn-primary">
			</div>
		</form:form>

	</div>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>


</body>
<%@ include file="footer.jsp"%>
</html>