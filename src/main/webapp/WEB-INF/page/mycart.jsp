<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%-- <%@ include file="header.jsp"%> --%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>${pageContext.request.userPrincipal.name }'sCart</title>

<link rel="stylesheet" href="resources/css/about.css" />

</head>
<body>

	<br>
	<div class="jumbotron jumbotron-sm">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 col-lg-12">
					<h1 class="h1">
						Shopping Cart <small> Take a step towards Fitness</small>
					</h1>
				</div>
			</div>
		</div>
	</div>

	<c:if test="${empty cartList}">
		<h3 align="center" style="color: #ff0000;">Your cart is empty</h3>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<c:url value="/all/product/productlist" var="vart1"></c:url>
		<a href="${vart1 }">Continue Shopping</a>
	</c:if>
	<c:if test="${!empty cartList}">
		<table class="table table-bordered fs13">
			<thead align="center">
				<tr>
					<th>Image</th>
					<th class="width110">Product ID</th>
					<th>Product Name</th>
					<th>Unit Price</th>
					<th>Quantity</th>
					<th>Price(in Rs.)</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${cartList}" var="cartItem">
					<tr>
						<td class="span1"><img
							src="<c:url value='/resources/images/${cartItem.product.id}.png'/>"
							alt="image" width="140" height="140" /></td>
						<td>${cartItem.product.id}</td>
						<td>${cartItem.product.name}</td>
						<td>${cartItem.product.price}</td>
						<td>${cartItem.quantity}&nbsp;&nbsp;&nbsp; <a
							href="<c:url value="/user/cart/addQty/${cartItem.product.id}/${cartId}"/>"
							class="btn btn-primary center">+ </a>&nbsp;&nbsp;&nbsp; <a
							href="<c:url value="/user/cart/reduceQty/${cartItem.product.id}/${cartId}"/>"
							class="btn btn-danger btnAction">- </a>
						</td>
						<td>${cartItem.totalprice}</td>
						<td><a
							href="<c:url value="/user/cart/removeItem/${cartItem.product.id}/${cartId}"/>"
							class="btn btn-danger btnAction"> <span
								class="glyphicon glyphicon-remove"></span>remove
						</a></td>
						<c:set var="grandTotal" value="${cartItem.totalprice+grandTotal}" />

					</tr>
				</c:forEach>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td>Grand Total(in Rs.)</td>
					<td><c:out value="${grandTotal}" /></td>
					<td>
				</tr>
			</tbody>
		</table>
		<c:url value="/all/product/productlist" var="vart"></c:url>
		<a href="${vart }"> <span class="glyphicon glyphicon-gift"></span>Continue
			Shopping &nbsp
		</a>
		<c:url value="/user/cart/checkout/${cartId}" var="varty"></c:url>
			<a href="${varty}"><span class="glyphicon glyphicon-usd"></span>Checkout</a>
		
	</c:if>


	<br>
	<br>
	<br>
	<br>
	<br>
</body>
</html>
<%@ include file="footer.jsp"%>