<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <!-- Required meta tags -->
    <meta charset="utf-8">
    
    

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">


<title>Confirmation page</title>

</head>
<body>
	<%@ include file="Student_Dashbord_navbar.jsp"%>

<div>
	 <%@ page import="java.util.Random" %>
            <% 
            Random random=new Random(); 
            StringBuilder sb=new StringBuilder(); 
            	for(int i=0 ; i< 10  ; i++) {
                sb.append(random.nextInt(10)); } 
            	
            	String orderid=sb.toString();
            	String bhorderid = ("BH-"+orderid);
            	
            	String bookroomtype= (String)session.getAttribute("bookroomtype");
            	String propertyname = (String)session.getAttribute("name");
            	String propertyid = (String)session.getAttribute("id");
            	
            	session.setAttribute("orderid" , bhorderid);
            	
            	//out.print(bookroomtype);
            	String Studentmail = null;
            	try
							{
								
					 Cookie studentmail[]= request.getCookies();

					 Studentmail =studentmail[1].getValue();
					 
					
							
							}
							catch(Exception exe)
							{
								
							}            	
	%>

	
	
	

    <form action="Confirmationpage1.jsp">
        <div class="a">
            <table class="table table table-bordered table-hover"
                style="width: 50%; position: absolute; left: 50%; top: 35%; transform: translate(-50% , -15%);">

                <tr>


                    <td>
                        BunkHouse Order Id
                    </td>
                    <td>
                        <input type="text" name="checkid" value="<%=bhorderid%>" id="" required disabled readonly>

                    </td>
                </tr>
                <tr>
                    <td>
                        Email Id

                    </td>
                    <td>
                        <input type="email" name="studentmail" value="<%=Studentmail%>" required disabled>


                    </td>

                </tr>

                <tr>
                    <td>
                        Room Type
                    </td>
                    <td>
                        <input type="text" name="roomtype" value="<%=bookroomtype%>" required id="" disabled>

                    </td>
                </tr>

                <tr>
                    <td>
                        Property Name
                    </td>
                    <td>
                        <input type="text" name="propertyname" id="" value="<%=propertyname%>" disabled readonly>
                    </td>
                </tr>
                <tr>

                <tr>
                    <td>
                        Property Id
                    </td>
                    <td>
                        <input type="text" name="propertyid" id="" value="<%=propertyid%>" disabled readonly>
                    </td>
                </tr>
                <tr>


                <tr>
                    <td>
                        Name
                    </td>
                    <td>
                        <input type="text" name="name1" id="" required placeholder="Name">
                    </td>
                </tr>
                <tr>
                    <td>
                        Contact Number
                    </td>
                    <td>
                        <input type="number" name="contact" id="" required placeholder="Without +91">
                    </td>

                </tr>
                <tr>
                    <td>
                        Permanent Address
                    </td>
                    <td>
                        <textarea name="address" id="" cols="40" rows="5" required
                            placeholder="Hometown Address"></textarea>
                    </td>
                </tr>
                <tr>
                    <td>
                        Id Proof number
                    </td>
                    <td>
                        <input type="number" name="id" placeholder="Enter your Addhar card number" id="">
                    </td>
                </tr>
                <tr>
                    <td>
                        City
                    </td>
                    <td>
                        <input type="text" name="city" id="" required>
                    </td>

                </tr>
                <tr>
                    <td>
                        State

                    </td>
                    <td>
                        <input type="text" name="state" id="" required>
                    </td>

                </tr>
                <tr>
                    <td>
                        Pincode
                    </td>
                    <td>
                        <input type="number" name="pincode" id="" required>
                    </td>
                </tr>


                <tr>
                   
                  <!-- <td><button type="button" class="btn btn-secondary">Secondary</button> <tr> -->
                        
                        <td style="padding-left: 40%;" colspan="2"><Input type="Submit" class="btn btn-secondary" value="Checkout"></td>
                        
                  
                  </tr>


            </table>
            
        </form>
        




	
	
	
	
	
	
	
	
	
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
	
</body>
</html>