<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking Confirmation</title>

    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,400i,700,900&display=swap" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
<style>
    body {
        text-align: center;
        padding: 40px 0;
        background: #EBF0F5;
    }

    h1 {
        color: #88B04B;
        font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
        font-weight: 900;
        font-size: 40px;
        margin-bottom: 10px;
    }

    p {
        color: #404F5E;
        font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
        font-size: 20px;
        margin: 0;
    }

    i {
        color: #9ABC66;
        font-size: 100px;
        line-height: 200px;
        margin-left: -15px;
    }

    .card {
        background: white;
        padding: 60px;
        border-radius: 4px;
        box-shadow: 0 2px 3px #C8D0D8;
        display: inline-block;
        margin: 0 auto;
    }

    .timing {
        color: red;
    }
</style>
</head>
<body>

 <%@ page import="abc.book_details" %>
    <%@ page import = "abc.Sql"%>
    
    <jsp:useBean id="b" class="abc.book_details"> </jsp:useBean>
    <%

    
	String name11 = (String) session.getAttribute("vname");
   String city = (String)  session.getAttribute("vcity");
   String pincode = (String) session.getAttribute("vpincode");
   String contact = (String) session.getAttribute("vcontact");
   String id = (String) session.getAttribute("vid");
   String state = (String) session.getAttribute("vstate");
  
	String rtype= (String) session.getAttribute("bookroomtype") ;
	String email = (String)session.getAttribute("studentemail");
	String address = (String)session.getAttribute("vaddress");
	String checkid = (String) session.getAttribute("orderid");
	String propertyname = (String)session.getAttribute("name");
	String propertyid = (String)session.getAttribute("id");
	
	String location = (String)session.getAttribute("location");
	
	String Status = "Not paid";
	
	String n = "null";

	
	b.setName1(name11);
	b.setEmail(email);
	b.setCity(city);
	b.setCheckid(checkid);
	b.setPincode(pincode);
	b.setContact(contact);
	b.setId(id);
	b.setState(state);
	b.setRoomtype(rtype);
   	b.setAddress(address);
   	b.setPropertyname(propertyname);
   	b.setPropertyid(propertyid);
   	b.setStatus(Status);
   	
   int status = 0;
   	
   status = Sql.BookingDetails(b);
    
   	if(status>0)
   	{
   		
		 
   		String mailmessage = null;
		String mailname= null;
		String mailmessage1 = null;
		String subject = null;
		String greatings = null;
					mailname = "noreply@BunkHouseBooking.com";
					mailmessage = "congratulations ";
					//mailmessage1 = "You have Sucessfully Booked Your <h1>"+propertyname+"</h1>Unique ID<h1>"+propertyid+"</h1>";
					mailmessage1 ="<table border = '3' width = '100%'><tr><td> BunkHouse Order Id</td>  <td>"+checkid +"</td> </tr> <tr><td>Name</td><td>"+name11+"</td> </tr> <tr><td>Apartment Name</td> <td>"+propertyname+"</td></tr><tr> <td>Property Id</td><td>"+propertyid+"</td></tr> <tr><td>location</td><td>"+location+"</td></tr></table>";
					subject = "Greatings From BunkHouse ";
					
					
						greatings= Sql.Mailconfirmation(email , mailname , mailmessage , mailmessage1 , subject);
						
					%>	
						
						<script>

				        function startTimer(duration, display) {
				            var timer = duration, minutes, seconds;
				            setInterval(function () {
				                minutes = parseInt(timer / 60, 10);
				                seconds = parseInt(timer % 60, 10);

				                minutes = minutes < 10 ? "0" + minutes : minutes;
				                seconds = seconds < 10 ? "0" + seconds : seconds;

				                display.textContent = minutes + ":" + seconds;

				                if (--timer < 0) {
				                    timer = duration;
				                }
				            }, 1000);
				        }

				        window.onload = function () {
				            // Timming function 
				            var fiveMinutes = 05 * 1,
				                display = document.querySelector('#time');
				            startTimer(fiveMinutes, display);
				        };

				    </script>

				    <div class="card">
				        <div style="border-radius:200px; height:200px; width:200px; background: #F8FAF5; margin:0 auto;">
				           <i class="ri-check-fill"></i>
				        </div>
				        <h1>Success</h1>
				        <p>We received your Booking</p><br><p>Don't Refresh page</p>
				        <br>
				        <p class="timing"> Redirecting <span id="time">00:05</span> minutes!</p>
				        <script>	setTimeout("location.href = 'index.jsp';", 6000);</script>
				    </div>
						
				  

		<%	
   	
   	}
   	else
   	{
   		%>
   		<script>
   		alert("Session Exipered");
	setTimeout("location.href = 'index.jsp';", 1);
	   </script>
   		<%
   		
   	}
   		%>
   
	
    
    

</body>
</html>