<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Fastsusu Access Denied</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link href="<c:url value="/static/css/navbar.css" />" rel="stylesheet" type="text/css" >
    <link href="<c:url value="/static/css/index.css" />" rel="stylesheet" type="text/css" >
</head>


<body>
  <div id="navigation"><jsp:include page="navbar.jsp"></jsp:include></div>

	<h2 align="center">You are not authorized to access this resource.</h2>
	<br><br><br><br><br>
	<hr>
	
	<a href="${pageContext.request.contextPath}/">Back</a>
	
</body>

</html>