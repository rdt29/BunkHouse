<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Login</title>
</head>
<body>


			 <section class="Login">

        <h2>STUDENT LOGIN</h2>
        <form action="Student_login1.jsp" method="POST">
           
            Userid &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="email" name="email" id="" required> <br><br>
            Password &nbsp;<input type="password" name="password" id="" required>
            <br><br>
           
            <input type="submit" Value="Login" id="">
            
            <br> <input type="reset" value="reset form">
        </form>
        <button class="back">
            <a href="index.html">Back</a>
        </button> <br>
        
        <button class="registered">
            <a href="Student_Signup.jsp">Not Registered?</a>
        </button>
        <br><br>
         <button class="forget">
            <a href="Studentforgetpass.jsp">Forget Password?</a>
        </button>
    </section>
    


</body>
</html>