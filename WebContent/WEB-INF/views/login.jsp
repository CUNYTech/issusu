<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>LogIn to Fastsusu</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link href="<c:url value="/static/css/navbar.css" />" rel="stylesheet" type="text/css" >
    <link href="<c:url value="/static/css/index.css" />" rel="stylesheet" type="text/css" >
</head>


<body>
  <div id="navigation"><jsp:include page="navbar.jsp"></jsp:include></div>

  <div style="text-align: center;">
<h1>Already Saving? Sign-in Here.</h1>
</div>

  <form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST">
  	<div class="container">
  
      <p>--------</p> <!-- needed a solution for spacing issue   -->
        <div class="form-input">
          <input type="text"name="username" placeholder="Username">
        </div>

        <div class="form-input">
          <input type="password" name="password" placeholder="Password">
        </div>

        <input type="submit" name="submit" value="LOGIN" class="btn-login">

      </div>
      <a href="#">Forgot password?</a> |
      <a href="#"> Don't have an account?</a>
      <p>--------</p>
      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    </form>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
     <script src="<c:url value='/static/js/script1.js' />" type="text/javascript"></script>

</body>

</html>
