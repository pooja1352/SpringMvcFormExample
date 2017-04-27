<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.*" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration Success</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div align="center">
		<table border="2" class = "table table-striped" style="width:50%;background-color: lightgray;margin-top: 60px;">
			<tr>
				<td colspan="2" align="center"><h2>Registration Succeeded!</h2></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<h4>Thank you for registering! Here's the review of your details:</h4>
				</td>
			</tr>
			<tr>
				<td>User Name:</td>
				<td>${userForm.username}</td>
			</tr>
			<tr>
				<td>E-mail:</td>
				<td>${userForm.email}</td>
			</tr>
			<tr>
				<td>Birthday:</td>
				<td>${userForm.birthDate}</td>
			</tr>
			<tr>
				<td>Profession:</td>
				<td>${userForm.profession}</td>
			</tr>
			 
		</table>
		<button type="button" class="btn btn-info" style="width: 131px;"><a href="login">Login</a></button>
	</div>
	
</body>
</html>