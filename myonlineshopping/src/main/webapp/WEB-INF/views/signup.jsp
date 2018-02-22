<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<style>
.img-rounded {
	
}
</style>
<title>Home Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<!-- <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"> -->
</head>

<body>
	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

	<div class="container">
		<div class="row centered-form">
			<div class="col-sm-8 col-sm-offset-2">
				<div class="panel panel-default">
					<div class="panel-heading" style="background: #11B09B;">
						<h3 class="panel-title">
							Registration Form <small>Please fill the form</small>
						</h3>
					</div>
					<div class="panel-body">
						<sf:form role="form" modelAttribute="user"
							action="${contextRoot}/saveUser">
							<div class="row">
								<div class="col-sm-6">
									<div class="form-group">
										<input type="text" name="firstName" id="first_name"
											class="form-control" placeholder="First Name" required>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="form-group">
										<input type="text" name="lastName" id="last_name"
											class="form-control" placeholder="Last Name" required>
									</div>
								</div>
							</div>

							<div class="form-group">
								<input type="email" name="email" id="email" class="form-control"
									placeholder="Email Address" required>
							</div>

							<div class="row">
								<div class="col-sm-6 ">
									<div class="form-group">
										<input type="text" name="address" id="address"
											class="form-control" placeholder="User Address">
									</div>
								</div>
							<div class="row">
								<div class="col-sm-6 ">
									<div class="form-group">
										<input type="number" name="contactNumber" id="mobile"
											class="form-control" placeholder="Contact Number" required>
									</div>
								</div>

								<div class="col-sm-6 ">
									<div class="form-group">
										<select name="role" form="carform" class="form-control">
											<option value="">Role</option>
											<option value="ROLE_ADMIN">Admin</option>
											<option value="ROLE_USER">User</option>
										</select>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-sm-6">
									<div class="form-group">
										<input type="password" name="password" id="password"
											class="form-control" placeholder="Password" required>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-sm-6  col-sm-offset-3">
									<div class="form-group">
										<input type="submit" style="background: #11B09B;"
											value="Register" class="btn btn-info btn-block">
									</div>
								</div>
							</div>
						</sf:form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</body>
</html>