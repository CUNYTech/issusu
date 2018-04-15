<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>FastSusu Sign Up</title>
		<!-- this is google cdn of JQuery -->
		<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>-->
		<!-- compiled and minified css cdn-->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
		<link href="<c:url value="/static/css/navbar.css" />" rel="stylesheet" type="text/css" >
	    <link href="<c:url value="/static/css/SignUp.css" />" rel="stylesheet" type="text/css" >

	</head>

	<body>
		<div id="navigation"><jsp:include page="navbar.jsp"></jsp:include></div>
		
		<h1 align="center">Sign Up and Start Saving Today</h1>
			
			<div class="panel panel-primary">

				<div class="panel-heading">
					<div class="panel-title" align="center"><h3><b>Create New Account</b></h3></div>
				</div>
					<div id="loginbox" style="margin-top: 50px;"
			class="mainbox col-md-3 col-md-offset-2 col-sm-6 col-sm-offset-2" align="center">
				<div style="padding-top: 30px" class="panel-body">

					<!-- Registration Form -->
					<form:form action="${pageContext.request.contextPath}/register/processRegistrationForm" 
						  	   modelAttribute="crmUser"
						  	   class="form-horizontal">

					    <!-- Place for messages: error, alert etc ... -->
					    <div class="form-group">
					        <div class="col-xs-15">
					            <div>
								
									<!-- Check for registration error -->
									<c:if test="${registrationError != null}">
								
										<div class="alert alert-danger col-xs-offset-1 col-xs-10">
											${registrationError}
										</div>
		
									</c:if>
																			
					            </div>
					        </div>
					    </div>

						<div style="margin-bottom: 25px" class="input-group">
							<label for="User Name"><b>User Name</b></label>
							&nbsp; &nbsp;
	    					<form:input path="userName" placeholder="username" class="form-control" />
    					</div>
    					
    					
						<div style="margin-bottom: 25px" class="input-group">
							<label for="password"><b>Password</b></label>
							&nbsp; &nbsp;
							<form:password path="password" placeholder="password" class="form-control" />
						</div>


						<div style="margin-top: 10px" class="form-group">						
							<div class="col-sm-6 controls">
								<button  type="submit" class="btn btn-primary">Sign Up</button>
							</div>
						</div>
						
					</form:form>


				</div>
			</div>
		</div>

        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
   	    <script src="<c:url value='/static/js/script1.js' />" type="text/javascript"></script>
	</body>
</html>
