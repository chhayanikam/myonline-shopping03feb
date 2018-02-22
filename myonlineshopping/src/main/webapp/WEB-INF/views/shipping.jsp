<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
.img-rounded {
	
}
</style>
<script type="text/javascript">
     $(document).ready(function(){
              $('#cod').hide(); 
             $('input[type="radio"]').click(function() {
                 if($(this).attr('id') == 's-option') {
                      $('#cod').show();
                       $('#payment').hide(); 
                             
                 }
                 else  {   
                          $('#cod').hide();
                       $('#payment').show();  
                 }
             });
     })
   </script>
<title>Home Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<!-- <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"> -->
</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
	<div>
		<div class="row">
			<div class="col-sm-12">
				<div class="titleDiv">BILLING INFORMATION</div>
			</div>
		</div>
		<div class="col-sm-3">
			<div class="billingAddress">
				<p>
					<strong>${user.name } <br>
					</strong>
				</p>
				<p>
					<strong>${user.address }</strong>
				</p>
				<button type="button" id="billing_addr" onclick="/invoice" name=""
					class="btn signInBtn">Confirm Order</button>
			</div>
		</div>
		<div class="row breatheLess" id="shipping">
			<div class="col-sm-12">
				<div class="titleDiv">TOTAL</div>
			</div>
		</div>

				<div class="row breatheLess">
			<div class="col-sm-12">
				<div class="titleDiv">Payment Method</div>
			</div>
		</div>

		<div class="row radioDiv">
			<div class="col-sm-12">
				<ul>
					<li><input type="radio" value="Card Payment" id="f-option"
						name="selector" checked="true" rel="1"> <label
						for="f-option">Card Payment</label>

						<div class="check"></div></li>

					<li><input type="radio" value="Cash On Delivery" id="s-option"
						name="selector" rel="2"> <label for="s-option">Cash
							On Delivery</label>
						<button class="btn signInBtn" type="submit"
							onclick="ccav_checkout()">Place Order by card</button>
						<div class="check">
							<div class="inside"></div>
						</div> <img src="img/payments.png"
						style="max-width: 250px; margin-top: 10px;"><br></li>

				</ul>
			</div>

		</div>
		<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</body>
</html>