<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product List</title>
</head>
<body>
	<div class="container">

		<table>
			<tr>
				<th>Product Name</th>
				<th>Price</th>
				<th>Action</th>

				<c:forEach items="${products}" var="p">
					<tr>
						<td>${p.name }</td>
						<td>${p.price }</td>
						<url:url value="/all/product/viewproduct/${p.id }" var="url"></url:url>
						<td><a href="${url }"><span
						class="glyphicon glyphicon-info-sign"></span></a></td>
						<url:url value="/admin/product/deleteproduct/${p.id }" var="url"></url:url>
						<td><a href="${url }"><span
						class="glyphicon  glyphicon-trash"></span></a></td>
					
					</tr>
				</c:forEach>
			</tr>
		</table>
	</div>
</body>
<%@ include file="footer.jsp"%>
</html>