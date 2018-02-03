<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
    
     <div class="navbar-header">
    <ul class="nav navbar-nav navbar-left">
    <li><a href="${contextRoot}/home"><span class="glyphicon glyphicon-home"></span> Home</a></li>
      <li><a href="${contextRoot}/signup"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="${contextRoot}/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      <li><a href="${contextRoot}/listproducts"> List Products</a></li>
      <li><a href="${contextRoot}/about"> About us</a></li>
      <li><a href="${contextRoot}/contact"><span class="glyphicon glyphicon-envelope"></span> Contact us</a></li>
      <li><a href="${contextRoot}/admin">Admin</a></li>
    </ul>
   
     <div class="collapse navbar-collapse" id="myNavbar">
    <ul class="nav navbar-nav">     
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Products
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Sarees Category 1</a></li>
          <li><a href="#">Kurtis Category 2</a></li>
          <li><a href="#">Lehnga Category 3</a></li>
        </ul>
      </li>
     
    </ul>
     <form class="navbar-form navbar-left" action="index.html">
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Search">
      </div>
      <button type="submit" class="btn btn-default">Submit</button>
    </form>
</div>
    
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
      </button>  
      <a class="navbar-brand" href="#">Ecommerce App</a>
  </div>
   
</div>
   
  </div>
</nav>

</body>
</html>