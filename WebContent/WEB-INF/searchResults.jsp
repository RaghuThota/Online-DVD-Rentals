<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Search Results | Online DVD Store</title>
<meta charset="utf-8" />
<link rel="stylesheet" href="css/style2.css" media="screen" type="text/css" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.shop.js"></script>
</head>

<body>
	<%@include file="Header.jsp"%>
<c:forEach var="dvd" items="${foundDVDS}" varStatus="outerLoop">
<div id="site">

	
		<div id="products">
			<ul>
				<li>
					<div class="product-image">
						<img src="${dvd.getImagePath()}" alt="" />
					</div>
					<div class="product-description">
						<h3 class="product-name">${dvd.getDvdName()}</h3>
						<h3 class="product-name">${dvd.getDvdCategory() }</h3>
						<h3 class="product-name">${dvd.getDvdDescription() }</h3>
						<p class="product-price">&euro; ${dvd.getDvdPrice() }</p>
						<form action = "cart" method="get">  <!-- class="add-to-cart" action="/OnlineDVDRentals/cart" method="get" -->
							<div>
								<label for="qty-1">Quantity</label>
								<input type="text" name="qty-1" id="qty-1" class="qty" value="1" />
							</div>
							<p> <input type="submit" value="Add to cart" class="btn" /> 
							
							<!-- <a href="/OnlineDVDRentals/cart">Add to cart</a> --></p> 
						
							
						</form>
					</div>
				</li>
						
			</ul>
		</div>
	</div>
	
	

</div>

	</c:forEach>
</body>
</html>	