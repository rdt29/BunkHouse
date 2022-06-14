<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Location</title>
</head>
<body>
<%
	String url = (String)session.getAttribute("location");

	String name = (String)session.getAttribute("name");
	String id = (String)session.getAttribute("id");
	
%>
<center>
<h1>
<%=name%>
</h1>
(<%=id%>)
</center>

Location:
<br><br>

	<iframe src="<%=url%>" width="90%" height="550" style="border:0;"  loading="lazy"></iframe>
</body>
</html>