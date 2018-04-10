<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<!doctype html>
<html lang="en">

<head>
	
	<title>Register New User Form</title>
	
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
	
		<form:form action="processStartSusuForm" modelAttribute="group">
		
		<div>To Start a SUSU group fill out the fields below</div>
		<!-- Place for messages: error, alert etc ... -->
	    <c:if test="${groupError != null}">
		    <div class="form-group">
		        <div class="col-xs-5">
					<!-- Check for registration error -->
					<div class="alert alert-danger col-xs-offset-1 col-xs-10">
						${groupError}
					</div>
		        </div>
		    </div>
	    </c:if>
	    <br><br><br>
		Group Name: <form:input path="groupName"/>
		<br><br>
		
		Group Size: <form:input path="groupSize" />
		<br><br>
		
		How often to donate?:
                  <form:radiobutton path = "howOften" value = "Monthly" label = "Monthly" />
                  <form:radiobutton path = "howOften" value = "BiWeekly" label = "Bi-Weekly" />
		<br><br>
		
		Payout Amount: <form:input path="payoutAmount" /> 
		<!-- Have to add reference to amounts.properties file (See bottom section in pom.xml) -->
		<br><br>
		
		<form:form action="${pageContext.request.contextPath}/groups/processStartSusuForm" 
			   method="POST">
			<input type="submit" value="Submit"/>
		</form:form>
		
		<br><br>
		<!-- Add a logout button -->
		<form:form action="${pageContext.request.contextPath}/logout" 
			   method="POST">
			<input type="submit" value="Logout" />
		</form:form>
		<form:form action="${pageContext.request.contextPath}/" 
			   method="GET">
			<input type="submit" value="Home" />
		</form:form>
		</form:form>
		
	</div>
</body>
</html>