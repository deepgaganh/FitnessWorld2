<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category List</title>
</head>
<body>
<table>
	<div class="container">

		<table>
			<tr>
				<th>Category ID</th>
				<th>Category Name</th>
				<c:if test="${pageContext.request.userPrincipal.name == 'samblaze75'}">
				<th>Action</th>
				</c:if>
				<c:forEach items="${categories}" var="c">
					<tr>
						<td>${c.cid }</td>
						<td>${c.name }</td>
						<c:if test="${pageContext.request.userPrincipal.name == 'samblaze75'}">
						<url:url value="/admin/category/deletecategory/${c.cid }" var="url"></url:url>
						<td><a href="${url }"><span
						class="glyphicon  glyphicon-trash"></span></a></td>
						</c:if>
					
					</tr>
				</c:forEach>
			</tr>
		</table>
	</div>


</body>
<%@ include file="footer.jsp" %>
</html>