<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<div class="container">
        <div class="row centered-form">
        <div class="col-sm-8 col-sm-offset-2">
        	<div class="panel panel-default">
        		<div class="panel-heading" style=" background: #11B09B; ">
			    		<h3 class="panel-title">Login Form <small>Please fill the form</small></h3>
			 			</div>
			 			<div class="panel-body">
			    		<sf:form role="form">
			    			<div class="row">
			    				<div class="col-sm-6 col-sm-offset-3">
			    					<div class="form-group">
			                			<sf:input type="text" path="firstName" id="firstName" class="form-control" placeholder="Email ID" />
			    					</div>
			    				</div>
			    			</div>
			    				<div class="row">
			    				<div class="col-sm-6 col-sm-offset-3">
			    					<div class="form-group">
			    						<sf:input type="password" path="password" id="mobile" class="form-control" placeholder="Password" />
			    					</div>
			    				</div>
			    			</div>

					
					<div class="row">	
			    		<div class="col-sm-6  col-sm-offset-3">
			    			<div class="form-group">			    			
			    				<sf:input type="submit" value="Login"  path="" class="btn btn-info btn-block" style="background: #11B09B;" />
			    			</div>
			    		</div>
			    	</div>
			    		
			    		</sf:form>
			    	</div>
	    		</div>
    		</div>
    	</div>
    </div>
