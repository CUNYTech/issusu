<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!doctype html>
<html lang="en">

<head>
	
	<title>Your Groups</title>
	
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
		<p>Groups</p>
		<hr>
		<p>
			<table style="width:100%">
			  <tr>
			    <th>Group Name</th>
			    <th>Group Size</th> 
			    <th>Often to donate</th>
			    <th>Payout Amount</th>
			  </tr>
			  <c:forEach items ="${groups}" var="group">
				  <tr>
				    <td><a href="${pageContext.request.contextPath}/groups/associateGroup?groupId=${group.id}">${group.groupName}</a></td>
				    <td>${group.groupSize}</td>
				    <td>${group.howOften}</td>
				    <td>${group.payoutAmount}</td>
				  </tr>
			  </c:forEach>
			</table>
			
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
	</div>
</body>
</html>