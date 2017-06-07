<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Product</title>

</head>
<body>
<url:url value="/resources/images/${product.id }.png" var="url"></url:url>
<img src="${url}" height="300px" width="300px">
	PRODUCT NAME: ${product.name }
	</br> PRICE : ${product.price }
	</br> MANUFACTURER: ${product.manufacturer }
	</br> DESCRIPTION : ${product.discription }
	</br>Unit in Stock : ${product.unitInStock }

	<url:url value="/all/product/productlist" var="url1"></url:url>
	<a href="${url1 }">Browse All Products</a>
	
	<url:url value="/all/cartitem/getproduct/${product.id }" var="url"></url:url>
	<a href="${url}" class="btn btn-warning" role="button">Add to Cart</a>

</body>
<%@ include file="footer.jsp"%>
</html>