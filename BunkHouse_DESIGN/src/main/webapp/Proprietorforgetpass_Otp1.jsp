<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
	</head>

	<body>



		<% HttpSession section1=request.getSession(false); String otp=(String)section1.getAttribute("otp"); String
			userOTP=request.getParameter("userotp"); if(userOTP.equals(otp)) { %>

			<jsp:forward page="ProprietorChange_password.jsp" />


			<% } else { %>
				<script>

					alert("Enter Correct OTP");

				</script>
				<% response.setHeader("Refresh", "0; URL=Proprietorforgetpass_Otp.jsp" ); } %>

					%>

	</body>

	</html>