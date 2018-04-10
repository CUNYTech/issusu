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

			<form:form action="${pageContext.request.contextPath}/groups/processStartSusuForm" 
			   method="POST">
				<br />
				Group Name <br />
				<form:input path="groupName"/>
				<br />
				Number of Participants<br />
				<form:input path="groupSize"/>
                <br />

				Pot Size<br />
				 <form:input path="payoutAmount" /> 
                <br />
                <br />

                <button onclick="myFunction1()">Calculate: </button>
	            <p id="demo1"></p>

				    Please select your donation frequency:
				    <br />
				  <form:radiobutton path = "howOften" value = "Monthly" label = "Monthly" />
                  <form:radiobutton path = "howOften" value = "BiWeekly" label = "Bi-Weekly" />

				<button onclick="myFunction3()">Alert</button>
	            <p id="demo3"></p>



					<label>Enter your starting date:</label>
					<!-- <input type="date" name="startDate" > -->
					<form:input path="startDate" /> 
					
	            <button onclick="myFunction2()">Calculate your end date</button>
	            <p id="demo2"></p>

	            <!-- <p id="demo1"></p> -->
                 Your money day:
                 <br />
                 Last payment date:
                 <br />


			<form:button type="submit">START SUSU</form:button><br />
			<button type="button">Save for later</button>
 </form:form>

	     <script>
	        function myFunction1() {
	        	var a = document.getElementById("forms1").elements[1].value;
	        	var a = parseFloat(a);
	        	var b = document.getElementById("forms1").elements[2].value;
	        	var b = parseFloat(b);
	        	//donation sum per person
	        	var c = b/a;
	        	document.getElementById("demo1").innerHTML = "Number of cycles is " + a + " and donation per cycle equals to $" + c;
	        }
	     </script>



            


		<script>
			function myFunction2() {
                    var y = document.getElementById("forms3").elements[0].value;

		            var d = new Date (y);
		            d.setDate(d.getUTCDate());

		            var f = document.getElementById("forms1").elements[1].value;
	        	    var f = Number(f);

		            if (document.getElementById("forms2").elements[0].checked == true){
		            	//total number of weeks for biweekly cycle equals number of cycles times 2 
		            	var numOfWeeks = f * 2;
		            	//number of days
		            	var numOfDays = numOfWeeks * 7;
		            	var p = new Date ();
		                var lastDate=new Date(p.setDate(d.getDate() + numOfDays));
		                document.getElementById("demo2").innerHTML = " Number of days to pass: "+ numOfDays + " Your end date: " + lastDate;
		            } else if (document.getElementById("forms2").elements[1].checked == true) {
		            	var numOfWeeks = f * 4;
		            	var numOfDays = numOfWeeks * 7;
		            	var p = new Date ();
		                var lastDate=new Date(p.setDate(d.getDate() + numOfDays));
		                document.getElementById("demo2").innerHTML =  " Number of days to pass: "+ numOfDays + " Your end date: " + lastDate;;

		            }

		            //var t = new Date ();

		            //t.setDate(d.getDate() + 20);


                }
		</script>

		<script>
		   function myFunction3(){

	            var z = document.getElementById("forms2").elements[0].value;
	            var x = document.getElementById("forms2").elements[1].value;

	            if (document.getElementById("forms2").elements[0].checked == true){
                       document.getElementById("demo3").innerHTML = " Checked value " + z + typeof(z);

                   } else {
                   	document.getElementById("demo3").innerHTML = " Checked value " + x + typeof(x);

                   }

		   }			
		</script>






		</article>
     



    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
   	    <script src="<c:url value='/static/js/script1.js' />" type="text/javascript"></script>

	</body>
</html>






