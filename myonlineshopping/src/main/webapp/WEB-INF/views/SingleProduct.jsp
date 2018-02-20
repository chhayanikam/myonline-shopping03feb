<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
</head>
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/v/dt/dt-1.10.16/datatables.min.css" />
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div id="container">
		<sf:form modelAttribute="product" action="${contextRoot}/addtocart"   method="POST"
                        enctype="multipart/form-data">
						
					<img name="productcode" src="<spring:url value="resources/{product.code}.jpg/"></spring:url>"
					 class="img img-responsive"	>
								<h2>${product.name}/${product.brand}/${product.description}</h2>
								<h2>
									<small>Rs.</small> ${product.unitPrice}
								</h2>
								<h2>Supplier : ${product.supplierId}</h2>
																																														
							 <input type="submit" value="Add to Cart" />								
						
		</sf:form>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>