<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Register</h2>
	<form action="RegisterServlet" method="post">
			Fisrt name:<input type="text" name="first_name"></input>
			Last Name:<input type="text" name="last_name"></input>
			Register Username:<input type="text" name="user_name"></input>
			Password:<input type="password" name="password"></input>
			Confirm Password:<input type="password" name="c_password"></input>
			<input type="submit"></input>
	</form>
</body>
</html>