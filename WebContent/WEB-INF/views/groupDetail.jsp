<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!doctype html>
<html lang="en">

<head>
	
	<title>Your Group Page</title>
	
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<!-- Reference Bootstrap files -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link href="<c:url value="/static/css/navbar.css" />" rel="stylesheet" type="text/css" >
	<link href="<c:url value="/static/css/SignUp.css" />" rel="stylesheet" type="text/css" >
	    
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body>
<%-- 	<div id="navigation"><jsp:include page="navbar.jsp"></jsp:include></div> --%>

	<div>
		<p>Group: ${group.groupName}</p>
		<hr>
			<table style="width:100%">
			  <tr>
			    <th>User Name</th>
			    <th>Winners</th> 
			    <th>Current Cycle</th>
			  </tr>
			  <c:forEach items ="${groupUsers}" var="user">
				  <tr>
				    <td>${user.userName}</td>
				    <td>Cycle ${user.userGroupId}</td>
				    <td>OK</td>
				  </tr>
			  </c:forEach>
			</table>	
	<hr>
	
		<!-- Add a logout button -->
		<form:form action="${pageContext.request.contextPath}/logout" 
				   method="POST">
			<input type="submit" value="Logout" />
		</form:form> 
		<br/><br/>
		<form:form action="${pageContext.request.contextPath}/home" 
			   method="GET">
			<input type="submit" value="Home" />
		</form:form>
	</div>
</body>
</html>