<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sp" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<spring:url value="/resources/yamm.css" var="yammCSS" />
<spring:url value="/resources/demo.css" var="demoCSS" />
<spring:url value="/resources/font_awesome_animation.css"
	var="font_awesome_animationCSS" />
<spring:url value="/resources/style.css" var="styleCSS" />

</head>
<body>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">

			<div class="navbar-header">
				<ul class="nav navbar-nav navbar-left">
					<li><a href="${contextRoot}/home"><span
							class="glyphicon glyphicon-home"></span> Home</a></li>
					<li><a href="${contextRoot}/signup"><span
							class="glyphicon glyphicon-user"></span> Sign Up</a></li>


					<li><a href="${contextRoot}/about"> About us</a></li>
					<li><a href="${contextRoot}/contact"><span
							class="glyphicon glyphicon-envelope"></span> Contact us</a></li>
					<li><a href="${contextRoot}/admin/listallproducts"> List
							All Products</a></li>
					<security:authorize access="hasRole('ROLE_ADMIN')">
						<li><a href="${contextRoot}/admin">Admin</a></li>

					</security:authorize>
					<ul class="nav navbar-nav navbar-right">

						<security:authorize access="isAnonymous()">
							<li><a href="${contextRoot}/goTologin"><span
									class="glyphicon glyphicon-log-in"></span> Login</a></li>
						</security:authorize>

						<security:authorize access="isAuthenticated()">
    					<span style="color:white"> <security:authentication property="principal.username" /> </span>
    					<li id="logout"><a href="${contextRoot}/logout">Logout</a>	</li>
						</security:authorize>
									
						<security:authorize access="isAuthenticated()">
							<li class="dropdown" id="userModel">
							<!--a
								class="btn btn-default dropdown-toggle"
								href="javascript:void(0)" id="dropdownMenu1"
								data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
									${userModel.fullName} <span class="caret"></span>
							</a-->
								<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
									<security:authorize access="hasRole('ROLE_USER')">
										<li id="cart"><a href="${contextRoot}/cart/show"> <span
												class="glyphicon glyphicon-shopping-cart"></span>&#160;<span
												class="badge">${userModel.cart.cartLines}</span> - &#8377;
												${userModel.cart.grandTotal}
										</a></li>
										<li role="separator" class="divider"></li>
									</security:authorize>
									
									
								</ul></li>
						</security:authorize>
					</ul>
					<div class="collapse navbar-collapse" id="myNavbar">
						<ul class="nav navbar-nav">

							<sf:form modelAttribute="categories" class="form-horizontal"
								action="${contextRoot}/listProductByCategory" method="GET">
								<label class="control-label" for="category" style="color: white">Select
									Product Category</label>

								<select name="id">
									<option>---Select----</option>
									<c:forEach var="category" items="${categories}">
										<option id="${category.id}" value="${category.getId()}">${category.getName()}</option>
									</c:forEach>
								</select>
								<button type="submit" style="background: #11B09B;">Submit</button>
							</sf:form>

						</ul>
						<nav> <c:forEach items="${categories}" var="category">
							<a href="${contextRoot}/listProductByCategory/${category.id}"
								id="a_${category.name}">${category.name}</a>
						</c:forEach> </nav>
					</div>

					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavbar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
			</div>

		</div>

	</div>
	</nav>

</body>
</html>