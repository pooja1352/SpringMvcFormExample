<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%-- <head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>

<style type="text/css">

/* The navigation bar */
.navbar {
    overflow: hidden;
    background-color: #333;
    position: fixed; /* Set the navbar to fixed position */
    top: 0; /* Position the navbar at the top of the page */
    width: 100%; /* Full width */
}

/* Links inside the navbar */
.navbar a {
    float: left;
    display: block;
    color: #f2f2f2;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

/* Main content */
.main {
    margin-top: 30px; /* Add a top margin to avoid content overlay */
}

</style>
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
		
		<div>
  			<a href="#home">Home</a>
  			<a href="#news">News</a>
  			<a href="#contact">Contact</a>
		</div>

<div class="main">
  <p>Some text some text some text some text..</p>
</div>
		
		
		
		<table align="center">
            <tr>
                <td><a href="login">Login</a>
                </td>
                <td><a href="register">Register</a>
                </td>
            </tr>
        </table>
	</div>
</body>

 --%>

<!--  -->
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>3 Column Layout</title>
	<style type="text/css">

		/* Layout */
		body {
			min-width: 630px;
		}

		#container {
			padding-left: 200px;
			padding-right: 190px;
		}
		
		#container .column {
			position: relative;
			float: left;
		}
		
		#center {
			padding: 10px 20px;
			width: 100%;
		}
		
		#left {
			width: 180px;
			padding: 0 10px;
			right: 240px;
			margin-left: -100%;
		}
		
		#right {
			width: 130px;
			padding: 0 10px;
			margin-right: -100%;
		}
		
		#footer {
			clear: both;
		}
		
		/* IE hack */
		* html #left {
			left: 150px;
		}

		/* Make the columns the same height as each other */
		#container {
			overflow: hidden;
		}

		#container .column {
			padding-bottom: 1001em;
			margin-bottom: -1000em;
		}

		/* Fix for the footer */
		* html body {
			overflow: hidden;
		}
		
		* html #footer-wrapper {
			float: left;
			position: relative;
			width: 100%;
			padding-bottom: 10010px;
			margin-bottom: -10000px;
			background: #fff;
		}

		/* Aesthetics */
		body {
			margin: 0;
			padding: 0;
			font-family:Sans-serif;
			line-height: 1.5em;
		}
		
		p {
			color: #555;
		}

		nav ul {
			list-style-type: none;
			margin: 0;
			padding: 0;
		}
		
		nav ul a {
			color: darkgreen;
			text-decoration: none;
		}

		#header, #footer {
			font-size: large;
			padding: 0.3em;
			background: #BCCE98;
		}

		#left {
			background: #DAE9BC;
		}
		
		#right {
			background: #F7FDEB;
		}

		#center {
			background: #fff;
		}

		#container .column {
			padding-top: 1em;
		}
		
	</style>
	
	
</head>

<body>

	<header id="header"><p>Selenium Testing application</p></header>

	<div id="container">

		<main id="center" class="column">
			<article>
			
				<h1>Heading</h1>
				<p>We are going to do some POC for selenium testing with docker.Still in progress the website</p>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br><br>
					<br><br>
					<br><br>
					
					<br><br><br><br>
					<br><br>
					<br><br>
					<br><br>
			</article>								
		</main>

		<nav id="left" class="column">
			
			<ul>
				<li><a href="login">Login</a></li>
				
			</ul>
			
			<ul>
				<li><a href="register">Register</a></li>
				
			</ul>

		</nav>

		<div id="right" class="column">
		</div>

	</div>

	<div id="footer-wrapper">
		<footer id="footer"><p>© 2017 Exilant technology pvt ltd, Inc all rights reserved</p></footer>
	</div>

</body>

<!--  -->



</html>