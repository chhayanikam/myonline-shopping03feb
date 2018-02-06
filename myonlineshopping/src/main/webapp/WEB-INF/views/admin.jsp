<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
.img-rounded
{
 
}
</style>
<title> Home Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<!-- <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"> -->
</head>
<body>

<div class="container">
	<div class="col-md-6 col-sm-offset-3">
		<div class="panel with-nav-tabs panel-default">
			<div class="panel-heading" style="background: #11B09B;">
				<ul class="nav nav-tabs">
					<li class="active"><a href="#tab1default" data-toggle="tab"
						style="color: black;">Add Product</a></li>
					<li><a href="#tab2default" data-toggle="tab"
						style="color: black;">Add Supplier</a></li>
					<li><a href="#tab3default" data-toggle="tab"
						style="color: black;">Add Category</a></li>

				</ul>
			</div>
<c:if test="${not empty message}">
	<div class="col-xs-12">
	<div class="alert alert-success alert-dismissible">
		<button type="button" class="close" data-dismiss="alert">
		&times;				
		</button>
		
	</div>
	</div>
</c:if>
			<div class="panel-body">
				<div class="tab-content">

					<div class="tab-pane fade in active" id="tab1default">
						<sf:form class="form-horizontal" action='' method="POST"
							modelAttribute="product">
							<fieldset>

								<div class="form-group">
									<div class="control-group">
										<div class="controls">
											<div class="col-sm-4">
												<label class="control-label" for="prod_name">Product
													Name</label>
											</div>
											<div class="col-sm-6">
												<sf:input type="text" id="prod_name" path="name"
													cssClass="input-xlarge form-control" />
												<em class="help=block"> Enter the Product Name</em>
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
												<sf:input type="text" id="prod_brand" path="brand"
													cssClass="input-xlarge form-control" />
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
												<sf:textarea rows="2" cols="50" id="prod_desc"
													path="description" cssClass="input-xlarge form-control"></sf:textarea>
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
												<sf:input type="text" id="prod_price" path="unitPrice"
													cssClass="input-xlarge form-control" />
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
												<sf:input type="text" id="prod_qty" path="quantity"
													cssClass="input-xlarge form-control" />
											</div>
										</div>
									</div>
								</div>

								<div class="form-group">
									<div class="control-group">
										<div class="controls">
											<div class="col-sm-4">
												<label class="control-label" for="category">Product
													Category</label>
											</div>
											<div class="col-sm-6">
												<sf:select path="categoryId"
													cssClass="input-xlarge form-control" items="${categories}" itemLabel="name" itemValue="id"/>
													
											</div>
										</div>
									</div>
								</div>


								<div class="form-group">
									<div class="control-group">
										<div class="controls">
											<div class="col-sm-4">
												<label class="control-label" for="supplier">Supplier
													ID</label>
											</div>
											<div class="col-sm-6">
												<sf:select path="supplierId"
													cssClass="input-xlarge form-control">
													<option value="">Select Supplier</option>
													<option value="1">Supplier-1</option>
													<option value="2">Supplier-2</option>
												</sf:select>
											</div>
										</div>
									</div>
								</div>
								<!--create hidden fields for non visible fields of product  -->
								<sf:hidden path="id"/>
								<sf:hidden path="code"/>
								<sf:hidden path="supplierId"/>
								<sf:hidden path="active"/>
								<sf:hidden path="purchases"/>
								<sf:hidden path="views"/>
								
								<div class="form-group">
									<div class="col-sm-9 col-sm-offset-3">
										<sf:button type="submit" cssClass="btn btn-primary btn-block"
											style="background: #11B09B; ">Submit</sf:button>
									</div>
								</div>
							</fieldset>
						</sf:form>
					</div>

					<div class="tab-pane fade" id="tab2default">
						<sf:form class="form-horizontal" action='${contextRoot}/manage/products' method="POST">
							<fieldset>

								<div class="form-group">
									<div class="control-group">
										<div class="controls">
											<div class="col-sm-4">
												<label class="control-label" for="prod_views">Supplier
													ID</label>
											</div>
											<div class="col-sm-6">
												<sf:input type="text" id="prod_views" path="supplierId"
													class="input-xlarge form-control" />
											</div>
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="control-group">
										<div class="controls">
											<div class="col-sm-4">
												<label class="control-label" for="prod_views">Supplier
													Name</label>
											</div>
											<div class="col-sm-6">
												<sf:input type="text" id="prod_views" path="supplierName"
													class="input-xlarge form-control" />
											</div>
										</div>
									</div>
								</div>

								<div class="form-group">
									<div class="col-sm-9 col-sm-offset-3">
										<button type="submit" class="btn btn-primary btn-block"
											style="background: #11B09B;">Submit</button>
									</div>
								</div>
							</fieldset>
						</sf:form>
					</div>



					<div class="tab-pane fade" id="tab3default">
						<sf:form class="form-horizontal" action='' method="POST">
							<fieldset>

								<div class="form-group">
									<div class="control-group">
										<div class="controls">
											<div class="col-sm-4">
												<label class="control-label" for="prod_views">Category
													ID</label>
											</div>
											<div class="col-sm-6">
												<sf:input type="text" id="prod_views" path="id"
													class="input-xlarge form-control" />
											</div>
										</div>
									</div>
								</div>

								<div class="form-group">
									<div class="control-group">
										<div class="controls">
											<div class="col-sm-4">
												<label class="control-label" for="prod_views">Category
													Name</label>
											</div>
											<div class="col-sm-6">
												<sf:input type="text" id="prod_views" path="name"
													class="input-xlarge form-control" />
											</div>
										</div>
									</div>
								</div>
								
								<div class="form-group">
									<div class="control-group">
										<div class="controls">
											<div class="col-sm-4">
												<label class="control-label" for="prod_views">Category
													Description</label>
											</div>
											<div class="col-sm-6">
												<sf:input type="text" id="prod_views" path="description"
													class="input-xlarge form-control" />
											</div>
										</div>
									</div>
								</div>

								<div class="form-group">
									<div class="col-sm-9 col-sm-offset-3">
										<button type="submit" class="btn btn-primary btn-block"
											style="background: #11B09B;">Submit</button>
									</div>
								</div>

							</fieldset>
						</sf:form>
					</div>

				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>