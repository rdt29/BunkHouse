<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Proprietor Login</title>
</head>
<body>

			 <section class="Login">

        <h2>PROPERTOR LOGIN</h2>
        <form action="Proprietor_login1.jsp" method="POST">
           
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
            <a href="list_property.jsp">Not Registered?</a>
        </button>
        <br><br>
         <button class="forget">
            <a href="Proprietorforgetpass.jsp">Forget Password?</a>
        </button>
    </section>
    



</body>
</html>