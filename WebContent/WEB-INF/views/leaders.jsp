<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!doctype html>
<html>

<head>
	<title>LEADERS Home Page</title>
</head>

<body>

<h2>LEADERS Home Page</h2>

<hr>

<p>
	See you in Brazil ... for our annual Leadership retreat!
	<br>
	Keep this trip a secret, don't tell the regular employees LOL :-)
</p>

<hr>
<a href="${pageContext.request.contextPath}/friends/removeFriend?friendId=${friend.friendId}">Back</a>
<form:form action="${pageContext.request.contextPath}/home" 
			   method="GET">
			<input type="submit" value="Home" />
		</form:form>
</body>

</html>









