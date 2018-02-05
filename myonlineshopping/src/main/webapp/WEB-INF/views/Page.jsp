<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- for datatables-->
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css"/>
 
<script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>OnLine shopping - ${title}</title>
</head>
<body>
you are at ${contextRoot}
<!-- Include the header file -->
 <jsp:include page="./shared/header.jsp"></jsp:include>  

<!-- Load the home page when user clicks Home -->
<c:if test="${userClickHome==true}" >
 <jsp:include page="home.jsp"></jsp:include>
</c:if>

<!-- Load the about page when user clicks About -->
<c:if test="${userClickAbout==true}" >
 <jsp:include page="about.jsp"></jsp:include>
</c:if>

<!-- Load the home page when user clicks Home -->
<c:if test="${userClickContact==true}" >
 <jsp:include page="contact.jsp"></jsp:include>
</c:if>

<!-- Load the login page when user clicks Login -->
<c:if test="${userClickLogin==true}" >
 <jsp:include page="login.jsp"></jsp:include>
</c:if>

<!-- Load the signup page when user clicks Signup -->
<c:if test="${userClickSignup==true}" >
 <jsp:include page="signup.jsp"></jsp:include>
</c:if>


<!-- Load the signup page when user clicks Signup -->
<c:if test="${userClickAdmin==true}" >
 <jsp:include page="admin.jsp"></jsp:include>
</c:if>

<!-- Load the product Listing page when user clicks listProducts -->
<c:if test="${userClickListProducts==true}" >
 <jsp:include page="listProducts.jsp"></jsp:include>
</c:if>

  <!-- Include the footer file -->
 <jsp:include page="./shared/footer.jsp"></jsp:include>

</body>
</html>    
