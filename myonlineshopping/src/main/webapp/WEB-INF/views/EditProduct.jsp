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
	<div class="container">
		<sf:form class="form-horizontal" modelAttribute="product"
			action="${contextRoot}/admin/UpdateProduct" method="POST"
			enctype="multipart/form-data">
			<fieldset>

				<div class="form-group">
					<div class="control-group">
						<div class="controls">
							<div class="col-sm-4">
								<label class="control-label" for="category">Product
									Category</label>
							</div>
							<div class="col-sm-6">
								<sf:select path="categoryId" items="${categories}"
									itemLabel="name" itemValue="id" class="form-control" value="${product.categoryId }" />
							</div>
						</div>
					</div>
				</div>

				<div class="form-group">
					<div class="control-group">
						<div class="controls">
							<div class="col-sm-4">
								<label class="control-label" for="supplier">Supplier ID</label>
							</div>
							<div class="col-sm-6">

								<sf:select name="id" path="supplierId" items="${suppliers}"
									itemLabel="name" itemValue="id" value="${product.supplierId}"
									class="input-xlarge form-control" />

							</div>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="control-group">
						<div class="controls">
							<div class="col-sm-4">
								<label class="control-label" for="prod_name">Product
									Name</label>
							</div>
							<div class="col-sm-6">
								<input type="text" id="prod_name" name="name" 
									class="input-xlarge form-control" value="${product.name}" required />
							</div>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="control-group">
						<div class="controls">
							<div class="col-sm-4">
								<label class="control-label" for="prod_brand">Product
									Brand</label>
							</div>
							<div class="col-sm-6">
								<input type="text" id="prod_brand" name="brand" 
									class="input-xlarge form-control" value="${product.brand }" required />
							</div>
						</div>
					</div>
				</div>


				<div class="form-group">
					<div class="control-group">
						<div class="controls">
							<div class="col-sm-4">
								<label class="control-label" for="prod_desc">Product
									Description</label>
							</div>
							<div class="col-sm-6">
								<textarea rows="2" cols="50" id="prod_desc" name="description" 
									class="input-xlarge form-control" value="${product.description}" required></textarea>
							</div>
						</div>
					</div>
				</div>

				<div class="form-group">
					<div class="control-group">
						<div class="controls">
							<div class="col-sm-4">
								<label class="control-label" for="file">Select a Image</label>
							</div>
							<div class="col-sm-6">
								<input type="file" name="file" class="input-xlarge form-control" />
							</div>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="control-group">
						<div class="controls">
							<div class="col-sm-4">
								<label class="control-label" for="prod_price">Product
									Price</label>
							</div>
							<div class="col-sm-6">
								<input type="number" id="prod_price" name="unitPrice" 
								class="input-xlarge form-control" value="${product.unitPrice}" required />
							</div>
						</div>
					</div>
				</div>


				<div class="form-group">
					<div class="control-group">
						<div class="controls">
							<div class="col-sm-4">
								<label class="control-label" for="prod_qty">Product
									Quantity</label>
							</div>
							<div class="col-sm-6">
								<input type="text" id="prod_qty" name="quantity"
									class="input-xlarge form-control" value="${product.quantity}" required>
							</div>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-9 col-sm-offset-3">
						<button type="submit" class="btn btn-primary btn-block"
							style="background: #11B09B;">Update Product</button>
					</div>
				</div>
			</fieldset>
		</sf:form>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>