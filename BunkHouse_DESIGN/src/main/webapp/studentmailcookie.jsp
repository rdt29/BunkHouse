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
	// getting radio button value form details_property.jsp
	
	String bookroomtype = request.getParameter("room");
	session.setAttribute("bookroomtype", bookroomtype);


String check11 = null;

try
{
	
Cookie studentmail[]= request.getCookies();

check11 =studentmail[1].getValue();

}
catch(Exception exe)
{
	out.print(exe);
	
}

if(check11!=null && check11!="null")
{
	
	%>
	<jsp:forward page="confirmationpage.jsp"></jsp:forward>
	<%
}
else
{
		%>
		<script>
		alert ("please login first to proceed further");
		</script>
		
		<%
		response.setHeader("Refresh", "0; URL=Student_login.jsp");
}
%>

</body>
</html>