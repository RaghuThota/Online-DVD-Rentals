<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page contentType="text/html; charset=ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Nomadic Pulse | Login</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary JavaScript plugins) -->
<script type='text/javascript' src="js/jquery-1.11.1.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Gretong Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Playfair+Display:400,700,900' rel='stylesheet' type='text/css'>
<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<script src="js/menu_jquery.js"></script>
</head>
<body>
<!-- header_top -->
<%@ include file="Header.jsp"%>
<!-- header -->

 <!-- content -->
<div class="container">
<div class="main">
	<!-- start registration -->
	
	<div class="registration_left">
		<h2>existing user</h2>
		 <div class="registration_form">
		 <!-- Form -->
			 <form id="registration_form" action="/OnlineDVDRentals/doLogin" commandName="loginForm" method="POST">
				<div>
					<label>
						 <form:input path = "emailAddress" placeholder="email address:"/>
					</label>
				</div>
				<div>
					<label>
						 <form:password path = "password" placeholder="password"/> 
					</label>
				</div>						
				<div>
					<form:button name="submit"  value="sign in" id="register-submit"></form:button>
				</div>
				<!-- <div class="forget">
					<a href="#">forgot your password</a>
				</div> -->
			</form>
			<!-- /Form -->
			</div>
	</div>
	<div class="clearfix"></div>
	</div> 
	<!-- end registration -->
</div>

<br></br>  

			<%@ include file="Footer.jsp"%>
</body>
</html>