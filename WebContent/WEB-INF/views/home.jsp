<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>

<head>
	<title>Susu Home Page</title>
</head>

<body>
	<h2>Susu Home Page</h2>
	<hr>
	
	<p>
	Welcome to the Susu home page!
	</p>
	
	<hr>
	
	<!-- display user name and role -->
	
	<p>
		User: <security:authentication property="principal.username" />
		<br><br>
		Role(s): <security:authentication property="principal.authorities" />
	</p>
	
	<!-- Add a FEED button -->
	<form:form action="${pageContext.request.contextPath}/feed" 
			   method="POST">
	
		<input type="submit" value="Feed" />
	</form:form>
	
	<!-- Add "My Groups" button -->
	<form:form action="${pageContext.request.contextPath}/groups/userGroups" 
			   method="GET">
	
		<input type="submit" value="My Groups" />
	</form:form>
		
	<!-- Add Friends button -->
	<form:form action="${pageContext.request.contextPath}/friends" 
			   method="POST">
	
		<input type="submit" value="Friends" />
	</form:form>
	
	<!-- Add "Find SUSU" button -->
	<form:form action="${pageContext.request.contextPath}/groups/findSusu" 
			   method="POST">
	
		<input type="submit" value="Find SUSU" />
	</form:form>
	
	<!-- Add Account button -->
	<form:form action="${pageContext.request.contextPath}/account" 
			   method="POST">
	
		<input type="submit" value="Account" />
	</form:form>
	
		<!-- Add "Start SUSU" button -->
	<form:form action="${pageContext.request.contextPath}/groups/showStartSusuForm" 
			   method="GET">
	
		<input type="submit" value="Start SUSU" />
	</form:form>
	
	
	
	
	
	
	<security:authorize access="hasRole('MANAGER')">
	
		<!-- Add a link to point to /leaders ... this is for the managers -->
		
		<p>
			<a href="${pageContext.request.contextPath}/leaders">Leadership Meeting</a>
			(Only for Manager peeps)
		</p>

	</security:authorize>	
	
	
	<security:authorize access="hasRole('ADMIN')">  

		<!-- Add a link to point to /systems ... this is for the admins -->
		
		<p>
			<a href="${pageContext.request.contextPath}/systems">IT Systems Meeting</a>
			(Only for Admin peeps)
		</p>
	
	</security:authorize>
	
	<hr>
	
	
	<!-- Add a logout button -->
	<form:form action="${pageContext.request.contextPath}/logout" 
			   method="POST">
	
		<input type="submit" value="Logout" />
	
	</form:form>
	
</body>

</html>









