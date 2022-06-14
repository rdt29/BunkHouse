<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ page import = "abc.Sql" %>
<%@ page import = "abc.bean" %>

<%
		HttpSession section = request.getSession(false);
		String number = (String)section.getAttribute("Contact");
		
		
		String pass = request.getParameter("password");
		String cpass = request.getParameter("cpassword");
		
		bean u = new bean();
		u.setContact(number);
		u.setPassword(pass);
		
		
		if(pass.equals(cpass))
		{
			if(pass.length()>=8)
			{
				int status = Sql.Proprietorchangepass(u);
				if(status>0)
				{
					
					%>
					<script>
						alert("Password Updated Sucessfully")
					</script>
				<%
				
				response.setHeader("Refresh", "0; URL=index.jsp");
					
				}
				
				
			}
			else
			{
				%>
					<script>
						alert("Password must be strong")
					</script>
				<%
				
				response.setHeader("Refresh", "0; URL=ProprietorChange_password.jsp");
			}
			
			
		}
		else
		{
			%>
			<script>
				alert("Password and Confirm Password must be same")
			</script>
		<%
		
		response.setHeader("Refresh", "0; URL=ProprietorChange_password.jsp");
			
		}
%>



</body>
</html>