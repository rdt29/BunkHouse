<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
	</head>

	<body>

		<%@ page import="abc.bean" %>
			<%@ page import="abc.Sql" %>

				<jsp:useBean id="u" class="abc.bean"></jsp:useBean>
				<jsp:setProperty property="*" name="u" />

				<% try { 
					String number=request.getParameter("contact"); 
					String pass=request.getParameter("password");
					
					String num1 = request.getParameter("num1");
					String num2 = request.getParameter("num2");
					String capcha = request.getParameter("capcha");
					
					
					

					String mailmessage = null;
					String mailname= null;
					String mailmessage1 = null;
					String subject = null;
					String greatings = null;
					
					
					
					int n1 = Integer.parseInt(num1);
					int n2 = Integer.parseInt(num2);
					
					int ans = n1+n2;
					
					String ans1 = Integer.toString(ans);

					
					
					if(number.length()==10)
					{ 
						if(pass.length()>=8)
					{
							if(capcha.equals(ans1))
							{
								
						int i = Sql.newProprietor(u);

						if(i>0)
						{
							
							mailname = "noreply@BunkHouseGreatings.com";
							mailmessage = "Dear "+u.getName()+ "<h2> Welcome to Bunkhouse</h2>";
							mailmessage1 = "Now You Can List All your Properties At One place";
							subject = "Greatings From BunkHouse ";
							
									
							greatings= Sql.Mailconfirmation(u.getEmail() , mailname , mailmessage , mailmessage1 , subject);
							
					%>

					<script>
						alert("Sucessfully Registered");
					</script>

					<% response.setHeader("Refresh", "0; URL=Proprietor_login.jsp" ); }
						
						
					// status if 
					else { %>
						<script>
							alert("Phone Number Is already Registered\n Please Login With same Number");

						</script>
						<% response.setHeader("Refresh", "0; URL=Proprietor_login.jsp" ); } }
						
						// recaptcha if
						else
						{
							 %>
								<script>
									alert("Enter Correct Answer In reCAPTCHA");

								</script>
								<% response.setHeader("Refresh", "0; URL=list_property.jsp" ); }
						}
						
						
						// password if
					else { %>
							<script>
								alert("Password must be strong");

							</script>
							<% response.setHeader("Refresh", "0; URL=list_property.jsp" ); } }
					
					
					// numberif
					else { %>
								<script>
									alert("Please enter Correct Number");

								</script>
								<% response.setHeader("Refresh", "0; URL=list_property.jsp" ); 
								} 
					} 
				
				
				
				catch(Exception exe)
									{ out.print(exe); }

							%>

	</body>

	</html>