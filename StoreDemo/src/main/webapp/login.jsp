<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Gaming Site | Login</title>
	<style type = "text/css">
	
		form {
 			 text-align: center;
 			 font-family: verdana, arial, sans-serif;
		}
	</style>
</head>
<body>
	<h1 align="center">ONLINE GAMING SITE LOGIN</h1>
	
		<form action ="login" method = "post" >
			Username <input type="text" name="username" placeholder="Enter your username"><br><br>
			Password <input type="password" name="password" placeholder="Enter your password"><br><br>
			<input type="submit" name="submit" value="Login">
		</form>
	
	

</body>
</html>