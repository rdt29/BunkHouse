<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ page import = "abc.Student_login_bean"%>
	<%@page import = "abc.Sql"%>
	
	  <jsp:useBean id = "u" class = "abc.Student_login_bean"/>
		<jsp:setProperty property="*" name="u"/>
		
		<%
			String Email = request.getParameter("email");
		session.setAttribute("studentemail", Email);
			
		
			int status= Sql.StudentLogin(u);
		
		// sending obj to Sql to get the name of Proprietor
		String name = Sql.Student_login_name(u);
		
		//propertieor name
		session.setAttribute("studentname", name);
		
	
		if(status>0)
		{
   	// will make cookie for student mailid
			//Cookie studentmail = new Cookie ("studemtmail",Email);
			//response.addCookie(studentmail);
			
   			Cookie stumail = new Cookie ("studentmail", Email);
   			
   			response.addCookie(stumail);
   			
	   					
%>
			<jsp:forward page="StudentDashbord.jsp"/>
		
				
<%

			
		}
		else 
		{
%>
			<script>
			
			  alert("Wrong Id password");
			
				</script>
	<%
				response.setHeader("Refresh", "0; URL=index.jsp");
		}
		
		%>
        
	
</body>
</html>