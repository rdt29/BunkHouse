<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>All Propertyes</title>
    <link rel="stylesheet" href="View_All_property.css">
</head>

<body>

 

	<%@page import = "abc.Add_New_Property"%>
	<%@page import = "abc.Sql"%>
	
	<%@page import = "java.util.List"%>
	<%@page import = "java.util.ArrayList"%>
	
	
	<% 
	Add_New_Property i = new Add_New_Property();
	
	List <Add_New_Property> list = Sql.ViewAllProperty(i);
	
	for(Add_New_Property e:list)
	{
	
	
	
	
	
	
	%>
	<br><br><br><br><br>
    <div class="img1">
        <img src="bksmall3.png" alt="Error">

    </div>

    <div class="book">

        <form action="Details_Property.jsp" method="post">
        
        
        
	<input type = "hidden" name = "id" value = "<%=e.getPropertyid() %>">
	<input type = "hidden" name = "name" value = "<%=e.getAname() %>">
	<input type = "hidden" name = "type" value = "<%=e.getType() %>">
	<input type = "hidden" name = "city" value = "<%=e.getAcity()%>">
	<input type = "hidden" name = "state" value = "<%=e.getAstate() %>">
	<input type = "hidden" name = "pincode" value = "<%=e.getApincode() %>">
	<input type = "hidden" name = "address" value = "<%=e.getAaddress() %>">
	<input type = "hidden" name = "landmark" value = "<%=e.getAlandmark() %>">
	<input type = "hidden" name = "singleacroomrate" value = "<%=e.getSingleacrate() %>">
	<input type = "hidden" name = "singlenonacroomrate" value = "<%=e.getSinglenonacrate() %>">
	<input type = "hidden" name = "doubleacroomrate" value = "<%=e.getDoubleacrate() %>">
	<input type = "hidden" name = "doublenonacroomrate" value = "<%=e.getDoublenonacrate() %>">
	<input type = "hidden" name = "wifi" value = "<%=e.getWifi() %>">
	<input type = "hidden" name = "watercoller" value = "<%=e.getWc()%>">
	<input type = "hidden" name = "contactno" value = "<%=e.getAcontact() %>">
	<input type = "hidden" name = "location" value = "<%=e.getAlocation() %>">
	
	
	
	
	
	Id: <%=e.getPropertyid() %>
            <h3>
               <%=e.getAname() %>
            </h3>
            <table>
                <tr>
                    <th>

                       City:  <%=e.getAcity() %>



                    </th>
                </tr>
            </table>

            <table>
                <tr>
                    <ul>
                        <th>
                            <li>Wifi</li>

                        </th>
                        <th>
                            <li>Water Cooler</li>

                        </th>

                    </ul>



                <tr>
                    <ul>
                        <td>
                            <li><%=e.getWifi() %></li>

                        </td>
                        <td>
                            <li><%=e.getWc() %></li>

                        </td>

                    </ul>







                    </th>
            </table>




            <table>
                <tr>
                    <ul>
                        <th>
                            <li>Single Bed Ac Room</li>

                        </th>
                        <th>
                            <li>Single Bed non-Ac Room</li>

                        </th>

                    </ul>



                <tr>
                    <ul>
                        <td>
                            <li>&#8377; <%=e.getSingleacrate() %></li>

                        </td>
                        <td>
                            <li>&#8377; <%=e.getSinglenonacrate() %></li>

                        </td>

                    </ul>







                    </th>
            </table>





            <table>
                <tr>
                    <ul>
                        <th>
                            <li>Double Bed Ac Room</li>

                        </th>
                        <th>
                            <li>Double Bed non-Ac Room</li>

                        </th>

                    </ul>



                <tr>
                    <ul>
                        <td>
                            <li>&#8377; <%=e.getDoubleacrate() %></li>

                        </td>
                        <td>
                            <li>&#8377; <%=e.getDoublenonacrate() %></li>

                        </td>

                    </ul>







                    </th>
            </table>
                      <input type = "submit" value = "View Details">
    </div>
    


  

        </form>
<br><br><br><br><br>
    <hr>

<%
}
%>
    
</body>

</html>