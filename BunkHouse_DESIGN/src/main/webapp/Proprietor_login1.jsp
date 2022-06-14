<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ page import = "abc.bean"%>
	<%@page import = "abc.Sql"%>
	
	  <jsp:useBean id = "u" class = "abc.bean"/>
		<jsp:setProperty property="*" name="u"/>
		
		<%
			String Email = request.getParameter("email");
		session.setAttribute("proemail", Email);
			
		
			int status= Sql.Proprietorlogin(u);
		
		// sending obj to Sql to get the name of Proprietor
		String name = Sql.Proprietor_login_name(u);
		
		//propertieor name
		session.setAttribute("proname", name);
		
	
		if(status>0)
		{
   	
	   					
%>
			<jsp:forward page="ProprietorDashbord.jsp"/>
		
				
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