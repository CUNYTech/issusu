<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav id="nav12" class="navbar navbar-light justify-content-between">
  <a class="navbar-brand" href="${pageContext.request.contextPath}/"><img id="pic1" src="<c:url value="/static/images/logo1.png" />"/><img id="pic2" src="<c:url value="/static/images/logo2.png" />"/></a>
  <form class="form-inline">
  	<a class="btn btn-outline-success my-2 my-sm-0" class="btn btn-outline-success" href="${pageContext.request.contextPath}/showAbout">About</a>
    <a class="btn btn-outline-success my-2 my-sm-0" class="btn btn-outline-success" href="${pageContext.request.contextPath}/showMyLoginPage">Log In</a>
    <a class="btn btn-outline-success my-2 my-sm-0" class="btn btn-outline-success" href="${pageContext.request.contextPath}/register/showRegistrationForm">Sign Up</a>   
    <!-- <a class="btn btn-outline-success my-2 my-sm-0" class="btn btn-outline-success" href="./index.html">Home</a> -->
  </form>
</nav>