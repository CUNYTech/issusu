<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link href="<c:url value="/static/css/SignUp.css" />" rel="stylesheet" type="text/css" >

  </head>

  <body>

    <div></div>
    <div>
        <div class="header-blue">
            <nav class="navbar navbar-dark navbar-expand-md navigation-clean-search">
                <div class="container">
                <a class="navbar-brand" href="${pageContext.request.contextPath}/"><img id="logo" src="<c:url value="/static/images/logo.png" /> "/> </a>
                <button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                <!-- <a class="navbar-brand" href="${pageContext.request.contextPath}/"><img id="pic1" src="<c:url value="/static/images/logo1.png" />"/>
                <img id="pic2" src="<c:url value="/static/images/logo2.png" />"/></a>  -->
                    <div
                        class="collapse navbar-collapse" id="navcol-1">
                        <ul class="nav navbar-nav ml-auto">
                            <li class="nav-item" role="presentation"><a class="nav-link" href="${pageContext.request.contextPath}/showAbout" data-bs-hover-animate="flash">About</a></li>
                            <li class="nav-item" role="presentation" data-bs-hover-animate="flash"><a class="nav-link" href="#">Features</a></li>
                            <li class="nav-item" role="presentation"><a class="nav-link" href="#" data-bs-hover-animate="flash">Team</a></li>
                            <li class="dropdown" data-bs-hover-animate="flash"><a class="dropdown-toggle nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#" data-bs-hover-animate="flash">Need Help?</a>
                                <div class="dropdown-menu" role="menu"><a class="dropdown-item" role="presentation" href="#">Contact Us</a><a class="dropdown-item" role="presentation" href="#">FAQ Page</a><a class="dropdown-item" role="presentation" href="#">Learn More</a></div>
                            </li>
                        </ul>
                        <form class="form-inline mr-auto" target="_self">
                            <div class="form-group"><label for="search-field"></label>
                            </div>
                        </form><span class="navbar-text"> 
                        <a href="${pageContext.request.contextPath}/register/showRegistrationForm" class="login">Sign Up</a>
                        <a href="${pageContext.request.contextPath}/showMyLoginPage" class="login">Log In</a>
                        <a href="${pageContext.request.contextPath}/home" class="login">Home</a></span>
                        </div>
                       
        </div>
        </nav>
        
		
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
	</div>
	</div>
        
        <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
   	    <script src="<c:url value='/static/js/script1.js' />" type="text/javascript"></script> -->
   	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
    <!--<script src="assets/js/script.min.js"></script> -->
	</body>
</html>
