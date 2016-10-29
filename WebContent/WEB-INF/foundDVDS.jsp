<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<link href="http://www.jqueryscript.net/css/jquerysctipttop.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="pluginCssAndJs/Cover3D.css">
<script src="pluginCssAndJs/Cover3D.js"></script>


<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary JavaScript plugins) -->
<script type='text/javascript' src="js/jquery-1.11.1.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!--//theme-style-->
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Playfair+Display:400,700,900' rel='stylesheet' type='text/css'>
<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<script src="js/menu_jquery.js"></script>
<script src="js/simpleCart.min.js"> </script>


</head>
<body>

<%@include file="Header.jsp"%>

 <form:form action="cart" modelAttribute="cart" commandName="dvdModel"   method="post">
  

	<c:forEach var="dvd" items="${foundDVDS}" varStatus="outerLoop">

		<div class="container">

			<div class="col-md-2">
				
				
				<table>
				<tbody>
				<tr>
				<%-- <div id="${outerLoop.index}"> --%>
				<td>
					<img src="${dvd.getImagePath()}" width="300" height="300"/>
			</td>
				</tr>
				<tr>
				<td>DVD Name : 
			"${dvd.getDvdName()}" <%-- <form:input path="dvdName"/><br/> --%> </td> </tr>
			<tr>
				<td>DVD Category : 
				"${dvd.getDvdCategory() }" <%-- <form:input path="dvdCategory"/><br/> --%> </td>
				</tr>
				<%-- <td>
			"${dvd.getDvdName()}" <form:input path="dvdName"/><br/> </td> </tr>
			<tr> --%>	<%-- <td>
			"${dvd.getDvdDescription() }" <form:input path="dvdDescription"/><br/> </td></tr> --%>
			<tr><td>DVD Price :$ "${dvd.getDvdPrice() }"  <%-- <form:input path="dvdPrice"/><br/> --%></td></tr>
			<!-- <div class="item_add"><span class="item_price"> --><!-- <a href="/OnlineDVDRentals/cart">add to cart</a> -->
		
			 </tbody>
			 </table>	<input type="hidden" id="dvdId" name="dvdId" value="<c:out value="${dvd.id}"/>"/>
			 <input type="submit" value="Add to Cart"/>
			 
			 <!-- </span> -->
			<!-- 	<script>
				var  idNew = "<c:out value="${outerLoop.index}"/>";
				alert("idNew"+idNew)
					$('#'+idNew).CoverTresD({
						color : '#f00'
					});
				</script> -->
				
			
			</div>
		</div>
			
	</c:forEach>
		</form:form>

<%@ include file="Footer.jsp"%>
</body>
</html>