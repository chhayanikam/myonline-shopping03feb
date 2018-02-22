<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="availableCount" value="${userModel.cart.cartLines}" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact Us</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<div class="container">


	<c:if test="${not empty message}">
		
		<div class="alert alert-info">
			<h3 class="text-center">${message}</h3>
		</div>		
	
	</c:if>
	
	<c:choose>
		<c:when test="${not empty cartLines}">
			<table id="cart" class="table table-hover table-condensed">
			   	<thead>
					<tr>
						<th style="width:50%">Product</th>
						<th style="width:10%">Price</th>
						<th style="width:8%">Quantity</th>
						<th style="width:22%" class="text-center">Subtotal</th>
						<th style="width:10%"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${cartLines}" var="cartLine">
					<c:if test="${cartLine.available == false}">
						<c:set var="availableCount" value="${availableCount - 1}"/>
					</c:if>
					
					<tr>
						<td data-th="Product">
							<div class="row">
								<div class="col-sm-2 hidden-xs">
									<img src="${images}/${cartLine.product.code}.jpg" alt="${cartLine.product.name}" class="img-responsive dataTableImg"/></div>
								<div class="col-sm-10">
									<h4 class="nomargin">${cartLine.product.name} 
										<c:if test="${cartLine.available == false}">
											<strong style="color:red">(Not Available)</strong> 
										</c:if>
									</h4>
									<p>Brand : ${cartLine.product.brand}</p>
									<p>Description : ${cartLine.product.description}
								</div>
							</div>
						</td>
						<td data-th="Price"> &#8377; ${cartLine.buyingPrice} /-</td>
						<td data-th="Quantity">
							<input type="number" id="count_${cartLine.id}" class="form-control text-center" value="${cartLine.productCount}" min="1" max="3">
						</td>
						<td data-th="Subtotal" class="text-center">&#8377; ${cartLine.total} /-</td>
						<td class="actions" data-th="">
							<c:if test="${cartLine.available == true}">
								<button type="button" name="refreshCart" class="btn btn-info btn-sm" value="${cartLine.id}"><span class="glyphicon glyphicon-refresh"></span></button>
							</c:if>												
							<a href="${contextRoot}/cart/${cartLine.id}/remove" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash"></span></a>								
						</td>
					</tr>
					</c:forEach>
				</tbody>
				<tfoot>
					<tr class="visible-xs">
						<td class="text-center"><strong>Total &#8377; ${userModel.cart.grandTotal}</strong></td>
					</tr>
					<tr>
						<td><a href="${contextRoot}/show/all/products" class="btn btn-warning"><span class="glyphicon glyphicon-chevron-left"></span> Continue Shopping</a></td>
						<td colspan="2" class="hidden-xs"></td>
						<td class="hidden-xs text-center"><strong>Total &#8377; ${userModel.cart.grandTotal}/-</strong></td>
						
						<c:choose>
							<c:when test="${availableCount != 0}">
								<td><a href="${contextRoot}/cart/validate" class="btn btn-success btn-block">Checkout <span class="glyphicon glyphicon-chevron-right"></span></a></td>
							</c:when>							
							<c:otherwise>
								<td><a href="javascript:void(0)" class="btn btn-success btn-block disabled"><strike>Checkout <span class="glyphicon glyphicon-chevron-right"></span></strike></a></td>
							</c:otherwise>
						</c:choose>						
					</tr>
				</tfoot>
			</table>
		
		</c:when>
		
		<c:otherwise>
			
			<div class="jumbotron">
				
				<h3 class="text-center">Your Cart is Empty!</h3>
			
			</div>
		
		</c:otherwise>
	</c:choose>




</div>
	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</body>
</html>