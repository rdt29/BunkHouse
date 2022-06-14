<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import = "abc.Add_New_Property"%>
<%@page import = "abc.Sql"%>

<jsp:useBean id = "u" class = "abc.Add_New_Property"/>
<jsp:setProperty property="*" name="u"/>



<%

			String mailmessage = null;
			String mailname= null;
			String mailmessage1 = null;
			String subject = null;
			String greatings = null;		


	
	String type = request.getParameter("Type");
	String wifi = request.getParameter("wifi");
	String wc = request.getParameter("wc");
	String email = (String)session.getAttribute("proemail");
			
	String pincode = request.getParameter("apincode");
	
	
	u.setType(type);
	u.setWifi(wifi);
	u.setWc(wc);
	u.setProemail(email);
	
	
	
	
	String pid = u.getPropertyid();
	
	String troom = u.getTotalroom();
	String sac = u.getSinglebedacroom();
	String snonac = u.getSinglebednonacroom();
	String dac = u.getDoublebedacroom();
	String dnonac = u.getDoublebednonacroom();
	String contact = u.getAcontact();
	
	int totalroom = Integer.valueOf(troom);
	int sacroom = Integer.valueOf(sac);
	int snonacroom = Integer.valueOf(snonac);
	int dacroom = Integer.valueOf(dac);
	int dnonacroom = Integer.valueOf(dnonac);
	
	int v1=sacroom+snonacroom;
	int v2 = dacroom+dnonacroom;
	int t = v1+v2;


	//1
	if(pincode.length()==6)
	{
		
		
		//2
		if(totalroom==t)
		{
			//3
			int status = Sql.AddNewProperty(u);
			if(status>0)
			{

				mailname = "noreply@BunkHouseervice.com";
				mailmessage = "congratulations ";
				
				
				
				
				
				mailmessage1 = "You have Sucessfully Added Your <h1>"+u.getAname()+"</h1> With Unique ID<h1>"+pid+"</h1>Save this Id For Future reference";
				subject = "Greatings From BunkHouse ";
						
						
				greatings= Sql.Mailconfirmation(email , mailname , mailmessage , mailmessage1 , subject);
				
				
				%>
				<script>
			
			  alert("Property Added Sucessfully with Property id = <%=pid%>" );
			
				</script>
		
		<% 
		response.setHeader("Refresh", "0; URL=ProprietorDashbord.jsp");
				
			}
			//3
			else
			{
				%>
				<script>
			
			  alert("Error While Adding data please Try Again");
			
				</script>
		
		<% 
		response.setHeader("Refresh", "0; URL=Add_New_Property.jsp");
				
				
			}
			
			
		}
		//2
		else
		{
			
			%>
			<script>
		
		  alert("Rooom Details Dont't match with Total Rooms");
		
			</script>
	
	<% 
	response.setHeader("Refresh", "0; URL=Add_New_Property.jsp");
			
		}
	}
	
	
	
	
	// 1  
	else
	{
		%>
				<script>
			
			  alert("Enter Valid Pincode");
			
				</script>
		
		<% 
		response.setHeader("Refresh", "0; URL=Add_New_Property.jsp");
	}
	


%>

</body>
</html>