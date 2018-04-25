<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
	<head>
		<title>Home Page(after login)</title>
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
			  <a href="#" style="margin-left: 100px;">Bio</a>
			  <br /> <br />
			  <a href="#">History of Payments</a>

		</div> 


		
		<article> 
		<div class="form-group">
	        <div class="col-xs-15">
	            <div>
				
					<!-- Check for registration error -->
					<c:if test="${groupError != null}">
				
						<div class="alert alert-danger col-xs-offset-1 col-xs-10">
							${groupError}
						</div>

					</c:if>
															
	            </div>
	        </div>
	    </div>
			<form:form action="${pageContext.request.contextPath}/payment/enrollGroup" modelAttribute="group"
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






