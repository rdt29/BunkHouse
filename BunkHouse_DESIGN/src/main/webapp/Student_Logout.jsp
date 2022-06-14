<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%
	response.setHeader("Refresh", "0; URL=index.jsp");
	Cookie studentmail = new Cookie("studemtmail","");
	studentmail.setMaxAge(0);
	response.addCookie(studentmail);

	
%>

			<script>
			
			  alert("Logout Successfull");
			
				</script>


</body>
</html>