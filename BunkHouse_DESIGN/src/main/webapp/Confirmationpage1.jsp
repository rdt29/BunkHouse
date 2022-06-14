<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<title>Checkout page</title>

</head>
<body>
<%@ include file="Student_Dashbord_navbar.jsp"%> 
<div>

<%@ page import="abc.book_details" %>

	
		
<%

		String checkid = (String) session.getAttribute("orderid");
		String rtype= (String) session.getAttribute("bookroomtype") ;
		String email = (String)session.getAttribute("studentemail");
		String propertyname = (String)session.getAttribute("name");
    	String propertyid = (String)session.getAttribute("id");
		
		
		String name11 = request.getParameter("name1");
		//String bhid = request.getParameter("checkid");
		String contact = request.getParameter("contact");
		String address = request.getParameter("address");
		String id = request.getParameter("id");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String pincode = request.getParameter("pincode");
		
		
		
		
		
		
		
		session.setAttribute("vname",name11);
		session.setAttribute("vcontact", contact);
		session.setAttribute("vid" , id);
		session.setAttribute("vcity", city);
		session.setAttribute("vstate" ,  state);
		session.setAttribute("vpincode", pincode);
		session.setAttribute("vaddress", address);
		
		
		
		
		
		//------------------Cookie-------------------------------------
		
		/*try
		{
			
   		
   		Cookie stun = new Cookie ("sn", name);
   		stun.setMaxAge(60*60*60*365);
   		response.addCookie(stun);
   		
   		Cookie stucontact = new Cookie ("sc", contact);
   		response.addCookie(stucontact);
   		
   		Cookie stuid = new Cookie ("id", id);
   		response.addCookie(stuid);
   		
   		Cookie stucity = new Cookie ("scity", city);
   		response.addCookie(stucity);
   		
   		
   		Cookie stustate = new Cookie ("sst", state);
   		response.addCookie(stustate);
   		
   		
   		Cookie stupin = new Cookie ("spin",pincode);
   		response.addCookie(stupin);
   		
   		
   		Cookie stuaddress = new Cookie ("sadd", address);
   		response.addCookie(stuaddress);
   
   		Cookie bunkid = new Cookie ("bkid", checkid);
   		response.addCookie(bunkid);
   		
   		Cookie roomtype = new Cookie ("rt", rtype);
   		response.addCookie(roomtype);
   		
		}
		catch (Exception exe)
		{
		out.print(exe);
		
		}*/
		
		
	           
	
	%>
	
		<div class="a">
		 <table class="table table table-bordered table-hover"
            style="width: 50%; position: absolute; left: 50%; top: 35%; transform: translate(-50% , -15%);">
		
			<tr>

			<form action = "Paymentpage.jsp">

			<td>
				BunkHouse Order Id
			</td>
			<td>
				<input type="text" value = "<%=checkid%>" id="" disabled readonly>
				
			</td>
		</tr>
			<tr>
				<td>
				Email Id

				</td>
				<td>
					<input type="email" name = "studentmail" value="<%=email%>" disabled>
				
				
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
				<td>
					Room Type
				</td>
				<td>
					<input type="text" name="roomtype" value="<%=rtype%>" id="" disabled>
					
				</td>
			</tr>

			<tr>
				<td>
					Name 
				</td>
				<td>
					<input type="text" name="name" id="" value =<%=name11%> disabled>
				</td>
			</tr>
			<tr>
				<td>
					Contact Number
				</td>
				<td>
					<input type="number" value = <%=contact %> readonly>
				</td>

			</tr>
			
			<tr>
				<td>
					Address
				</td>
				<td>
				
					<input   style="width: 13cm;" type="text" value = <%=address%> readonly>
				
				</td>

			</tr>
			
			
			<tr>
				<td>
					Id Proof number
				</td>
				<td>
					<input type="number" value = <%=id%> readonly>
				</td>
			</tr>
			
			</tr>
			<tr>
				<td>
					Pincode
				</td>
				<td>
					<input type="number" name="pincode" value = <%= pincode %> id="" readonly>
				</td>
			</tr>
			
			<tr>
				<td>
					Payment

				</td>
				<td>
				  <span>
                        <!-- <label for="a">Book without Payment</label>
                        <input type="radio" name="book" value="paaylater" id="a" required>
                        <label for="b">Book and Pay</label>
                        <input type="radio" name="book" value="paynow" id="b" required> -->


                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="book" value="paaylater" required id="flexRadioDefault1" checked>
                            <label class="form-check-label" for="flexRadioDefault1">
                             Book Without Payment
                            </label>
                          </div>
                          <div class="form-check">
                            <input class="form-check-input" type="radio" name="book" value="paynow" required id="flexRadioDefault2" >
                            <label class="form-check-label" for="flexRadioDefault2">
                            Paynow
                            </label>
                          </div>





                        <br><br>
                        <details>
                            <summary>T&C applied</summary>
                            <ul>
                            <li>
                                Booking Without Payment can Nullify Your Booking 
    
                            </li>
                            <li>
                                Book and pay will surelly save your seat in hostel just by paying &#8377; 100/-
                            </li>
    
                            </ul>
                        </details>
                        <!-- <label for="check">
    
                            I agree all the T&C
                        </label>
                        <input type="checkbox" name="check" id="check" required> -->



                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" required id="defaultCheck1">
                            <label class="form-check-label" for="defaultCheck1">
                                I agree all the T&C
                            </label>
                          </div>
                    </td>
                </tr>
                        </span>
<tr>
                   
                        
                                  
             <td style="padding-left: 40%;" colspan="2"><Input type="Submit" class="btn btn-secondary" value="BookNow"></td> 
                                  
                            
                            </tr>
		</table>
		
	</form>
</div>





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