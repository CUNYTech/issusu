<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- <nav id="nav12" class="navbar navbar-light justify-content-between">
  <a class="navbar-brand" href="${pageContext.request.contextPath}/"><img id="pic1" src="<c:url value="/static/images/logo1.png" />"/>
  	 <img id="pic2" src="<c:url value="/static/images/logo2.png" />"/>
  </a>
  <form class="form-inline">
  	<a class="btn btn-outline-success my-2 my-sm-0" class="btn btn-outline-success" href="${pageContext.request.contextPath}/showAbout">About</a>
    <a class="btn btn-outline-success my-2 my-sm-0" class="btn btn-outline-success" href="${pageContext.request.contextPath}/showMyLoginPage">Log In</a>
    <a class="btn btn-outline-success my-2 my-sm-0" class="btn btn-outline-success" href="${pageContext.request.contextPath}/register/showRegistrationForm">Sign Up</a>   
    <a class="btn btn-outline-success my-2 my-sm-0" class="btn btn-outline-success" href="${pageContext.request.contextPath}/home">Home</a>
  </form>
</nav> -->
<div id="nav12" class="header-blue">
    <nav class="navbar navbar-dark navbar-expand-md navigation-clean-search">
        <div class="container">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/">
                <img id="logo" src="<c:url value="/static/images/logo.png" /> "/>
            </a>
            <button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1">
                <span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon">
                </span>
            </button>
            <!-- <a class="navbar-brand" href="${pageContext.request.contextPath}/"><img id="pic1" src="<c:url value="/static/images/logo1.png" />"/>
            <img id="pic2" src="<c:url value="/static/images/logo2.png" />"/></a>  -->
            <div class="collapse navbar-collapse" id="navcol-1">
            <ul class="nav navbar-nav ml-auto">
                <li class="nav-item" role="presentation">
                    <a class="nav-link" href="${pageContext.request.contextPath}/showAbout" data-bs-hover-animate="flash">About</a>
                </li>
                <li class="nav-item" role="presentation" data-bs-hover-animate="flash">
                    <a class="nav-link" href="#">Features</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a class="nav-link" href="#" data-bs-hover-animate="flash">Team</a>
                </li>
                <li class="dropdown" data-bs-hover-animate="flash">
                    <a class="dropdown-toggle nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#" data-bs-hover-animate="flash">Need Help?</a>
                    <div class="dropdown-menu" role="menu">
                        <a class="dropdown-item" role="presentation" href="#">Contact Us</a><a class="dropdown-item" role="presentation" href="#">FAQ Page</a><a class="dropdown-item" role="presentation" href="#">Learn More</a>
                    </div>
                </li>
            </ul>
            <form class="form-inline mr-auto" target="_self">
            <div class="form-group">
                <label for="search-field"></label>
            </div>
            </form>
            <span class="navbar-text"> 
                <a href="${pageContext.request.contextPath}/register/showRegistrationForm" class="login">Sign Up</a>
                <a href="${pageContext.request.contextPath}/showMyLoginPage" class="login">Log In</a>
                <a href="${pageContext.request.contextPath}/home" class="login">Home</a></span>
        </div>
    </nav>
</div>