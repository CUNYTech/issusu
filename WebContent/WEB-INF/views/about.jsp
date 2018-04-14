<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
    
<!DOCTYPE html>
<html>
	<head>
		<title>JQuery</title>
		<!-- this is google cdn of JQuery -->
		<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>-->
		<!-- compiled and minified css cdn-->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
		<link href="<c:url value="/static/css/navbar.css" />" rel="stylesheet" type="text/css" > 
		<link href="<c:url value="/static/css/about.css" />" rel="stylesheet" type="text/css" >

	</head>
	<body>
		<div id="navigation"><jsp:include page="navbar.jsp"></jsp:include></div>
		<br><br><br>
		<div class="container">
			<h3>About Us</h3>
			<p> People collected money as a group for many years to save for short-term goals when there were no banks or banks were not convinient. And people still do that but it is limited to families and close friends. FastSusu is an application that allows you to collect money in an approved group of people with no interest. You can choose what group to participate in or create your own and invite people over. </p>
			<h4>How does FastSusu work?</h4>

				<p>Every group sets up a cycle and a total amount of money that should be collected within the cycle. During the cycle members of the group contribute equal amounts of money to collect total sum. Once the cycle ends the whole amount is received by one of the members of the group. Then cycle repeats until every participant recieves their sum.
					<br>
				For example, a group of 10 people agrees on bi-weekly cycle and a total amount of 5000 dollars. Thus during the next two weeks each member will contribute 500 dollars. The money collected i.e $5000 ($500*10) will go to one of the members. Next two weeks the group will contribute another 500 dollars and other member of the group will receive the total amount. This continues until all 10 members receive their $5000. Who decides to get the money in which cycle is based on a need of each member and a mutual agreement.</p>
		</div>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    	<script type="text/javascript" src="<c:url value="/static/js/script1.js" />"></script>
	</body>
</html>