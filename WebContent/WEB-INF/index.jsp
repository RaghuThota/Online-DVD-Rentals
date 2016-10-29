<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Welcome to NomadicPulse | Home</title>

<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary JavaScript plugins) -->
<script type='text/javascript' src="js/jquery-1.11.1.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="https://fonts.googleapis.com/css?family=Yellowtail" rel="stylesheet">
<!-- Custom Theme files -->
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Gretong Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	addEventListener("load", function() {
		setTimeout(hideURLbar, 0);
	}, false);
	function hideURLbar() {
		window.scrollTo(0, 1);
	}
</script>
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Playfair+Display:400,700,900'
	rel='stylesheet' type='text/css'>
<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/demo.css">
<script type="text/javascript" src="js/megamenu.js"></script>
<script>
	$(document).ready(function() {
		$(".megamenu").megamenu();
	});
</script>
<script src="js/menu_jquery.js"></script>
<script src="js/simpleCart.min.js">
	
</script>
<script src="js/jbar.js">
	
</script>
<script src="js/jbar.min.js">
	
</script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script>
	$(function() {
		$('nav li ul').hide().removeClass('fallback');
		$('nav li').hover(function() {
			$('ul', this).stop().slideToggle(200);
		});
	});
</script>
</head>
<body>
	<!-- header_top -->
	<div class="top_bg">
		<div class="container">
			<div class="header_top">
				<div class="top_right">
					<ul>
						<li><a href="#">help</a></li>|
						<li><a href="contact.jsp">Contact</a></li>|
						<li><a href="howItWorks.jsp">How It Works</a></li>
					</ul>
				</div>
				<div class="top_left">
					<h2>
						<span></span> Call us : 816 1234 567
					</h2>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- 	header -->
	<div class="header_bg">
		<div class="container">
			<div class="header">
				<div class="head-t">
					<div class="logo">
						<a href="/OnlineDVDRentals/home"><img src="images/logo.png"
							class="img-responsive" alt="" /> </a>
					</div>
					<!-- start header_right -->
					<div class="header_right">
						<div class="rgt-bottom">
							<div class="log">
								<div class="login">
									<div id="loginContainer">


										<a href="/OnlineDVDRentals/login" id="loginButton"><span>Login</span></a>
										<div id="loginBox">
											<form id="loginForm">
												<fieldset id="body">
													<fieldset>
														<label for="email">Email Address</label> <input
															type="text" name="email" id="email">
													</fieldset>
													<fieldset>
														<label for="password">Password</label> <input
															type="password" name="password" id="password">
													</fieldset>
													<input type="submit" id="login" value="Sign in"> <label
														for="checkbox"><input type="checkbox"
														id="checkbox"> <i>Remember me</i></label>
												</fieldset>
												<span><a href="/OnlineDVDRentals/register">Forgot
														your password?</a></span>
											</form>
										</div>
									</div>
								</div>
							</div>
							<div class="reg">
								<a href="/OnlineDVDRentals/register">REGISTER</a>

							</div>


							<div class="clearfix"></div>
						</div>
						<div class="search">
							<form action="doSearch" method="post">
								<input type="text" name="searchText" value=""
									placeholder="search..."> <input type="submit" value="">
							</form>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
				</div>
				<!-- start header menu -->
				<ul class="megamenu skyblue">


					<li><a class="color2" href="/OnlineDVDRentals/home">Home</a></li>

					<li class="grid"><a class="color2"
						href="/OnlineDVDRentals/games">Be a Nomad</a> <!-- <div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
							<h4>Clothing</h4>
									<ul>
									<li><a href="#">Meet Nomads</a></li>
									<li><a href="#l">Hang Out with Nomads</a></li>
									<li><a href="#">Be a Local Nomad</a></li>
									<li><a href="#">Find out Local Nomads</a></li>
									
								</ul>	
							</div>							
						</div> -->
					<li class="grid"><a class="color2"
						href="/OnlineDVDRentals/mp3">Meet Nomads</a></li>
					<li class="grid"><a class="color2"
						href="/OnlineDVDRentals/softwares">Hang Out with Nomads</a></li>
					<!-- <li class="grid"><a class="color2" href="/OnlineDVDRentals/softwares">Be a Local Nomad</a></li>
						<li class="grid"><a class="color2" href="/OnlineDVDRentals/softwares">Find out Local Nomads</a>
					</li> -->
					<li class="grid"><a class="color2"
						href="/OnlineDVDRentals/softwares">Fund Your Travel</a></li>
					<li class="grid"><a class="color2"
						href="/OnlineDVDRentals/softwares">Join Nomadic Events</a></li>
				</ul>
			</div>


			<div class="arriv-bottm">
				<div class="col-md-8 arriv-left1">
					<img src="images/3.jpg"  class="img-responsive" alt="" align="middle">
					<div class="arriv-info1">
						<p style="color:red;"><font style="">KICK OFF THE TRAVEL BUG IN YOU</font></p>
						<p style="color:red;">LETS GO SOMEWHER</p>
						<br></br>
						<div class="crt-btn">
							<a href="details.html"><h1>BE A NOMAD</h1></a>
						</div>
					</div>
				</div>
			</div>

</div>
</div>

<br></br> <br></br><br></br> <br></br><br></br> 

			<%@ include file="Footer.jsp"%>
</body>
</html>