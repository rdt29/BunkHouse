<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <title>Payment Successfull</title>
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,400i,700,900&display=swap" rel="stylesheet">
</head>

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

<body>



    <%@ page import="abc.book_details" %>
    <%@ page import = "abc.Sql"%>
    
    <jsp:useBean id="b" class="abc.book_details"> </jsp:useBean>
    
    
    	
    <%
    
    
    
    // getting data from session obj;
    
 /*  String name = (String) session.getAttribute("vname");
   String city = (String)  session.getAttribute("vcity");
   String pincode = (String) session.getAttribute("vpincode");
   String contact = (String) session.getAttribute("vcontact");
   String id = (String) session.getAttribute("vid");
   String state = (String) session.getAttribute("vstate");
  
	String rtype= (String) session.getAttribute("bookroomtype") ;
	String email = (String)session.getAttribute("studentemail");
	String address = (String)session.getAttribute("vaddress");
	String checkid = (String) session.getAttribute("orderid");*/
	%>
	
	<form name="myForm" id="myForm" action="Sucess_payment.jsp" method="POST">

	

	<input type = "text" name = "name" value =${cookie.sn.value}>
	
	<input type = "text" name = "address" value =${cookie.sadd.value} >
	
	<input type = "text" name = "rtype" value =${cookie.rt.value} >
	
	<input type = "text" name = "id" value =${cookie.id.value} >
	
	<input type = "text" name = "contact" value =${cookie.sc.value} >
	
	<input type = "text" name = "pincode" value =${cookie.spin.value} >
	
	<input type = "text" name = checkid" value =${cookie.sbkid.value} >
	
	<input type = "text" name = "state" value =${cookie.ssst.value} >
	
	<input type = "text" name = "city" value =${cookie.xcity.value} >
	
	<input type = "submit">
	</form>
	
	<script type="text/javascript">
    window.onload=function(){
        var auto = setTimeout(function(){ autoRefresh(); }, 100);

        function submitform(){
          alert('test');
          document.forms["myForm"].submit();
        }

        function autoRefresh(){
           clearTimeout(auto);
           auto = setTimeout(function(){ submitform(); autoRefresh(); }, 10000);
        }
    }
</script>
	<%
			
		
	String name = request.getParameter("name");
	String city = request.getParameter("city");
	String pincode = request.getParameter("pincode");
	String contact = request.getParameter("contact");
	String id = request.getParameter("id");
	String state = request.getParameter("state");
	String rtype = request.getParameter("rtype");
	String email = request.getParameter("email");
	String address = request.getParameter("address");
	String checkid = request.getParameter("checkid");
	
	
	
	
	b.setName1(name);
	b.setCity(city);
	b.setCheckid(checkid);
	b.setPincode(pincode);
	b.setContact(contact);
	b.setId(id);
	b.setState(state);
	b.setRoomtype(rtype);
	
	b.setEmail(email);
   	
	b.setAddress(address);
   	
   	//out.print(email);
   	int status = Sql.BookingDetails(b);
    
   	if(status>0)
   	{
   		%>
   	<script>
   
	alert("Sucessfully upload");
	</script>
   
   		<%
   	}
   	else
   	{
   		%>
   					<script>
						alert("error");
					</script>
   		<%
   	}
    
    
    
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
            <i class="checkmark"><svg xmlns="http://www.w3.org/2000/svg" width="160" height="160" fill="currentColor" class="bi bi-check2" viewBox="0 0 16 16">
  <path d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"/>
</svg></i>
        </div>
        <h1>Success</h1>
        <p>We received your Payment</p><br><p>Don't Refresh page</p>
        <br>
        <p class="timing"> Redirecting <span id="time">00:05</span> minutes!</p>
    </div>
		<%
		response.setHeader("Refresh", "50; URL=index.jsp");
		%>


    
    

    
    
</body>

</html>