<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Your Property</title>
</head>
<body>

<%@ include file="ProperietorDashbord_Navbar.jsp"%>


	<%@page import = "abc.Add_New_Property"%>
	<%@page import = "abc.Sql"%>
	
	<%@page import = "java.util.List"%>
	<%@page import = "java.util.ArrayList"%>
	

<%
// sending email to view only those que inserted by particular login id
	String email = (String)session.getAttribute("proemail");
	
// bean classs
	Add_New_Property i = new Add_New_Property();
	i.setProemail(email);
	
	
	
	
	
out.print("<h1><center><u>Your Propertyes<center><u></h1><br>");
	
	List <Add_New_Property> list = Sql.ViewPropertybymail(i);
	
	out.print("<table border = '1' width = '100%' class='table table-sm table-hover table-bordered'>");

	out.print("<tr>"
			+ "<th>Property ID</th>"
			+ "<th>Type</th>"
			+ "<th>Name</th>"
			+ "<th>City</th>"
			+ "<th>State</th>"
			+ "<th>Pincode</th>"
			+ "<th>Address</th>"
			+ "<th>Landmark</th>"
			+ "<th>Total Rooms</th>"
			+ "<th>Single bed Ac Rooms</th>"
			+ "<th>Singe Bed Non-Ac Rooms</th>"
			+ "<th>Single Bed Ac Rooms Rate</th>"
			+ "<th>Single Bed Non-Ac Rooms Rate</th>"
			
			+ "<th>Double Bed Ac Rooms</th>"
			+ "<th>Double Bed Non-Ac Rooms</th>"
			+ "<th>Double Bed Ac Rooms Rate</th>"
			+ "<th>Double Bed Non-Ac Rooms Rate</th>"
			+ "<th>Wifi</th>"
			+ "<th>Water Coller</th>"
			+ "<th>Contact No</th>"
			);
	
	for(Add_New_Property e:list)
		
	{
		
		out.print("<tr>"
				+ "<td>"+e.getPropertyid()+"</td>"
				+ "<td>"+e.getType()+"</td>"
				+ "<td>"+e.getAname()+"</td>"
				+ "<td>"+e.getAcity()+"</td>"
				+ "<td>"+e.getAstate()+"</td>"
				+ "<td>"+e.getApincode()+"</td>"
				+ "<td>"+e.getAaddress()+"</td>"
				+ "<td>"+e.getAlandmark()+"</td>"
				+ "<td>"+e.getTotalroom()+"</td>"
				+ "<td>"+e.getSinglebedacroom()+"</td>"
				+ "<td>"+e.getSinglebednonacroom()+"</td>"
				+ "<td>	&#8377;"+e.getSingleacrate()+"</td>"
				+ "<td>	&#8377;"+e.getSinglenonacrate()+"</td>"
				+ "<td>"+e.getDoublebedacroom()+"</td>"
				+ "<td>"+e.getDoublebednonacroom()+"</td>"
				+ "<td>	&#8377;"+e.getDoubleacrate()+"</td>"
				+ "<td>	&#8377;"+e.getDoublenonacrate()+"</td>"
				+ "<td>"+e.getWifi()+"</td>"
				+ "<td>"+e.getWc()+"</td>"
				+ "<td>"+e.getAcontact()+"</td>"
				);
		
	}
	out.print("</table>");
	

	
	
	

	
	
	
%>


</body>
</html>