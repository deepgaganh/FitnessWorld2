<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<title>Product List</title>
</head>
<body>
	<div class="container">
	<table class="table table-striped">
		<thead class="thead-inverse">
			<tr>
				<th>Product Image</th>
				<th>Product Name</th>
				<th>Price</th>
				<th>Information</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
		</thead>
		<c:forEach items="${products}" var="p">
			<tbody>
				<tr>
					<url:url value="/resources/images/${p.id }.png" var="url"></url:url>
					<td><img src="${url }" height="50" width="50"></td>
                                                                                                                                                                                                                                                                                                                                                                                                        
					<td>${p.name }</td>
					<td>${p.price }</td>
					<url:url value="/all/product/viewproduct/${p.id }" var="url"></url:url>
					<td><a href="${url }"><span
							class="glyphicon glyphicon-info-sign"></span></a></td>
					<url:url value="/admin/product/editproduct/${p.id }" var="url1"></url:url>
					<td><a href="${url1 }"><span
							class="glyphicon  glyphicon-pencil"></span></a></td>

					<url:url value="/admin/product/deleteproduct/${p.id }" var="url"></url:url>
					<td><a href="${url }"><span
							class="glyphicon  glyphicon-trash"></span></a></td>

				</tr>
			</tbody>
		</c:forEach>

	</table>
</div>
</body>
<%@ include file="footer.jsp"%>
</html>