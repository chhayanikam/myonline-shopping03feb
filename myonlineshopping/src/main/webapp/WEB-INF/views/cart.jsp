<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="availableCount" value="${userModel.cart.cartLines}" />
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact Us</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

<div id="container">
	<div class="row">
<sf:form class="form-horizontal"  modelAttribute="listCart" method="GET" >
	
    <table class="table table-hover">
        <tr>
          <th>CartId</th>
            <th>productID</th>
            <th>Name</th>
            <th>Price</th>
            <th>Quantity</th>
             <th>
                    Total: <fmt:formatNumber type="currency">
                    ${total}
                </fmt:formatNumber>
                </th>
           <th style="text-align: right">
                Action
            </th>
        </tr>
        <c:forEach items="${listCart}" var="item">
            <tr>
            <td>${item.id}</td>
                <td>${item.productId}</td>
 				<td>product name tbd</td>              
                <td>
                    <fmt:formatNumber type="currency">
                        ${item.buyingPrice}
                    </fmt:formatNumber>
                </td>
                <td>
                    <input type="number" id="productCount" name="productCount"
                           value="${item.productCount}" style="width: 50px"/>
                </td>
                <td>
                    <fmt:formatNumber type="currency">
                        ${item.buyingPrice.longValue()*item.productCount}
                    </fmt:formatNumber>
                </td>
                <td style="text-align: right">
                    <a href="<c:url value="/cart/remove/${item.id}" />"
                       class="btn btn-danger" onclick="return confirm('Are you sure?'')">Remove</a>
                    <a href="<c:url value="/cart/update"/>" + "?id=" + ${item.id} + "&productCount=" + productCount />" class="btn btn-success">Update</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</sf:form>
</div>
<hr/>
<div class="row">
    <div class="col-lg-6">
        <a href="<c:url value="/"/>" class="btn btn-success">Back to shopping</a>    
    </div>
    <div class="col-lg-6" style="text-align: right">
        <a href="<c:url value="/cart/order"/> " class="btn btn-primary">Purchase</a>
    </div>
</div>

<script type="text/javascript">

    function update(quantity, id) {
        window.location = "<c:url value="/cart/update"/>" + "?id=" + id + "&quantity=" + quantity;
    }

</script>
	
	</div>

	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</body>
</html>