<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

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
                        <form class="form-horizontal" action='' method="POST">
							  <fieldset>
							    

							<div class="form-group">
							    <div class="control-group">
							      <div class="controls">
							      	<div class="col-sm-4">
								      <label class="control-label"  for="category">Product Category</label>
							      	</div>
							      	<div class="col-sm-6">	
							        	<select name="prod_category" class="input-xlarge form-control">
							        		<option value="">Select Product Category</option>
										  	<option value="saree">Saree</option>
										  	<option value="dress">Dress</option>
										  </select>
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
							        	<select name="prod_category" class="input-xlarge form-control">
							        		<option value="">Select Supplier</option>
										  	<option value="1">Supplier-1</option>
										  	<option value="2">Supplier-2</option>
										  </select>
							      </div>
							      </div>
							    </div>
							</div>

							<div class="form-group">
							    <div class="control-group">
							      <div class="controls">
							      	<div class="col-sm-4">
								      <label class="control-label"  for="prod_code">Product Code</label>
							      	</div>
							      	<div class="col-sm-6">	
							        	<input type="text" id="prod_code" name="prod_code" class="input-xlarge form-control">
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
							        	<input type="text" id="prod_name" name="prod_name" class="input-xlarge form-control">
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
							        	<input type="text" id="prod_brand" name="prod_brand" class="input-xlarge form-control">
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
							        	<textarea rows="2" cols="50" id="prod_desc" name="prod_desc" class="input-xlarge form-control"></textarea>
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
							        	<input type="text" id="prod_price" name="prod_price" class="input-xlarge form-control">
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
							        	<input type="text" id="prod_qty" name="prod_qty" class="input-xlarge form-control">
							      </div>
							      </div>
							    </div>
							</div>

							
							<div class="form-group">
							    <div class="control-group">
							      <div class="controls">
							      	<div class="col-sm-4">
								      <label class="control-label"  for="prod_purchases">Product Purchases</label>
							      	</div>
							      	<div class="col-sm-6">	
							        	<input type="text" id="prod_purchases" name="prod_purchases" class="input-xlarge form-control">
							      </div>
							      </div>
							    </div>
							</div>


							<div class="form-group">
							    <div class="control-group">
							      <div class="controls">
							      	<div class="col-sm-4">
								      <label class="control-label"  for="prod_views">Product Views</label>
							      	</div>
							      	<div class="col-sm-6">	
							        	<input type="text" id="prod_views" name="prod_views" class="input-xlarge form-control">
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
				</form>
        	</div>



                        	
                        <div class="tab-pane fade" id="tab2default">
                        	<form class="form-horizontal" action='' method="POST">
							 	<fieldset>
								    
									<div class="form-group">
							    <div class="control-group">
							      <div class="controls">
							      	<div class="col-sm-4">
								      <label class="control-label"  for="prod_views">Supplier ID</label>
							      	</div>
							      	<div class="col-sm-6">	
							        	<input type="text" id="prod_views" name="prod_views" class="input-xlarge form-control">
							      </div>
							      </div>
							    </div>
							</div><div class="form-group">
							    <div class="control-group">
							      <div class="controls">
							      	<div class="col-sm-4">
								      <label class="control-label"  for="prod_views">Supplier Name</label>
							      	</div>
							      	<div class="col-sm-6">	
							        	<input type="text" id="prod_views" name="prod_views" class="input-xlarge form-control">
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
							</form>
                        </div>



                        <div class="tab-pane fade" id="tab3default">
                        	
                       	<form class="form-horizontal" action='' method="POST">
							<fieldset>
							 
								<div class="form-group">
							    <div class="control-group">
							      <div class="controls">
							      	<div class="col-sm-4">
								      <label class="control-label"  for="prod_views">Category ID</label>
							      	</div>
							      	<div class="col-sm-6">	
							        	<input type="text" id="prod_views" name="prod_views" class="input-xlarge form-control">
							      </div>
							      </div>
							    </div>
							</div>

							<div class="form-group">
							    <div class="control-group">
							      <div class="controls">
							      	<div class="col-sm-4">
								      <label class="control-label"  for="prod_views">Category Name</label>
							      	</div>
							      	<div class="col-sm-6">	
							        	<input type="text" id="prod_views" name="prod_views" class="input-xlarge form-control">
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
						</form>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
</div> 