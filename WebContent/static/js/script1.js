$('#navigation').load("../WEB-INF/views/navbar.jsp");
// $("#navigation").load("navbar.css");
//$('#footer1').load("footer.html");

function myFunction1() {
	var a = document.getElementById("forms1").elements[1].value;
	var a = parseFloat(a);
	var b = document.getElementById("forms1").elements[2].value;
	var b = parseFloat(b);
	//donation sum per person
	var c = b/a;
	document.getElementById("demo1").innerHTML = "Number of cycles is " + a + " and donation per cycle equals to $" + c;
}

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


function myFunction3(){

    var z = document.getElementById("forms2").elements[0].value;
    var x = document.getElementById("forms2").elements[1].value;

    if (document.getElementById("forms2").elements[0].checked == true){
           document.getElementById("demo3").innerHTML = " Checked value " + z + typeof(z);

       } else {
       	document.getElementById("demo3").innerHTML = " Checked value " + x + typeof(x);

       }

}			





