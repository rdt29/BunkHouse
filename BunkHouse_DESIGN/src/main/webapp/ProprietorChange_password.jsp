<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>Insert title here</title>
    </head>

    <body>
        <% HttpSession section=request.getSession(false); String number=(String)section.getAttribute("Contact"); %>

            <section class="box">

                <div class="box1">

                    <section class="box">
                        <div class="bbox1">

                            <form action="Proprietor_newPassword.jsp" method="post">
                                <h3>Update Password</h3> <br><br>

                                <% out.print("Mobile Number: " + number);                 
                 %>
                        <br><br>
                       New Password: <input type=" password" name="password" id="" required>
                                    <br><br>
                                    Confirm Password: <input type="password" name="cpassword" id="" required>
                                    <br> <br>
                                    <input type="submit" value="Change Password">
                            </form>

                        </div>
                    </section>


                </div>

            </section>

    </body>

    </html>