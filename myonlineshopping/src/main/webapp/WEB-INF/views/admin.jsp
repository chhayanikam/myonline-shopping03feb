<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="spring" uri="http://www.springframework.org/tags" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<style>
.img-rounded
{
 
}
</style>
<title> Admin Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<!-- <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"> -->
</head>
<body>
 <jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<div class="container">
		<div class="col-md-6 col-sm-offset-3">
            <div class="panel with-nav-tabs panel-default">
                <div class="panel-heading" style=" background: #11B09B; ">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#tab1default" data-toggle="tab" style=" color: black; ">Add Product</a></li>
                            <li><a href="#tab2default" data-toggle="tab" style=" color: black; ">Add Supplier</a></li>
                            <li><a href="#tab3default" data-toggle="tab" style=" color: black; ">Add Category</a></li>
                            
                        </ul>
                </div>
                <div class="panel-body">
                    <div class="tab-content">

                        <div class="tab-pane fade in active" id="tab1default">
                        <sf:form class="form-horizontal" modelAttribute="product" action="${contextRoot}/saveProduct" 
                        method="POST"
                        enctype="multipart/form-data" >
							  <fieldset>			    

							<div class="form-group">
							    <div class="control-group">
							      <div class="controls">
							      	<div class="col-sm-4">
								      <label class="control-label"  for="category">Product Category</label>
							      	</div>
							      	<div class="col-sm-6">	
							        	<select name="categoryId" class="input-xlarge form-control">
							        		<option value="">Select Product Category</option>
										  	<option value="1">Saree</option>
										  	<option value="2">Dress</option>
										  </select>
										  <sf:select path="categoryId" items="${categories}" itemLabel="name" itemValue="id" class="form-control"/>
										  
							      </div>
							      </div>
							    </div>
							</div>							   

							<div class="form-group">
							    <div class="control-group">
							      <div class="controls">
							      	<div class="col-sm-4">
								      <label class="control-label"  for="supplier">Supplier ID</label>
							      	</div>
							      	<div class="col-sm-6">	
							        	<select name="supplierId" class="input-xlarge form-control">
							        		<option value="">Select Supplier</option>
										  	<option value="1">Supplier-1</option>
										  	<option value="2">Supplier-2</option>
										  </select>
										  <sf:select path="supplierId" items="${suppliers}" itemLabel="name" itemValue="id" class="form-control"/>
										  
							      </div>
							      </div>
							    </div>
							</div>
							<div class="form-group">
							    <div class="control-group">
							      <div class="controls">
							      	<div class="col-sm-4">
								      <label class="control-label"  for="prod_name">Product Name</label>
							      	</div>
							      	<div class="col-sm-6">	
							        	<input type="text" id="prod_name" name="name" class="input-xlarge form-control" required>
							      </div>
							      </div>
							    </div>
							</div>


							
							<div class="form-group">
							    <div class="control-group">
							      <div class="controls">
							      	<div class="col-sm-4">
								      <label class="control-label"  for="prod_brand">Product Brand</label>
							      	</div>
							      	<div class="col-sm-6">	
							        	<input type="text" id="prod_brand" name="brand" class="input-xlarge form-control" required>
							      </div>
							      </div>
							    </div>
							</div>

							
							<div class="form-group">
							    <div class="control-group">
							      <div class="controls">
							      	<div class="col-sm-4">
								      <label class="control-label"  for="prod_desc">Product Description</label>
							      	</div>
							      	<div class="col-sm-6">	
							        	<textarea rows="2" cols="50" id="prod_desc" name="description" class="input-xlarge form-control" required></textarea>
							      </div>
							      </div>
							    </div>
							</div>
							
							<div class="form-group">
							    <div class="control-group">
							      <div class="controls">
							      	<div class="col-sm-4">
								      <label class="control-label"  for="file">Select a Image</label>
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
								      <label class="control-label"  for="prod_price">Product Price</label>
							      	</div>
							      	<div class="col-sm-6">	
							        	<input type="number" id="prod_price" name="unitPrice" class="input-xlarge form-control" required>
							      </div>
							      </div>
							    </div>
							</div>


							<div class="form-group">
							    <div class="control-group">
							      <div class="controls">
							      	<div class="col-sm-4">
								      <label class="control-label"  for="prod_qty">Product Quantity</label>
							      	</div>
							      	<div class="col-sm-6">	
							        	<input type="text" id="prod_qty" name="quantity" class="input-xlarge form-control" required>
							      </div>
							      </div>
							    </div>
							</div>
							<div class="form-group">
		                    <div class="col-sm-9 col-sm-offset-3">
		                        <button type="submit" class="btn btn-primary btn-block" style="background: #11B09B; ">Submit</button>
		                    </div>
		                </div>
				  </fieldset>
				</sf:form>
        	</div>
                        <div class="tab-pane fade" id="tab2default">
                        	<sf:form class="form-horizontal" modelAttribute="supplier" action="${contextRoot}/saveSupplier" method="POST">
							 	<fieldset>		    
									
							    <div class="form-group">
							    <div class="control-group">
							      <div class="controls">
							      	<div class="col-sm-4">
								      <label class="control-label"  for="name">Supplier Name</label>
							      	</div>
							      	<div class="col-sm-6">	
							        	<input type="text" id="name" name="name" class="input-xlarge form-control" required>
							      </div>
							      </div>
							    </div>
							</div>

							<div class="form-group">
		                    <div class="col-sm-9 col-sm-offset-3">
		                        <button type="submit" class="btn btn-primary btn-block" style="background: #11B09B; ">Submit</button>
		                    </div>
		                </div>

								</fieldset>
							</sf:form>
                        </div>



                        <div class="tab-pane fade" id="tab3default">
                        	
                       	<sf:form class="form-horizontal" action="${contextRoot}/saveCategory" modelAttribute="category"  method="POST">
							<fieldset>
							 	<div class="form-group">
							    <div class="control-group">
							      <div class="controls">
							      	<div class="col-sm-4">
								      <label class="control-label"  for="prod_views">Category Name</label>
							      	</div>
							      	<div class="col-sm-6">	
							        	<input type="text" id="name" name="name" class="input-xlarge form-control" required>
							      </div>
							      </div>
							    </div>
							</div>

								<div class="form-group">
							    <div class="control-group">
							      <div class="controls">
							      	<div class="col-sm-4">
								      <label class="control-label"  for="cat_desc">Category Description</label>
							      	</div>
							      	<div class="col-sm-6">	
							        	<input type="text" id="description" name="description" class="input-xlarge form-control" required>
							      </div>
							      </div>
							    </div>
							</div>

							<div class="form-group">
		                    <div class="col-sm-9 col-sm-offset-3">
		                        <button type="submit" class="btn btn-primary btn-block" style="background: #11B09B; ">Submit</button>
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

 <jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</body>
</html>