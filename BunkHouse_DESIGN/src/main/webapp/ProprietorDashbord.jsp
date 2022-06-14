<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Proprietor Dashboard</title>
<style>
	.delete img
	{
		height: 50vh;
		width: 70%;
	}
</style>
</head>
<body>
<%@ include file="ProperietorDashbord_Navbar.jsp"%>

<!-- <h1><center>Proprietor Dashboard</center></h1> -->

<%

			
				
			// proname = Proprietor name 
			//String name1 = (String)session.getAttribute("proname");
			//out.print("welcome " + name1);
%>

 <!----------------------------------------- Card----------------------------------------------------- -->


 <div class="row row-cols-1 row-cols-md-3 g-4">

	 <a href="Add_New_Property.jsp">

            <div class="col">
                <div class="card">
                    <img src="data:image/png;base64,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" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title"><br><br><br><br> Add New Property</h5>
                        <p class="card-text"></p>
                    </div>
                </div>
            </div>
            
        </a>


<a href="View_your_property.jsp">


	
	<div class="col">
		<div class="card">
			<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnXjbgj7qpWvLKI_ZDg4KLTCO9jkJVKM3Ehg&usqp=CAU" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">My Property</h5>
				<p class="card-text"></p>
			</div>
		</div>
	</div>
	</a>
	
	
	<a href="#">
	<div class="col">
		<div class="card delete">
			<img src="data:image/png;base64,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" alt="...">
			<div class="card-body">
				<h5 class="card-title">Delete Property</h5>
				<p class="card-text"></p>
			</div>
		</div>
	</div>
	</a>
	
	<a href="#">
	<div class="col">
		<div class="card ">
			<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlV7vOqwj_2SXpRNEVUv5YtCxvXZVhQWexvw&usqp=CAU" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">Search Property</h5>
				<p class="card-text"></p>
			</div>
		</div>
	</div>
	</a>
</div>

 <li><a class="dropdown-item" href="View_your_property.jsp">My Propertyes</a></li>
                            <li><a class="dropdown-item" href="#">Profile</a></li>
                           <li><a class="dropdown-item" href="#">Delete</a></li>
                            <li><a class="dropdown-item" href="#">Update</a></li> 
                            <li><a class="dropdown-item" href="#">Book Room</a></li>
                            
                            <li><a class="dropdown-item" href="Add_New_Property.jsp">Add Property</a></li>
                           


<!-- Optional JavaScript; choose one of the two! -->

<!-- Option 1: Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>

<!-- Option 2: Separate Popper and Bootstrap JS -->
<!--
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
-->






<div class="b-example-divider mb-3 " >


<div class="container">
	<footer class="py-3 my-4 ">
		<ul class="nav justify-content-center border-bottom pb-3 mb-3 ">
			<li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Home</a></li>
			<li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Features</a></li>
			<li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Pricing</a></li>
			<li class="nav-item"><a href="#" class="nav-link px-2 text-muted">FAQs</a></li>
			<li class="nav-item"><a href="#" class="nav-link px-2 text-muted">About</a></li>
		</ul>
		<p class="text-center text-muted">&copy; 2021 BunkHouse, Inc</p>
	</footer>
</div>
</div>








		

		

</body>
</html>