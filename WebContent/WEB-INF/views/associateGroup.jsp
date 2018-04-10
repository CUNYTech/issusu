<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %> 

<!doctype html>
<html lang="en">

<head>
	
	<title>Associate Group</title>
	
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
		<p>User <security:authentication property="principal.username" /> associated with  ${group.groupName} group successfully</p>
		<hr>
			<p>
		Group Name: ${group.groupName}
		<br><br>
		Max Group size: ${group.groupSize}
		<br><br>
		Donation frequency: ${group.howOften}
		<br><br>
		Payout Amount: ${group.payoutAmount}
		<br><br>
		Group End Date:${group.duration_weeks}
		
	</p>
	<hr>
	
		<!-- Add a logout button -->
		<form:form action="${pageContext.request.contextPath}/logout" 
				   method="POST">
			<input type="submit" value="Logout" />
		</form:form>
		<form:form action="${pageContext.request.contextPath}/" 
			   method="GET">
			<input type="submit" value="Home" />
		</form:form>
		<form:form action="${pageContext.request.contextPath}/" 
			   method="GET">
			<input type="submit" value="Home" />
		</form:form> 
		<form:form action="${pageContext.request.contextPath}/groups/findSusu" 
			   method="POST">
		<input type="submit" value="Find SUSU" />
	</form:form>
	</div>
</body>
</html>