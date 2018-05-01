<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
	<head>
		<title>Start Susu Group</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
		<link href="<c:url value="/static/css/navbar.css" />" rel="stylesheet" type="text/css" >
	    <link href="<c:url value="/static/css/index.css" />" rel="stylesheet" type="text/css" >
		<link href="<c:url value="/static/css/StartSusu.css" />" rel="stylesheet" type="text/css" >
	</head>

	<body>


		<div id="navigation"><jsp:include page="navbar.jsp"></jsp:include></div>
		<div class="vertical-menu">
		 	  <img src="<c:url value="/static/images/face.jpeg"/>">
			  <!-- <a href="#" class="active">Home</a> -->
			  <br /><br />
			 <!-- <a href="#" style="margin-left: 100px;">Achievements</a> -->
		 
							<!-- display user name and role -->
							
							<!-- 	<p> -->
							<%-- 		User: <security:authentication property="principal.username" /> --%>
							<!-- 		<br><br> -->
							<%-- 		Role(s): <security:authentication property="principal.authorities" /> --%>
							<!-- 	</p> -->
	<!-- <div style="float: left;">-->
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
			
		<article> 
			<form:form action="${pageContext.request.contextPath}/groups/processStartSusuForm" modelAttribute="group"
				   method="POST">
					<br />
					&nbsp;&nbsp;Group Name <br />
					&nbsp;&nbsp;<form:input path="groupName"/>
					<br />
					&nbsp;&nbsp;Number of Participants<br />
					&nbsp;&nbsp;<form:input path="groupSize"/>
	                <br />
	
					&nbsp;&nbsp;Pot Size<br />
					&nbsp;&nbsp;<form:input path="payoutAmount" /> 
	                <br />
	                <br />
	
					&nbsp;&nbsp;Please select your donation frequency:
					<br />
					&nbsp;&nbsp;<form:radiobutton path = "howOften" value = "Monthly" label = "Monthly" />
	                <form:radiobutton path = "howOften" value = "BiWeekly" label = "Bi-Weekly" />
	
	<!-- 				<button onclick="myFunction3()">Alert</button> -->
	<!-- 	            <p id="demo3"></p> -->
					<br/>
	
					&nbsp;&nbsp;Enter your starting date:<br/>
					&nbsp;&nbsp;<form:input path="startDate" /> 
					<br/><br/>
					
		            &nbsp;&nbsp;<button onclick="myFunction2()">Calculate your end date</button>
					<br/>

                    &nbsp;&nbsp;Your money day:<p id="demo1"></p> 
                    <br />
                    &nbsp;&nbsp;Last payment date: <p id="demo2"></p>
                    <br/>

					&nbsp;&nbsp;<form:button type="submit">Start Group</form:button>
	
	 			</form:form>
		</article>
     



    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
   	<script src="<c:url value='/static/js/script1.js' />" type="text/javascript"></script>

	</body>
</html>






