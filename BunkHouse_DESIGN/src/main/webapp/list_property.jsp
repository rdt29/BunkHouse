<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>List Your Property</title>
        <link rel="stylesheet" href="list_property.css">
    </head>

    <body>
        <%@ page import="java.util.Random" %>
            <% Random random=new Random(); StringBuilder sb=new StringBuilder(); for(int i=0 ; i< 1  ; i++) {
                sb.append(random.nextInt(10)); } String num1=sb.toString(); // out.print(num1); out.print("<br>");

                StringBuilder sb2=new StringBuilder();

                for(int i=0 ; i< 1 ; i++) { sb2.append(random.nextInt(10)); } String num2=sb2.toString();
                    //out.print(num2); %>
                    <section class="form1">
                        <div class="form">
                            <form action="Proprietor.jsp">
                                <h3>
                                    Propertor Signup
                                </h3>




                                Name: &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"
                                    name="name" id="" required> <br>
                                <br>


                                Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="email"
                                    name="email" id="" required><br><br>


                                Contact no : &nbsp;&nbsp;<input type="number" name="contact" id=""
                                    placeholder="Without +91" required><br><br>

                                Password :&nbsp;&nbsp;&nbsp;&nbsp; <input type="password" name="password"
                                    placeholder="More then 8 letter" required> <br><br>
reCAPTCHA:
                               <div class="recaptcha" style="height: 1cm; width: 3.2cm; font-weight: bolder; font-size: large; color: azure; margin: 0cm; margin-right: 0in; border: 2px solid black; align-items: center; text-align: center; padding-top: .3cm ; background-image: url('https://picsum.photos/200/300?random=?');">
                                   
                              
                                      
                                  
                                    <%=num1%>
                                        <%="+"%>
                                            <%=num2%>
                                                <%="="%>
				</div>
				  <a href="list_property.jsp">Refresh</a>
							<input type = "number" name="capcha" placeholder="Enter Answer here" required>

                                                    <br> <br>
                                                    <label for="u">UserId is same as Email id :</label>
                                                    <input type="checkbox" name="checkbox" id="u" required> <br>

                                                    <input type="submit" value="submit" id="">


                            <input type="hidden" name="num1" value="<%= num1%>">
                            <input type="hidden" name="num2" value="<%= num2%>">

                            </form>
                            <br><br>
                            <button> <a href="Proprietor_login.jsp">Already Registered?/Login</a> </button>
                        </div>


                    </section>



    </body>

    </html>