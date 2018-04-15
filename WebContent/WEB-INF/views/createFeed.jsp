<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!doctype html>
<html lang="en">

<head>
	
	<title>Feeds</title>
	
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<!-- Reference Bootstrap files -->
	<link rel="stylesheet"
		 href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	
	<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body>
	<div>
		<p>User: <security:authentication property="principal.username" /> Friends</p>
		<hr>
		<!-- Place for messages: error, alert etc ... -->
		<form:form action="${pageContext.request.contextPath}/feeds/createFeed" modelAttribute="feed" method="POST">
	    	<!-- User name -->
			<div style="margin-bottom: 25px" class="input-group">
				User <security:authentication property="principal.username" />
				<P>
				<form:input path="comment" placeholder="comment" class="form-control" cssStyle="width:250px;"/>
				<spring:message code="feeds.createion.message"/>
				<button type="submit" class="btn btn-primary">Post</button>
				</P>
			</div>
		</form:form>
	<hr>
	
		<!-- Add a logout button -->
		<form:form action="${pageContext.request.contextPath}/logout" 
				   method="POST">
			<input type="submit" value="Logout" />
		</form:form> 
		<form:form action="${pageContext.request.contextPath}/home" 
			   method="GET">
			<input type="submit" value="Home" />
		</form:form>
	</div>
</body>
</html>