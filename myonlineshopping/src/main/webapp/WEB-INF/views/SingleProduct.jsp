<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>View Single product</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<!-- <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"> -->

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
</head>
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/v/dt/dt-1.10.16/datatables.min.css" />
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div id="container breathe">
		<div class="row">

			<sf:form modelAttribute="product"
				action="${contextRoot}/addToCart?id=${product.id}" method="POST"
				enctype="multipart/form-data">
				<div class="col-sm-6">
					<img name="productcode"
						src="<spring:url value="resources/${product.code}.jpg/"></spring:url>"
						class="img img-responsive" style="width: 50%; margin-left: 90px" />
				</div>
				<div class="col-sm-6">
					
					<h2>Supplier : ${product.supplierId}</h2>
					<h2>Available Quantity : ${product.quantity}</h2>
					<h2>
						<small>Rs.</small> ${product.unitPrice}
					</h2>


					<input type="submit" style="background: #11B09B;"
						value="Add to Cart" />
				</div>
				<hr>
				<div class="col-sm-10 col-sm-offset-2" style="margin-left: 90px">
					<h2>Product Description</h2>
					<h3>${product.id}/${product.name}/${product.brand}/${product.description}</h3>
				</div>
			</sf:form>
		</div>
	</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>