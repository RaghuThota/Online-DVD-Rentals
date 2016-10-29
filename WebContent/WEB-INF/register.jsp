<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page contentType="text/html; charset=ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Nomdadic Pulse | Register Page</title>
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
	<div class="registration">
		<div class="registration_left">
		<h2>new user? <span> create an account </span></h2>
		<!-- [if IE] 
		    < link rel='stylesheet' type='text/css' href='ie.css'/>  
		 [endif] -->  
		  
		<!-- [if lt IE 7]>  
		    < link rel='stylesheet' type='text/css' href='ie6.css'/>  
		<! [endif] -->  
		<script>
			(function() {
		
			// Create input element for testing
			var inputs = document.createElement('input');
			
			// Create the supports object
			var supports = {};
			
			supports.autofocus   = 'autofocus' in inputs;
			supports.required    = 'required' in inputs;
			supports.placeholder = 'placeholder' in inputs;
		
			// Fallback for autofocus attribute
			if(!supports.autofocus) {
				
			}
			
			// Fallback for required attribute
			if(!supports.required) {
				
			}
		
			// Fallback for placeholder attribute
			if(!supports.placeholder) {
				
			}
			
			// Change text inside send button on submit
			var send = document.getElementById('register-submit');
			if(send) {
				send.onclick = function () {
					this.innerHTML = '...Sending';
				}
			}
		
		})();
		</script>
		 <div class="registration_form">
		 <!-- Form -->
			<form:form id="registration_form" action="doRegister" commandName="command" method="POST">
				<div>
					<label>
					 <form:input path = "firstName" placeholder="first name:"/> 
					</label>
				</div>
				<div>
					<label>
						 <form:input path = "lastName" placeholder="last name:"/> 
					</label>
				</div>
				<div>
					<label>
						 <form:input path = "emailAddress" placeholder="email address:"/>
					</label>
				</div>
				<div>
					<label>
					 <form:textarea path = "address" cols="60" rows="4" placeholder="Address:" />
						
					</label>
				</div>
				<div class="sky-form">
					<div class="sky_form1">
						<ul>
							
							Male<form:radiobutton  path = "gender" value = "M"/> 
							
							Female <form:radiobutton path = "gender" value = "F"/>
							<div class="clearfix"></div>
						</ul>
					</div>
				</div>
				<div>
					<label>
						 <form:password path = "password" placeholder="password"/> 
					</label>
				</div>						
				
				<div>
					 <form:password path = "re_password" placeholder="Retype password"/> 
				</div>
				<div class="sky-form">
					<label class="checkbox"><input type="checkbox" name="checkbox" ><i></i>i agree to OnlineDVDRentals.com &nbsp;<a class="terms" href="#"> terms of service</a> </label>
				</div>
				<div class="registration_form">
				<form:button name="submit" value="Register" id="register-submit"></form:button></div>
			</form:form>
			<!-- /Form -->
		</div>
	</div>
	
	<div class="clearfix"></div>
	</div> 
	<!-- end registration -->
</div>
</div>
<br></br>  

			<%@ include file="Footer.jsp"%>
</body>
</html>