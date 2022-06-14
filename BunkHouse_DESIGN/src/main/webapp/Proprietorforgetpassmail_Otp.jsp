<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

  <title>OTP Validation</title>

  <style>
    body {
      background-color: white
    }

    .height-100 {
      height: 100vh
    }

    .card {
      width: 400px;
      border: none;
      height: 300px;
      box-shadow: 0px 5px 20px 0px #d2dae3;
      z-index: 1;
      display: flex;
      justify-content: center;
      align-items: center
    }

    .card h6 {
      color: red;
      font-size: 20px
    }

    .inputs input {
      width: 40px;
      height: 40px
    }

    input[type=number]::-webkit-inner-spin-button,
    input[type=number]::-webkit-outer-spin-button {
      -webkit-appearance: none;
      -moz-appearance: none;
      appearance: none;
      margin: 0
    }

    .card-2 {
      /* background-color: #fff;  */
      /* background-color: #fff;  */
      box-shadow: 0px 5px 20px 0px #d2dae3;
      padding: 10px;
      width: 350px;
      height: 100px;
      bottom: -50px;
      left: 20px;
      position: absolute;
      border-radius: 5px
    }

    .card-2 .content {
      margin-top: 50px
    }

    .card-2 .content a {
      color: red
    }

    .form-control:focus {
      box-shadow: none;
      border: 2px solid red
    }

    .validate {
      border-radius: 20px;
      height: 40px;
      background-color: red;
      border: 1px solid red;
      width: 140px
    }
  </style>
  <script>

    document.addEventListener("DOMContentLoaded", function (event) {

      function OTPInput() {
        const inputs = document.querySelectorAll('#otp > *[id]');
        for (let i = 0; i < inputs.length; i++) { inputs[i].addEventListener('keydown', function (event) { if (event.key === "Backspace") { inputs[i].value = ''; if (i !== 0) inputs[i - 1].focus(); } else { if (i === inputs.length - 1 && inputs[i].value !== '') { return true; } else if (event.keyCode > 47 && event.keyCode < 58) { inputs[i].value = event.key; if (i !== inputs.length - 1) inputs[i + 1].focus(); event.preventDefault(); } else if (event.keyCode > 64 && event.keyCode < 91) { inputs[i].value = String.fromCharCode(event.keyCode); if (i !== inputs.length - 1) inputs[i + 1].focus(); event.preventDefault(); } } }); }
      } OTPInput();
    });
    
    
    // timimg 
    
    
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
        var fiveMinutes = 60 * 1,
            display = document.querySelector('#time');
        startTimer(fiveMinutes, display);
    };
    


    
  </script>
</head>

<body>
<!-- getting otp from last page-->
<% String Otp=request.getParameter("otp"); //out.print(Otp); %>

  <form action="Proprietorforgetpassmail_otp1.jsp">
	
	
						<% HttpSession section=request.getSession(false); String
							mail=(String)section.getAttribute("proforgetemail");
						
						HttpSession section1=request.getSession();
						section1.setAttribute("otp",Otp); %>
		
		

    <div class="container height-100 d-flex justify-content-center align-items-center">
      <div class="position-relative">
        <div class="card p-2 text-center">
          <h6>Please enter the one time password <br> to verify your account</h6>
          <div> <span>A code has been sent to</span> <small><%=mail%></small> </div>
          <div id="otp" class="inputs d-flex flex-row justify-content-center mt-2">
            <input class="m-2 text-center form-control rounded" type="number" name = "a" id="first" maxlength="1" placeholder="*" required />
            <input class="m-2 text-center form-control rounded" type="number" name = "b" id="second" maxlength="1" placeholder="*" required /> <input
              class="m-2 text-center form-control rounded" type="number" id="third" name = "c" maxlength="1" placeholder="*" required/> <input
              class="m-2 text-center form-control rounded" type="number" id="fourth" name = "d" maxlength="1" placeholder="*" required /> 
              
            <input class="m-2 text-center form-control rounded" type="number" id="fifth" name = "e" maxlength="1" placeholder="*" required  /> 
          </div>
          <div class="mt-4"> <button class="btn btn-danger px-4 validate">Validate</button> </div>
           
            	<% response.setHeader("Refresh", "62; URL=index.jsp" ); %>
        </div>
        <div class="card-2">
          <div class="content d-flex justify-content-center align-items-center"> <span>Enter OTP in</span> <a
             class="text-decoration-none ms-3"><span id="time">01:00</span> minutes!</a>  </div>
           
        </div>
      </div>
    </div>
  </form>


</body>

</html>