<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<spring:url value="/resources/yamm.css" var="yammCSS" />
<spring:url value="/resources/demo.css" var="demoCSS" />
<spring:url value="/resources/font_awesome_animation.css" var="font_awesome_animationCSS" />
<spring:url value="/resources/style.css" var="styleCSS" />

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
</div>
    
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
      </button>  
     
  </div>
   
</div>
   
  </div>
</nav>

</body>
</html>