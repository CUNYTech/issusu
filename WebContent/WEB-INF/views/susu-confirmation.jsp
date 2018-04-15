<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<!doctype html>
<html lang="en">

<head>
	
	<title>Your Group Page</title>
	
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<!-- Reference Bootstrap files -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link href="<c:url value="/static/css/navbar.css" />" rel="stylesheet" type="text/css" >
    <link href="<c:url value="/static/css/StartSusu.css" />" rel="stylesheet" type="text/css" >
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body>
 	<div id="navigation">
 		<jsp:include page="navbar.jsp"></jsp:include>
 	</div>
 	
	<div>
		<p>Your Group was registered successfully</p>
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
	</div>
</body>
</html>