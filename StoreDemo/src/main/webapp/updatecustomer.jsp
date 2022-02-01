<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
         //fetch the parmeter through pass data coming from the user account page
		String id = request.getParameter("id");
                                           //useraccountvalue
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("username");
		String password = request.getParameter("password");

%>

		<form action="update" method="post">

			 Customer ID <input type="text" name="cusid" value="<%=id %>" readonly><br><br> 
			 Name <input type="text" name="name" value="<%=name %>"><br><br>
			 Email <input type="text" name="email" value="<%=email %>"><br><br>
			 Phone Number <input type="text" name="phone" value="<%=phone %>"><br><br>
			 UserName<input type="text" name="uname" value="<%=username %>"><br><br>
			 Password<input type="password" name="pass" value="<%=password %>"><br><br>
			 
			 <input type="submit" name="submit" value="Update My Data"><br><br>
 
</body>
</html>