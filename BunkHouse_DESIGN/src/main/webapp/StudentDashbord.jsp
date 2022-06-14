<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Dashboard</title>
</head>
<body>
<%@ include file="Student_Dashbord_navbar.jsp"%> 
<%
	try
	{
	Cookie studentmail[]=request.getCookies();
	//out.print("Hello "+studentmail[1].getValue());
	}
	catch (Exception exe)
	{
		out.print(exe);
		
	}
%>


    <!-------------------------- images--------------------------------------------------- -->



    <div id="carouselExampleCaptions" class="carousel slide carousel-fade" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
                aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="https://source.unsplash.com/random/1400x400/?bulding,night" class="d-block w-100" alt="..."
                    width="6000" height="400">
                <div class="carousel-caption d-none d-md-block ">
                    <h5>BunkHouse</h5>
                    <p>One Stop Destination For Your Need</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="https://source.unsplash.com/random/1400x400/?bulding" class="d-block w-100" alt="..."
                    width="6000" height="400">
                <div class="carousel-caption d-none d-md-block">
                    <h5>BunkHouse</h5>
                    <p>Easy way to find a perfect property</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="https://source.unsplash.com/random/1400x400/?students" class="d-block w-100" alt="..."
                    width="6000" height="400">


                <div class="carousel-caption d-none d-md-block">
                    <h5>BunkHouse</h5>
                    <p>We provide a complete service for the rental of Accommodation</p>
                </div>

            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
            data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
            data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

<div class="row row-cols-1 row-cols-md-3 g-4">

      


        <a href="View_All_Property.jsp">

            <div class="col">
                <div class="card">
                    <img src="data:image/jpeg;base64,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" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">View All Properties</h5>
                        <p class="card-text"></p>
                </div>
            </div>
        </div>
    </a>
        
    </div>
























</body>
</html>