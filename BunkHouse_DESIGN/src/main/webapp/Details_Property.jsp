<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%	String name=request.getParameter("name");  %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<title><%=name %></title>
		<link rel="stylesheet" href="Details_Property.css">
	</head>

	<body>
 		
		
		<%@page import="abc.Add_New_Property" %>
			<%@page import="abc.Sql" %>

				<%@page import="java.util.List" %>
					<%@page import="java.util.ArrayList" %>


						<% 
						String check11=null;
						
						String id=request.getParameter("id"); 
					
						String type=request.getParameter("type"); 
						String city=request.getParameter("city"); 
						String state=request.getParameter("state");
	String   pincode = request.getParameter("pincode");
	String address   = request.getParameter("address");
	String   landmark = request.getParameter("landmark");
	String singleacroomrate    = request.getParameter("singleacroomrate");
	String  singlenonacroomrate  = request.getParameter("singlenonacroomrate");
	String  doubleacroomrate  = request.getParameter("doubleacroomrate");
	String  doublenonacroomrate  = request.getParameter("doublenonacroomrate");
	String  wifi  = request.getParameter("wifi");
	String  watercoller  = request.getParameter("watercoller");
	String  contactno  = request.getParameter("contactno");
	String location = request.getParameter("location");
	
	// for location url
	session.setAttribute("location", location);
			// for property name
			session.setAttribute("name", name);
					// for property id 
					session.setAttribute("id",id);
							
							/*try
							{
								
					 Cookie studentmail[]= request.getCookies();

					 check11 =studentmail[1].getValue();
							
							}
							catch(Exception exe)
							{
								
							}*/
		

%>



<div class="name">
	<h1><center>
		<%=name %>
		</center>
	</h1>
</div>
<br><br><br><br><br>

<div class="info">

	<table>
		<tr>
			<ul>
				<th>
					<li>Property ID</li>
					
				</th>
				
				<th>
					<li>Accommodation Type </li>
					
				</th>
				
			</ul>
			
			
			
			<tr>
				<ul>
					<td>
						<li><%=id%></li>
						
					</td>
					<td>
						<li><%=type %></li>
						
					</td>
					
				</ul>
				



				
				
			</th>
		</table>







		<table>
			<tr>
				<ul>
					<th>
						<li>City</li>
						
					</th>
					
					<th>
						<li>State</li>
						
					</th>
					
				</ul>
				
				
				
				<tr>
					<ul>
						<td>
							<li><%=city%></li>
							
						</td>
						<td>
							<li><%=state %></li>
							
						</td>
						
					</ul>
					
	
	
					
					
					
				</th>
			





			

		
			<tr>
				<ul>
					<th>
						<li></li>
						
					</th>
					
					<th>
						<li></li>
						
					</th>
					
				</ul>
				</tr>
				
				
				
				<tr>
					<ul>
						<td>
							<li><%=address%></li>
							
						</td>
						<td>
							<li><%=landmark%></li>
							
						</td>
						
					</ul>
					
	
	
					
					
					
				</tr>
			</table>


				
			<table>
						
					<tr>
						<ul>
							<td>
								<li>Wifi: <%= wifi%></li>
								
							</td>
							<td>
								<li>Water Coller: <%=watercoller%></li>
								
							</td>
							
						</ul>


								
					<tr>
						<ul>
							<td>
								<li>Contact No: <%= contactno%></li>
								
							</td>
						
		
	
		
						
						
					</th>
				</table>
				<br><br>
			
				<a href="Location_map.jsp" target="_blank" >View Location On map</a>


				<form action="studentmailcookie.jsp">
				<Br><br>
					<label for="a">Single Bed Ac Room (&#8377; <%=singleacroomrate%>)</label>
					<input type="radio" name="room" id="a" value="Single_bed_Ac_Rooms" required>
					
					<label for="b">Single Bed Non-Ac Room (&#8377; <%=singlenonacroomrate%>)</label>
					<input type="radio" name="room" id="b" value="Single_bed_Non_Ac_Rooms"required>
					<br>
					<br>
					<label for="c">Double Bed Ac Room (&#8377; <%=doubleacroomrate%>)</label>
					<input type="radio" name="room" id="c" value="Double_bed_Ac_Rooms"required>
					
					<label for="d">Double Bed Non-Ac Room (&#8377; <%=doublenonacroomrate%>)</label>
					<input type="radio" name="room" id="d" value="Double_Bed_Non_Ac_Room"required>
					<br>
					<br>
					<input type="submit" value="Book Now">
					

				</form>
		
	
			
		
			
			
		</div>
		
		
	</body>
</html>