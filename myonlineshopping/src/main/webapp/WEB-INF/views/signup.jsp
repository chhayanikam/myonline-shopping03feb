<div class="container">
        <div class="row centered-form">
        <div class="col-sm-8 col-sm-offset-2">
        	<div class="panel panel-default">
        		<div class="panel-heading" style=" background: #11B09B; ">
			    		<h3 class="panel-title">Registration Form <small>Please fill the form</small></h3>
			 			</div>
			 			<div class="panel-body">
			    		<sf:form role="form">
			    			<div class="row">
			    				<div class="col-sm-6">
			    					<div class="form-group">
			                <input type="text" name="first_name" id="first_name" class="form-control" placeholder="First Name">
			    					</div>
			    				</div>
			    				<div class="col-sm-6">
			    					<div class="form-group">
			    						<input type="text" name="last_name" id="last_name" class="form-control" placeholder="Last Name">
			    					</div>
			    				</div>
			    			</div>

			    			<div class="form-group">
			    				<input type="email" name="email" id="email" class="form-control" placeholder="Email Address">
			    			</div>

			    			<div class="row">
			    				<div class="col-sm-6 ">
			    					<div class="form-group">
			    						<input type="number" name="mobile" id="mobile" class="form-control" placeholder="Contact Number">
			    					</div>
			    				</div>

			    				<div class="col-sm-6 ">
			    					<div class="form-group">
			    						<select name="carlist" form="carform" class="form-control">
										  <option value="">Role</option>
										  <option value="admin">Admin</option>
										  <option value="user">User</option>
										</select>
			    					</div>
			    				</div>
			    			</div>

			    			<div class="row">	
			    				<div class="col-sm-6">
			    					<div class="form-group">
			    						<input type="password" name="password" id="password" class="form-control" placeholder="Password">
			    					</div>
			    				</div>
			    			</div>
					
					<div class="row">	
			    		<div class="col-sm-6  col-sm-offset-3">
			    			<div class="form-group">			    			
			    				<input type="submit" style="background: #11B09B; " value="Register" class="btn btn-info btn-block">
			    			</div>
			    		</div>
			    	</div>
			    		
			    		</sf:form>
			    	</div>
	    		</div>
    		</div>
    	</div>
    </div>