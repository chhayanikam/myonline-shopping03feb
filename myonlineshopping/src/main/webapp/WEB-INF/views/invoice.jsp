<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="spring" uri="http://www.springframework.org/tags" %>
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
<div>
<div class="row">
			<div class="col-sm-12">
				<div class="table-responsive">
					<table class="table">
						<tbody>
							<tr>
								<td>Subtotal</td>
								<td><i class="fa fa-inr"></i> 8100</td>
							</tr>
							<tr>
								<td>Shipping Charges(Priority Tracked Delivery)</td>
								<td><i class="fa fa-inr"></i> 0</td>
							</tr>
							<tr>
								<td>Grand Total</td>
								<td><i class="fa fa-inr"></i> 8100</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
</div>
<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</body>
</html>