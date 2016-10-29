<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<title>Online DVD Rentals: Your Shopping Cart</title>
<meta charset="utf-8" />
<link rel="stylesheet" href="css/style2.css" media="screen" type="text/css" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.shop.js"></script>
</head>

<body>

<!-- <div id="site">
 -->	
 
<%@include file="Header.jsp"%>
	<div id="content">
		<h1>Your DVD Shopping Cart</h1>
		<%-- <form id="shopping-cart" action="cart.html" method="post"> --%>
		<form:form modelAttribute="cart">
			<table class="shopping-cart">
			  <thead>
				<tr>
					<th scope="col">DVD Name</th>
					<th scope="col">DVD Category</th>
					<th scope="col">DVD Description</th>
					<th scope="col">DVD Price</th>
				</tr>
			  </thead>
			  <tbody>
			 
			  <c:forEach var="dvd" items="${addedItem}" > 
			  <tr>
			  <td>"${dvd.dvdName}"</td>
			<td>"${dvd.dvdCategory}"</td>
			<td>"${dvd.dvdDescription }"</td>
		
			<td>"${dvd.dvdPrice }"</td>
			  </tr>
			  </c:forEach>
			  	
				  
			
			  </tbody>
			</table>
			<p id="sub-total">
				<strong>Sub Total</strong>: <span id="stotal"></span>
			</p>
			<ul id="shopping-cart-actions">
				<!-- <li>
					<input type="submit" name="update" id="update-cart" class="btn" value="Update Cart" />
				</li> -->
				<li>
					<input type="submit" name="update" value="Update Cart" class="btn" style="background-color:green" />
				</li>
				<li>
					<input type="submit" name="delete"  class="btn" value="Empty Cart" style="background-color:green"/>
				</li>
				<li>
					<a href="/OnlineDVDRentals/home" class="btn" style="background-color:green">Continue Shopping</a>
				</li>
				<li>
					<a href="checkout.html" class="btn" style="background-color:green">Go To Checkout</a>
				</li>
			</ul>
		</form:form>
	</div>
	
	

<!-- </div> -->

<%@ include file="Footer.jsp"%>

</body>
</html>	