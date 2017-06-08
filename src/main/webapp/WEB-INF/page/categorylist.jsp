<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category List</title>
</head>
<body>
<div class="container">
   	<div class="page-header">
		<h1 class="text-center">Category Table</h1>
	</div>

	<table id="table" class="table table-striped" cellspacing="0"
		width="100%">
		<thead class="thead">
			<tr>
				<th>Category ID</th>
				<th>Category Name</th>
				<c:if
					test="${pageContext.request.userPrincipal.name == 'samblaze75'}">
					<th>Action</th>
				</c:if>
		</thead>
		<c:forEach items="${categories}" var="c">
			<tbody>
				<tr>

					<td>${c.cid }</td>
					<td>${c.name }</td>
					<c:if
						test="${pageContext.request.userPrincipal.name == 'samblaze75'}">
						<url:url value="/admin/category/deletecategory/${c.cid }"
							var="url"></url:url>
						<td><a href="${url }"><span
								class="glyphicon  glyphicon-trash"></span></a></td>
					</c:if>

				</tr>
			</tbody>
		</c:forEach>

	</table>
	
</div>

</body>
<%@ include file="footer.jsp"%>
</html>