<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Product List</title>

<script>
$(document).ready(function() {
	var searchCondition = '${searchCondition}';
	$('#table').DataTable({
	"lengthMenu" : [ [ 3, 5, 7, -1 ], [ 3, 5, 7, "All" ] ],
	"oSearch" : {
	"sSearch" : searchCondition
	}
	})
	});
</script>


</head>
<body>
	 
		<table id="table" class="table table-striped" cellspacing="0" width="100%">
			<thead class="thead">
				<tr>
					<th>Product Image</th>
					<th>Product Name</th>
					<th>Price</th>
					<th>Category</th>
					<th>Information</th>
					
					<c:if test="${pageContext.request.userPrincipal.name == 'samblaze75'}">
					<th>Edit</th>
					<th>Delete</th>
					</c:if>
				</tr>
			</thead>
			<c:forEach items="${products}" var="p">
				<tbody>
					<tr>
						<url:url value="/resources/images/${p.id }.png" var="url"></url:url>
						<td><img src="${url}" height="50" width="50"></td>

						<td>${p.name }</td>
						<td>${p.price }</td>
						<td>${p.category.name }</td>
						<url:url value="/all/product/viewproduct/${p.id }" var="url"></url:url>
						<td><a href="${url}"><span
								class="glyphicon glyphicon-info-sign"></span></a></td>
								
					<c:if test="${pageContext.request.userPrincipal.name == 'samblaze75'}">			
						<url:url value="/admin/product/editproduct/${p.id }" var="url1"></url:url>
						<td><a href="${url1 }"><span
								class="glyphicon  glyphicon-pencil"></span></a></td>

						<url:url value="/admin/product/deleteproduct/${p.id }" var="url"></url:url>
						<td><a href="${url }"><span
								class="glyphicon  glyphicon-trash"></span></a></td>
					</c:if>

					</tr>
				</tbody>
			</c:forEach>
		</table>
	 
</body>
<%@ include file="footer.jsp"%>
</html>