<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="/WEB-INF/css/style.css" rel="stylesheet" >
<title>Create a new Account |New User</title>
</head>
<body>

<!--dob,gender,IGN (dev username - special)-->

	<form action="insert" method="post">
		Name <input type="text" name="name"><br>
		Email <input type="text" name="email"><br>
		Phone Number <input type="text" name="phone"><br>
		Username <input type="text" name="uid"><br>
		Password <input type="password" name="psw"><br>
		
		<input type="submit" name="submit" value="Create Customer">
	</form>
</body>
</html>