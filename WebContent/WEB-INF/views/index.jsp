<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link href="<c:url value="/static/css/navbar.css" />" rel="stylesheet" type="text/css" >
    <link href="<c:url value="/static/css/index.css" />" rel="stylesheet" type="text/css" >
    <link href="<c:url value="/static/css/StartSusu.css" />" rel="stylesheet" type="text/css" >
    
    <title>Landing Page</title>
  </head>

  <body>

    <div id="navigation"><jsp:include page="navbar.jsp"></jsp:include></div>

    <div class="bg"></div>
    <div class="jumbotron">

    <h1>Savings Just Got Easier.</h1>
      <h2>Join a group and save up your finances in a fast and easy way. </h2>
      <p><a class="button1  btn-lg" href="${pageContext.request.contextPath}/showAbout" role="button">Learn more</a></p>
      <p><a class="button2  btn-lg" href="${pageContext.request.contextPath}/showMyLoginPage" role="button">Get Started</a></p>
    </div>



    <div class="row">
	    <div class="col">
	        <div class="card">
	            <div class="card-body text-center">
	                <h5 class="card-title">What is Fastsusu?</h5>
	                <p class="card-text">People have used susu for many years to save money for short-term goals when there was no banks or banks are not convinient.
	                Susu is still present in many communities but is limited between families and close friends.</p>
	                <a href="#" class="card-link"> Need more Info?</a>
	            </div>
	        </div>
	    </div>
	
	    <div class="col">
	        <div class="card">
	            <div class="card-body text-center">
	                <h5 class="card-title">How it Works?</h5>
	                <p class="card-text">Group members meet on bi-weekly or monthly basis, depending on what group decides on All Members contribute euqal amount of money to reach a certain goal and one of the member recieves it in the first cycle.</p>
	                <a href="#" class="card-link">Need Example?</a>
	            </div>
	        </div>
	    </div>
	</div>
  
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="<c:url value="/static/js/script1.js" />" type="text/javascript"></script>

  </body>
</html>
