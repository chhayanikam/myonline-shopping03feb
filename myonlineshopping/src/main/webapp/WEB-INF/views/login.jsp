<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<style>
.img-rounded
{
 
}
</style>
<title> Login Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<!-- <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"> -->
</head>

<body>

<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<div class="container">
	<c:if test="${not empty message}">
		<div class="row">
			<div class="col-xs-12 col-md-offset-2 col-md-8">
				<div class="alert alert-danger fade in">${message}</div>
			</div>
		</div>
	</c:if>
         
   	<c:if test="${not empty logout}">
		<div class="row">
			<div class="col-xs-12 col-md-offset-2 col-md-8">
				<div class="alert alert-success">${logout}</div>
			</div>
		</div>
	</c:if>

        <div class="row centered-form">
        <div class="col-sm-8 col-sm-offset-2">
        	<div class="panel panel-default">
        		<div class="panel-heading" style=" background: #11B09B; ">
			    		<h3 class="panel-title">Login Form <small>Please fill the form</small></h3>
			 			</div>
			 			<div class="panel-body">
			    		<sf:form role="form" modelAttribute="model" method="POST" action="${contextRoot}/login" >
			    			<div class="row">
			    				<div class="col-sm-6 col-sm-offset-3">
			    					<div class="form-group">
			                			<input type="text" name="username" id="username" class="form-control" placeholder="Email ID" required/>
			    					</div>
			    				</div>
			    			</div>
			    				<div class="row">
			    				<div class="col-sm-6 col-sm-offset-3">
			    					<div class="form-group">
			    						<input type="password" name="password" id="password" class="form-control" placeholder="Password" required/>
			    					</div>
			    				</div>
			    			</div>

					
					<div class="row">	
			    		<div class="col-sm-6  col-sm-offset-3">
			    			<div class="form-group">			    			
			    			<input type="hidden"  name="${_csrf.parameterName}"   value="${_csrf.token}"/>
			    				<input type="submit" value="Login"  path="" class="btn btn-info btn-block" style="background: #11B09B;" />
			    			</div>
			    		</div>
			    	</div>
			    		
			    		</sf:form>
				       	<div class="text-right">
       						New User - <a href="${contextRoot}/signup">Register Here</a>
       					</div>

			    	</div>
	    		</div>
    		</div>
    	</div>
    </div>
<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</body>
</html>