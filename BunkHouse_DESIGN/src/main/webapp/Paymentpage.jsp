<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment redirect </title>
</head>
<body>


	<%
	
			String payment = request.getParameter("book");
		
		
	if(payment.equals("paynow"))
	{
		response.setHeader("Refresh", "0; URL=https://pmny.in/QI8PzrhrJMpf"); 
		
	}
		
	
		
	else
	{
		response.setHeader("Refresh", "0; booking_without_payment.jsp");
		
	}
	
	%>

</body>
</html>