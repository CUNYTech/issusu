<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Landing page</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link href="<c:url value="/static/css/navbar.css" />" rel="stylesheet" type="text/css" >
    <!--  also feed(home page) href should be here -->
    <link href="<c:url value="/static/css/styles.min.css" />" rel="stylesheet" type="text/css" >

  </head>

  <body>

    <div></div>
    <div>
    <div id="navigation"><jsp:include page="navbar.jsp"></jsp:include></div>
        <!-- <div class="header-blue">
            <nav class="navbar navbar-dark navbar-expand-md navigation-clean-search">
                <div class="container">
                <a class="navbar-brand" href="${pageContext.request.contextPath}/"><img id="logo" src="<c:url value="/static/images/logo.png" /> "/> </a>
                <button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                <!-- <a class="navbar-brand" href="${pageContext.request.contextPath}/"><img id="pic1" src="<c:url value="/static/images/logo1.png" />"/>
                <img id="pic2" src="<c:url value="/static/images/logo2.png" />"/></a>  -->
                    <!--<div
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
                            <div class="form-group"><label for="search-field"></label></div>
                        </form><span class="navbar-text"> 
                        <a href="${pageContext.request.contextPath}/register/showRegistrationForm" class="login">Sign Up</a>
                        <a href="${pageContext.request.contextPath}/showMyLoginPage" class="login">Log In</a>
                        <a href="${pageContext.request.contextPath}/home" class="login">Home</a></span>
                        </div>
        </div>
        </nav> -->
        
      <div class="container hero">
            <div class="row">
                <div class="col-12 col-lg-6 col-xl-5 offset-xl-1">
                    <h1 class="text-center mt-auto" style="height:98px;"><strong>Saving Just Got Easier.</strong></h1>
                    <p class="text-center text-sm-center text-lg-center text-xl-center" style="height:113px;">Today, millions of people find it hard to save. So we built a platform to help with that. Join a group and stay on track to save up your finances in a fast &amp; convenient way.</p><button class="btn btn-light btn-lg mr-auto action-button"
                        type="button" style="padding:7px;width:451px;">Learn More</button></div>
                <div class="col-md-5 col-lg-5 offset-lg-1 offset-xl-0 d-none d-lg-block phone-holder">
                    <div class="iphone-mockup"><img class="device" style="width:388px;margin:-43px;" src="<c:url value="static/images/mockup-pc1.png" /> "/></div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <div data-bs-parallax-bg="true" style="height:500px;background-image:url(static/images/neonbrand-395170-unsplash.jpg);background-position:center;background-size:cover;"></div>
    <div class="highlight-phone">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="intro">
                        <h2>Simple. Fast. Savings.&nbsp;</h2>
                        <p>Create an account to start saving within of group of friends or a community. Once you start a group, Fastsusu will be your guide to keep you on track to meet your goals and make great connections while doing it.&nbsp;</p><a class="btn btn-primary"
                            role="button" href="${pageContext.request.contextPath}/register/showRegistrationForm">Sign Up</a></div>
                </div>
                <div class="col-sm-4">
                    <div class="d-none d-md-block iphone-mockup"><img src="static/images/iphone.svg" class="device">
                        <div class="screen" style="background-image:url(&quot;static/images/jimi-filipovski-189724-unsplash.jpg&quot;);"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="article-list">
        <div class="container">
            <div class="intro" style="height:127px;">
                <h2 class="text-center" style="height:56px;">Learn More</h2>
                <p class="text-center">Nunc luctus in metus eget fringilla. Aliquam sed justo ligula. Vestibulum nibh erat, pellentesque ut laoreet vitae. </p>
            </div>
            <div class="row articles">
                <div class="col-sm-6 col-md-4 item"><a href="#"><img class="img-fluid" src="static/images/if_thefreeforty_mobilemoney_1243694.png"></a>
                    <h3 class="name">What is Fastsusu?</h3>
                    <p class="description">People have used various forms of "group savings" for centuries. Communities came together to collect funds as a form of social gathering. Susu is still present in many communities but is limited between families and close friends.
                        We wish to give the user the option to save within a close knit group, or conveniently join an outside community</p><a href="#" class="action"><i class="fa fa-question-circle-o"></i></a></div>
                <div class="col-sm-6 col-md-4 item"><a href="#"><img class="img-fluid" src="static/images/if_business-money-cash-salary-stack-outline-stroke_763510.png"></a>
                    <h3 class="name">How Does it work?</h3>
                    <p class="description">Group members can save on a bi-weekly or monthly basis, depending on what group decides on - All members contribute an equal amount of money at the start of the "susu" to reach a certain goal. Once the money is collected, the sum goes
                        to one member. The cycle continues every month until each member has a turn at collecting.</p><a href="#" class="action"><i class="fa fa-question-circle-o"></i></a></div>
                <div class="col-sm-6 col-md-4 item"><a href="#"><img class="img-fluid" src="static/images/if_icon-ios7-people-outline_211792.png"></a>
                    <h3 class="name">Who can join?</h3>
                    <p class="description">In order to make an account with fastsusu, the user must be over the age of 18. Once an account is created, you will have access to view the features of the application. However, the user cannot start or join a group until all financial
                        credentials are met. It is required that the user enter all personal information beforehand.&nbsp;</p><a href="#" class="action"><i class="fa fa-question-circle-o"></i></a></div>
            </div>
        </div>
    </div>
    <div class="features-blue">
        <div class="container">
            <div class="intro" style="height:150px;">
                <h2 class="text-center">Features</h2>
                <p class="text-center">Here's why Fastsusu is the go-to choice for group savings.&nbsp;</p>
            </div>
            <div class="row features">
                <div class="col-sm-6 col-md-4 item"><i class="fa fa-map-marker icon"></i>
                    <h3 class="name">Track your finances</h3>
                    <p class="description">Easily track your finances in your account page. From there you can see your past &amp; upcoming payments and collection dates.&nbsp;</p>
                </div>
                <div class="col-sm-6 col-md-4 item"><i class="fa fa-clock-o icon"></i>
                    <h3 class="name">Reliable</h3>
                    <p class="description">We work with the best software platform to handle funds that go in and out of your account.&nbsp;</p>
                </div>
                <div class="col-sm-6 col-md-4 item"><i class="fa fa-check-circle icon"></i>
                    <h3 class="name">Verified Users</h3>
                    <p class="description">We use a verification process for all user information. An account must be verified before the user can start saving within a group.&nbsp;</p>
                </div>
                <div class="col-sm-6 col-md-4 item"><i class="fa fa-user icon"></i>
                    <h3 class="name">Connect with friends</h3>
                    <p class="description">Easily add your contacts with an e-mail or phone number. Then connect with friends that have successfully created an account to start saving.&nbsp;</p>
                </div>
                <div class="col-sm-6 col-md-4 item"><i class="fa fa-plane icon"></i>
                    <h3 class="name">Fast&nbsp;</h3>
                    <p class="description">Our platform delivers and receives payments immediately. We deposit and withdrawal upon request to create a fast &amp; convenient way of saving.</p>
                </div>
                <div class="col-sm-6 col-md-4 item"><i class="fa fa-envelope-o icon"></i>
                    <h3 class="name">Notifications</h3>
                    <p class="description">Stay on top of your payments and recieve notifications when a payment is about to occur. &nbsp;</p>
                </div>
            </div>
        </div>
    </div>
    <div class="team-clean">
        <div class="container">
            <div class="intro">
                <h2 class="text-center" style="height:53px;">Meet the Fastsusu Team </h2>
                <p class="text-center">Our team is dedicated to creating a platform that is user-friendly</p>
            </div>
            <div class="row people">
                <div class="col-md-6 col-lg-4 item"><img class="rounded-circle" src="static/images/Screen Shot 2018-04-04 at 1.51.39 PM.png">
                    <h3 class="name">Amarou Bah</h3>
                    <p class="title">&nbsp;Back End Developer</p>
                    <p class="description">Aenean tortor est, vulputate quis leo in, vehicula rhoncus lacus. Praesent aliquam in tellus eu gravida. Aliquam varius finibus est, et interdum justo suscipit id. Etiam dictum feugiat tellus, a semper massa. </p>
                    <div class="social"><a href="#"><i class="fa fa-facebook-official"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-instagram"></i></a></div>
                </div>
                <div class="col-md-6 col-lg-4 item"><img class="rounded-circle" src="static/images/Screen Shot 2018-04-04 at 1.49.44 PM.png">
                    <h3 class="name">Guzel Kisselev</h3>
                    <p class="title">Front End Developer</p>
                    <p class="description">Aenean tortor est, vulputate quis leo in, vehicula rhoncus lacus. Praesent aliquam in tellus eu gravida. Aliquam varius finibus est, et interdum justo suscipit id. Etiam dictum feugiat tellus, a semper massa. </p>
                    <div class="social"><a href="#"><i class="fa fa-facebook-official"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-instagram"></i></a></div>
                </div>
                <div class="col-md-6 col-lg-4 item"><img class="rounded-circle" src="static/images/Screen Shot 2018-04-04 at 2.01.19 PM.png">
                    <h3 class="name">Kimberly John</h3>
                    <p class="title">Founder / Front End Developer</p>
                    <p class="description">Aenean tortor est, vulputate quis leo in, vehicula rhoncus lacus. Praesent aliquam in tellus eu gravida. Aliquam varius finibus est, et interdum justo suscipit id. Etiam dictum feugiat tellus, a semper massa. </p>
                    <div class="social"><a href="#"><i class="fa fa-facebook-official"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-instagram"></i></a></div>
                </div>
            </div>
        </div>
    </div>
    <div class="team-clean">
        <div class="container">
            <div class="intro"></div>
            <div class="row people">
                <div class="col-md-6 col-lg-4 item"><img class="rounded-circle" src="static/images/Screen Shot 2018-04-04 at 2.03.02 PM.png">
                    <h3 class="name">Kusum Neupane</h3>
                    <p class="title">Front End Devloper</p>
                    <p class="description">Aenean tortor est, vulputate quis leo in, vehicula rhoncus lacus. Praesent aliquam in tellus eu gravida. Aliquam varius finibus est, et interdum justo suscipit id. Etiam dictum feugiat tellus, a semper massa. </p>
                    <div class="social"><a href="#"><i class="fa fa-facebook-official"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-instagram"></i></a></div>
                </div>
                <div class="col-md-6 col-lg-4 item"><img class="rounded-circle" src="static/images/Screen Shot 2018-04-04 at 1.53.28 PM.png">
                    <h3 class="name">Ivaylo Aleksiev</h3>
                    <p class="title">Back End Developer</p>
                    <p class="description">Aenean tortor est, vulputate quis leo in, vehicula rhoncus lacus. Praesent aliquam in tellus eu gravida. Aliquam varius finibus est, et interdum justo suscipit id. Etiam dictum feugiat tellus, a semper massa. </p>
                    <div class="social"><a href="#"><i class="fa fa-facebook-official"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-instagram"></i></a></div>
                </div>
                <div class="col-md-6 col-lg-4 item"><img class="rounded-circle" src="static/images/Screen Shot 2018-04-04 at 2.14.11 PM.png">
                    <h3 class="name">Amadou Diallo</h3>
                    <p class="title">Back End Developer</p>
                    <p class="description">Aenean tortor est, vulputate quis leo in, vehicula rhoncus lacus. Praesent aliquam in tellus eu gravida. Aliquam varius finibus est, et interdum justo suscipit id. Etiam dictum feugiat tellus, a semper massa. </p>
                    <div class="social"><a href="#"><i class="fa fa-facebook-official"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-instagram"></i></a></div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-dark">
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-md-3 item">
                        <h3>Services</h3>
                        <ul>
                            <li><a href="#">Saving</a></li>
                            <li><a>Financial Help</a></li>
                            <li><a>Questions?</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-6 col-md-3 item">
                        <h3>About</h3>
                        <ul>
                            <li><a href="#">Company</a></li>
                            <li><a href="#">Team</a></li>
                            <li><a href="#">Contact Us</a></li>
                        </ul>
                    </div>
                    <div class="col-md-6 item text">
                        <h3>Fastsusu</h3>
                        <p>Fastsusu is a financial web application built to help users save in a group. It is a solution for those who wish to save with friends and stay on track with finances. Join Fastsusu and start saving with others.&nbsp;</p>
                    </div>
                    <div class="col item social"><a href="#"><i class="icon ion-social-facebook"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-instagram"></i></a></div>
                </div>
                <p class="copyright">Company Name © 2018</p>
            </div>
        </footer>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
    <!--<script src="assets/js/script.min.js"></script> -->
</body>

</html>

