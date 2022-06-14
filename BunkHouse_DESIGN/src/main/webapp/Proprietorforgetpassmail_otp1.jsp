<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
	</head>

	<body>



		<% HttpSession section1=request.getSession(false); 
		String otp=(String)section1.getAttribute("otp");
		
		String a = request.getParameter("a");
		String b = request.getParameter("b");
		String c = request.getParameter("c");
		String d = request.getParameter("d");
		String e = request.getParameter("e");
		
	String add = a+b+c+d+e;
		
	
		
		//String userOTP=request.getParameter("userotp"); 
		
		if(add.equals(otp)) 
		{ %>

			<jsp:forward page="ProprietorChange_password.jsp" />


			<% } else { %>
				<script>

					alert("Enter Correct OTP");

				</script>
				<% response.setHeader("Refresh", "0; URL=Proprietorforgetpass.jsp" ); } %>

					%>

	</body>

	</html>