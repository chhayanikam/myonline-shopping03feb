<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

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
<title> List products by category</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<!-- <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"> -->
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
</head>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.16/datatables.min.css"/>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div>
<sf:form class="form-horizontal" modelAttribute="listallproducts"  
                        method="POST"
                        enctype="multipart/form-data">
<table class="table table-striped">
  <thead>
    <tr>
     <th>Product Id</th>
      <th>Product Name</th>
      <th>Brand</th>
      <th>Product Description</th>
      <th>Product Image</th>
    </tr>
  </thead>
  
  <tbody>
    <c:if test="${empty listallproducts}">
      <tr>
        <td colspan="8">No products to Display</td>
      </tr>
    </c:if>
    <c:if test="${not empty listallproducts}">
      <c:forEach items="${listallproducts}" var="p">
        <tr class="">
        <td>${p.id}</td>
          <td>${p.name}</td>
          <td>${p.brand}</td>
          <td>${p.description}</td>
          <td><img src="<spring:url value="resources/${p.code}.jpg/"></spring:url>" width="100px" height="100px" /> </td>
             <td><security:authorize access="hasRole('ROLE_ADMIN')">
				<a href="${contextRoot}/admin/EditProduct?id=${p.id}" class="btn btn-success">
				<span class="glyphicon glyphicon-pencil"></span> Edit</a>				
			</security:authorize>	
			 </td>      
        </tr>
      </c:forEach>
    </c:if>
  </tbody>
</table>
</sf:form>
</div>

 <jsp:include page="footer.jsp"></jsp:include>
   </body>
  </html>