<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>NomadicPulse | Profile Home</title>
</head>
<body>
<%@ include file="Header.jsp"%>


<h1>This is profile page</h1>

 <div align="center">
        <table border="0">
            <tr>
                <td colspan="2" align="center"><h2>Login Succeeded!</h2></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <h3>Thank you for Logging in! Here's the review of your details:</h3>
                </td>
            </tr>
            <tr>
                <td>User Name:</td>
                <td>${loginForm.firstName}</td>
            </tr>
            <tr>
                <td>E-mail:</td>
                <td>${loginForm.emailAddress}</td>
            </tr>
          
 
        </table>
    </div>
 
 
 
 
<%@ include file="Footer.jsp"%>
</body>
</html>