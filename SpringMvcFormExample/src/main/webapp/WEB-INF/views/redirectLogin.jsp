<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
		<form:form action="login" method="post" commandName="loginForm">
			<table border="0">
				<tr>
					<td colspan="2" align="center"><h2>Spring MVC Form Demo - Login</h2></td>
				</tr>
				<tr>
					<td>User Name:</td>
					<td><input type='text' name="Uname"> </td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type='password' name="Pwd"> </td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" value="Login" /></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html>