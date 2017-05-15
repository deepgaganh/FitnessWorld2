
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Form</title>

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
	<div class="container wrapper">
		<div class="container">
			<url:url value="/admin/product/saveproduct" var="url"></url:url>
			<form:form action="${url }" modelAttribute="product" method="post">

				<div class="form-group">
					<label for="id"></label>
					<form:hidden path="id"></form:hidden>
				</div>

				<div class="form-group">
					<label for="name">Enter Product name</label>
					<form:input path="name"></form:input>
				</div>

				<div class="form-group">
					<label for="manufacturer">Product Manufacturer</label>
					<form:input path="manufacturer"></form:input>
				</div>

				<div class="form-group">
					<label for="discription">Discription</label>
					<form:input path="discription"></form:input>
				</div>


				<div class="form-group">
					<label for="price">Product Price</label>
					<form:input path="price"></form:input>
				</div>


				<div class="form-group">
					<label for="unitInStock">Unit In Stock</label>
					<form:input path="unitInStock"></form:input>
				</div>

				<div class="form-group">
					<label for="unitInStock">Unit In Stock</label>
					<form:input path="unitInStock"></form:input>
				</div>
				
				<div>
				<label for="category">Select Category</label>
				<c:forEach items="${name }" var="c">

					<form:radiobutton path="category.cid" value="${c.cid }" />${c.name }

				</c:forEach>
				</div>
				<input type="submit" value="Add Product">

			</form:form>

		</div>

	</div>


</body>
<%@ include file="footer.jsp"%>
</html>