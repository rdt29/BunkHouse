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
	<%@page import = "abc.OTP"%>
	
	
	  <jsp:useBean id = "u" class = "abc.bean"/>
		<jsp:setProperty property="*" name="u"/>
		
		<%
			String number = request.getParameter("contact");
			String mail = request.getParameter("email");
			
	
		
			int status= Sql.ProprietorForgetpasscheck(u);
			
			HttpSession section = request.getSession();
			section.setAttribute("Contact",number);
			session.setAttribute("proforgetemail" , mail);
			String Otp;
			
			
			String Source = request.getParameter("otp");
			
			
			String mailmessage = null;
			String mailname= null;
			String mailmessage1 = null;
			String subject = null;
			
	
		if(status>0)
		{
			if(Source.equals("sms"))
			{
				
			String message = "BunkHouse: Your Password Reset Otp is ";
			
			
			 Otp = Sql.sendOTP(message, number);
   	
	   					
%>
			<jsp:forward page="Proprietorforgetpass_Otp.jsp">
			<jsp:param name = "otp" value = "<%=Otp %>"/>
			</jsp:forward>
			
<%
			}
			else
			{
				
				mailname = "noreply@BunkHouseOTP";
				mailmessage = "Your Bunkhouse Password Reset Otp is";
				mailmessage1 = "Do not share With Anyone";
				subject = "BunkHouse OTP";
						
						
				Otp = Sql.Mailotp(mail , mailname , mailmessage , mailmessage1 , subject);
				
				
				
				
	%>
				<jsp:forward page="Proprietorforgetpassmail_Otp.jsp">
				<jsp:param name = "otp" value = "<%=Otp %>"/>
				</jsp:forward>
				
	<%
				
				
				
			}
			
				
		

			
		}
		else 
		{
%>
			<script>
			
			  alert("Details Don't Match");
			
				</script>
	<%
				response.setHeader("Refresh", "0; URL=Proprietorforgetpass.jsp");
		}
		
		%>
        
	
</body>
</html>