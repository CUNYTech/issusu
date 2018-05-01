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
		<hr>
		<div class="form-group">
	        <div class="col-xs-15">
	            <div>
				
					<!-- Check for registration error -->
					<c:if test="${successFeed}">
				
						<div class="alert alert-success" role="alert">
							<spring:message code="feed.creation.success"/>
						</div>

					</c:if>
															
	            </div>
	        </div>
	    </div>
		<!-- Place for messages: error, alert etc ... -->
		<form:form action="${pageContext.request.contextPath}/feeds/createFeed" modelAttribute="feed" method="POST">
	    	<!-- User name -->
			<div style="margin-bottom: 25px" class="input-group">
				<table style="border: 0px;">
					<tr>
						<td>User <security:authentication property="principal.username" /> bought &nbsp;</td>
						<td><form:input path="comment" placeholder="comment" class="form-control no-border" cssStyle="border: none;box-shadow: none;"/></td>
						<td>&nbsp;with money from susu and saved!</td>
					</tr>
				</table>
			</div>
			<button type="submit" class="btn btn-primary">Post</button>
		</form:form>
	<hr>
	
		<!-- Add a logout button -->
		<form:form action="${pageContext.request.contextPath}/logout" 
				   method="POST">
			<input type="submit" value="Logout" />
		</form:form> 
		<br>
		<form:form action="${pageContext.request.contextPath}/home" 
			   method="GET">
			<input type="submit" value="Home" />
		</form:form>
	</div>
</body>
</html>