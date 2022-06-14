<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="ISO-8859-1">
		<title>SMS Otp Varification</title>
	</head>

	<body>

		<% String Otp=request.getParameter("otp"); //out.print(Otp); %>
			<secction class="box">
				<div class="box1">
					<form action="Proprietorforgetpass_Otp1.jsp" method="post">

						<% HttpSession section=request.getSession(false); String
							number=(String)section.getAttribute("Contact");
						HttpSession section1=request.getSession();
					section1.setAttribute("otp",Otp); 
					out.print("<label for='otp'>Enter Otp send to "+number+"</label>");
							%>

							<input type="password" name="userotp" id="otp">
							<input type="submit" value="Validate OTP">
					</form>
				</div>
			</secction>




	</body>

	</html>