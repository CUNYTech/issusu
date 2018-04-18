<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Susu Home Page</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link href="<c:url value="/static/css/navbar.css" />" rel="stylesheet" type="text/css" >
    <link href="<c:url value="/static/css/StartSusu.css" />" rel="stylesheet" type="text/css" >
</head>

<body>
	 <div id="navigation"><jsp:include page="navbar.jsp"></jsp:include></div>
	<hr>
				<h2 align="center">Welcome to your home page, <security:authentication property="principal.username" />!</h2>
	<hr>
	 <div class="vertical-menu">
		 	  <img src="<c:url value="/static/images/face.jpeg"/>">
			  <!-- <a href="#" class="active">Home</a> -->
			  <br /><br />
			  <a href="#" style="margin-left: 100px;">Achievements</a>
		</div> 
							<!-- display user name and role -->
							
							<!-- 	<p> -->
							<%-- 		User: <security:authentication property="principal.username" /> --%>
							<!-- 		<br><br> -->
							<%-- 		Role(s): <security:authentication property="principal.authorities" /> --%>
							<!-- 	</p> -->
	<div style="float: left;">
		<!-- Add a FEED button -->
		<form:form action="${pageContext.request.contextPath}/feeds/showFeedForm" 
				   method="POST">
			&nbsp;&nbsp;<input type="submit" value="Feed" />
		</form:form>
		<br>
		
		<!-- Add "My Groups" button -->
		<form:form action="${pageContext.request.contextPath}/groups/userGroups" 
				   method="GET">
			&nbsp;&nbsp;<input type="submit" value="My Groups" />
		</form:form>
		<br>
		
		<!-- Add Friends button -->
		<form:form action="${pageContext.request.contextPath}/friends/showFriends" 
				   method="GET">
			&nbsp;&nbsp;<input type="submit" value="Friends" />
		</form:form>
		<br>
		
		<!-- Add "Find SUSU" button -->
		<form:form action="${pageContext.request.contextPath}/groups/findSusu" 
				   method="POST">
			&nbsp;&nbsp;<input type="submit" value="Find SUSU" />
		</form:form>
		<br>
		
		<!-- Add Account button -->
		<form:form action="${pageContext.request.contextPath}/account" 
				   method="POST">
			&nbsp;&nbsp;<input type="submit" value="Account" />
		</form:form>
		<br>
		
			<!-- Add "Start SUSU" button -->
		<form:form action="${pageContext.request.contextPath}/groups/showStartSusuForm" 
				   method="GET">
			&nbsp;&nbsp;<input type="submit" value="Start SUSU" />
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
			&nbsp;&nbsp;<input type="submit" value="Logout" />
		</form:form>
	</div>
	<div style="float: right;margin-right: 50px;">
		<div class="row">
		    <div class="col">
		        <div class="card">
		            <div class="card-body text-center">
		                <h5 class="card-title">User's Feeds</h5>
		                <c:forEach items="${feeds}" var="feed">
			                <a href="#" class="card-link">${feed.userName} on ${feed.creationDate}</a>
			                <p class="card-text">
			                	${feed.comment}
			                </p>
			                <br/>
		               </c:forEach>
		            </div>
		        </div>
		    </div>
		</div>
	</div>
</body>

</html>









