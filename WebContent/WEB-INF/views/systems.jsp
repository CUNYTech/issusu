<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!doctype html>
<html>

<head>
	<title>SYSTEM Admin Home Page</title>
</head>

<body>

<h2>SYSTEMS Admin Home Page</h2>

<hr>

<p>
	We have our annual holiday Caribbean cruise coming up. Register now!
	<br>
	Keep this trip a secret, don't tell the regular employees LOL :-)
</p>

<hr>

<form:form action="${pageContext.request.contextPath}/home" 
			   method="GET">
			<input type="submit" value="Home" />
		</form:form>
</body>

</html>









