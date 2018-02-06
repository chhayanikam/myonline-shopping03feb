<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
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

<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
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
<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</body>
</html>