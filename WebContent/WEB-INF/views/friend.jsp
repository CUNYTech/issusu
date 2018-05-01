<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!doctype html>
<html lang="en">

<head>
	
	<title>Your Friends</title>
	
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<!-- Reference Bootstrap files -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
	<link href="<c:url value="/static/css/navbar.css" />" rel="stylesheet" type="text/css" >

</head>

<body>
<div id="navigation"><jsp:include page="navbar.jsp"></jsp:include></div>
	<div>
		<p>User: <security:authentication property="principal.username" /> Friends</p>
		<hr>
		<!-- Place for messages: error, alert etc ... -->
	    <div class="form-group">
	        <div class="col-xs-15">
	            <div>
				
					<!-- Check for registration error -->
					<c:if test="${friendError != null}">
				
						<div class="alert alert-danger col-xs-offset-1 col-xs-10">
							${friendError}
						</div>

					</c:if>
															
	            </div>
	        </div>
	    </div>
		<form:form action="${pageContext.request.contextPath}/friends/associateFriend" modelAttribute="friend" method="POST">
	    	<!-- User name -->
			<div style="margin-bottom: 25px" class="input-group">
				<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> 
				
				<form:input path="friendName" placeholder="userName" class="form-control" cssStyle="width:150px;"/>
				<div class="col-sm-6 controls">
				<button type="submit" class="btn btn-primary">Add Friend</button>
				</div>
			</div>
		</form:form>
			<table style="width:100%">
			  <tr>
			    <th>Friend Name</th>
			  </tr>
			  <c:forEach items ="${friends}" var="friend">
				  <tr>
				    <td>${friend.friendName}</td>
				    <td><a href="${pageContext.request.contextPath}/friends/removeFriend?friendId=${friend.friendId}">Remove</a></td>
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