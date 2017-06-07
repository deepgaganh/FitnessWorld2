<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category Form</title>
</head>
<body>
	<div class="container wrapper">
		<div class="container">
			<url:url var="url" value="/admin/category/savecategory"></url:url>
			<form:form action="${url }" modelAttribute="category" method="post">

				<div class="form-group">
					<label for="cid"></label>
					<form:hidden path="cid"></form:hidden>
				</div>

				<div class="form-group">
					<label for="name">Enter Category name</label>
					<form:input path="name" class="form-control"></form:input>
				</div>


				<input type="submit" value="Add Category">

			</form:form>

		</div>

	</div>

</body>
<%@ include file="footer.jsp"%>
</html>