<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html>

    <head>
      
        <title>Add Your Property</title>
        <link href="//db.onlinewebfonts.com/c/7cc6719bd5f0310be3150ba33418e72e?family=Comic+Sans+MS" rel="stylesheet" type="text/css"/>
        <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    </head>

    <style>
    @import url(//db.onlinewebfonts.com/c/7cc6719bd5f0310be3150ba33418e72e?family=Comic+Sans+MS);
        /* * {
            margin: 0%;
            padding: 0%;
            font-size: 25px;
            font-family: Comic Sans MS; 
            font-weight: 400;
            
            


        }

        html,
        body {
            width: 100%;
            height: 100%;
            /* background-image: url(https://images.unsplash.com/photo-1554034483-04fda0d3507b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHBsYWluJTIwYmFja2dyb3VuZHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60);
            background-size: cover;
            background-position: center; */

        /* }

        body::-webkit-scrollbar {
            display: none;
        }

        #main {
            min-height: 370%;
            width: 100%;

           /* background-image: linear-gradient(white ,pink);*/
            /* background: linear-gradient(to right, rgba(0, 0, 0, 0.678),  transparent );

        }

        .box {
            /* border: 2px solid red; */
            /* width: 60%; */
            /* height: 100vh; */
            /* position: absolute; */
            /* left: 40%; */
            /* transform: translate(-20%, 0%); */
        /* }
        form
        {
            height: 200vh;
        } */
        /* h1
        {
            position: absolute;
            left: 40%;
            transform: translate(-20%, 0%);
            border-bottom: 2px solid black;
        
        }  */


body
{
		 
            background: linear-gradient(to bottom, rgba(0, 0, 0, 0.37),  transparent );
}

        #form {
      width: 50%;
      margin: 25px 20%;
    }

    .radio {
      display: flex;

    }

    .type .form-check {
      margin: 20px 30px 20px 0px
    }

    .input-group {
      margin: 20px 0px;
    }
    h1
    {
      border-bottom: 1px solid Black;
      border-top: 1px solid black;
      font-family: "Gilroy";
      font-weight: 300;
      
    }
    h4
    {
      font-family: "Gilroy";
      font-weight: 500;
      font-size: x-large;
      text-decoration: underline;

    }
    .wifi .form-check
    {
      margin: 0px 20px 0px 20px ;
      
  

    }
    .wifi h5::before
    {
      content: "";
      margin-left: 50px;


    }

    .form-check-input , .form-check-label
    {
      cursor: pointer;
    }
    .but
    {
      margin-left: 29%;
    }











      
    </style>

    <body>
    
    <%@ include file="ProperietorDashbord_Navbar.jsp"%>
            <%@ page import="java.util.Random" %>
            <% Random random=new Random(); StringBuilder sb=new StringBuilder(); for(int i=0 ; i<4 ; i++) {
                sb.append(random.nextInt(10)); } String Id=sb.toString(); %>
                <!-- <div id="main"> -->


                    <!-- <h1 style="font-size: 50px;">
                        Add New Property
                    </h1> <br><br> <br><br> -->

                    <!-- <div class="box">
                        <form action="Addnewproperty1.jsp">


                            Property ID: <%=Id%>
                                <p>(This is Your Property ID which will help to Search Edit and <br> other Operation to
                                    perform against this Property
                                    This is Unique)

                                </p>

                                <input type="hidden" name="propertyid" value="<%=Id%>">


                                <br><br>

                                <h3 class="details">
                                    Property Details

                                    <hr>
                                </h3>
                                <br>
                                Accommodation type: <br> <br>

                                <label for="a">PG</label>

                                <input type="radio" name="Type" id="a" value="PG" required>

                                <label for="b"> Hostel</label>
                                <input type="radio" name="Type" id="b" value="Hostel" required>


                                <label for="c">Flat</label>
                                <input type="radio" name="Type" id="c" value="Flat" required>


                                <br><br>

                                Accommodation Name: <input type="text" name="aname" id="" required>
                                <br><br>
                                City: <input type="text" name="acity" required>
                                <br> <br> State: <input type="text" name="astate" id="" required> <br><br>
                                Pincode: <input type="number" name="apincode" id="" required> <br><br>

                                Address: <br> <textarea name="aaddress" id="" cols="30" rows="4" required></textarea>
                                <br><br>
                                LandMark: <input type="text" name="alandmark" required>
                                <br> <br>
                                Map Location: <input type="url" name="alocation" placeholder="Enter only URL">

                                <a href="https://www.google.co.in/maps" target="__blank">Google map</a>
                                <br><br>
                                <a href="Location_step.jsp" target="__blank">How to Find Location URL ?</a>
                                <br> <br>

                                ConntactNo: <input type="number" name="acontact" id="">


                                <br><br><br><br>



                                <h3 class="Room">
                                    Room Details

                                    <hr>
                                </h3>
                                <br>

                                Total Rooms: <input type="number" name="totalroom" value="0" id="" required>
                                <p>(Don't change the value If No Ac rooms are Available)</p>
                                <br><br>
                                Single Bed Ac Rooms: <input type="number" name="singlebedacroom" value="0" id=""
                                    required>


                                Single Bed Non-Ac Rooms: <input type="number" name="singlebednonacroom" value="0" id=""
                                    required>
                                <br><br>
                                Single Bed Ac Room Rate: &#8377; <input type="number" name="singleacrate" id=""
                                    required>
                                Single Bed Non-Ac Room Rate: &#8377; <input type="number" name="singlenonacrate" id=""
                                    required>
                                <br><br>

                                Double Bed Ac Rooms: <input type="number" name="doublebedacroom" value="0" id=""
                                    required>
                                Double Bed Non-Ac Rooms: <input type="number" name="doublebednonacroom" value="0" id=""
                                    required>
                                <br><br>
                                Double Bed Ac Room Rate: &#8377; <input type="number" name="doubleacrate" id=""
                                    required>
                                Double Bed Non-Ac Room Rate: &#8377; <input type="number" name="doublenonacrate" id=""
                                    required>
                                <br><br>


                                <h3 class="facility">
                                    Facility

                                    <hr>
                                </h3>
                                <br>

                                Wifi: <br>
                                <label for="wifiyes">Yes</label>

                                <input type="radio" name="wifi" id="wifiyes" value="Yes" required>
                                <label for="wifino">No</label>
                                <input type="radio" name="wifi" id="wifino" value="No" required>


                                <br><br>

                                Water cooler: <br>
                                <label for="wcyes">Yes</label>

                                <input type="radio" name="wc" id="wcyes" value="Yes" required>
                                <label for="wcno">No</label>
                                <input type="radio" name="wc" id="wcno" value="No" required>





                                <br><br><br>


                                <h3 class="Pic">
                                    Images

                                    <hr>
                                </h3>
                                <br>

                                Upload Images of Your Property <br> <input type="file" name="img" id="">




                                <br><br>
                                <hr>
                                <br><br>

                                <input type="submit" value="Register Your Property">
                                <input type="reset" value="Reset Form">



                        </form>
                    </div> -->

                <!-- </div> -->




                <div id="form">


                    <form action="Addnewproperty1.jsp">
                
                      <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Property Details</h1>
                <input type="hidden" name="propertyid" value="<%=Id%>">
                
                  <div class="input-group">
                        <span class="input-group-text">Property Id</span>
                        <input type="text" name="aname" value="<%=Id%>" readonly disabled class="form-control">

                              
                      </div>  <p>(This is Your Property ID which will help to Search Edit and <br> other Operation to
                                    perform against this Property
                                    This is Unique)
                     <h4>Accommodation type</h4> 
                      <div class="radio type">
                
                        <div class="form-check">
                          <input class="form-check-input" type="radio" name="Type" value="PG" required id="flexRadioDefault1">
                          <label class="form-check-label" for="flexRadioDefault1">
                            PG
                          </label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="radio" name="Type" value="Hostel" required id="flexRadioDefault2">
                          <label class="form-check-label" for="flexRadioDefault2">
                            Hostel
                          </label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="radio" name="Type" value="Flat" required id="flexRadioDefault3">
                          <label class="form-check-label" for="flexRadioDefault3">
                            Flat
                          </label>
                        </div>
                      </div>
                
                      <div class="input-group">
                        <span class="input-group-text">Accommodation Name</span>
                        <input type="text" name="aname" required class="form-control">
                
                      </div>
                
                      <div class="input-group">
                        <span class="input-group-text">City</span>
                        <input type="text" name="acity" required class="form-control">
                      </div>
                      
                      <div class="input-group">
                        <span class="input-group-text">State</span>
                        <input type="text" name="astate" required class="form-control">
                      </div>
                
                      <div class="input-group">
                        <span class="input-group-text">Pincode</span>
                        <input type="number"  name="apincode" required class="form-control">
                
                      </div>
                
                      <div class="input-group">
                        <span class="input-group-text">AAddress</span>
                        <input type="text" name="aaddress" required class="form-control">
                
                      </div>
                
                
                     
                
                      <div class="input-group">
                        <span class="input-group-text">Landmark</span>
                        <input type="text" name="alandmark" required class="form-control">
                
                      </div>
                
                      <div class="input-group">
                        <span class="input-group-text">Map Location</span>
                        <input type="url" name="alocation" required placeholder="Enter only URL " class="form-control">
                        &nbsp; &nbsp;&nbsp;&nbsp; <a href="https://www.google.co.in/maps" target="__blank"> Google map</a>
                      </div>
                      <a href="Location_step.jsp" target="__blank">How to Find Location URL ?</a>
                
                
                      <div class="input-group">
                        <span class="input-group-text">Contact No</span>
                        <input type="text" name="acontact" required class="form-control">
                
                      </div>
                
                
                      <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Room Details</h1>
                
                
                      <div class="input-group">
                        <span class="input-group-text">Total Rooms</span>
                        <input type="number" name="totalroom" value="0" required class="form-control">
                       
                      </div>
                
                      <h4>Single Bed Details</h4>
                      <div class="input-group">
                        <span class="input-group-text">Single Bed Ac Rooms</span>
                        <input type="number" name="singlebedacroom" value="0" required class="form-control">
                
                        <span class="input-group-text">Single Bed Non-Ac Rooms</span>
                        <input type="number" name="singlebednonacroom" value="0" required class="form-control">
                       
                      </div>
                      <p>(Don't change the value If No Ac rooms are Available)</p>
                
                        
                      <div class="input-group">
                        <span class="input-group-text"> Single Bed Ac Room Rate &#8377;</span>
                        <input type="number" name="singleacrate" value="0" required class="form-control">
                
                        <span class="input-group-text"> Single Bed Non-Ac Room Rate &#8377;</span>
                        <input type="number" name="singlenonacrate" value="0" required class="form-control">
                       
                      </div>
                
                      <h4>Double Bed Details</h4>
                      <div class="input-group">
                        <span class="input-group-text">Double Bed Ac Rooms</span>
                        <input type="number" name="doublebedacroom" value="0" required class="form-control">
                
                        <span class="input-group-text">Double Bed Non-Ac Rooms</span>
                        <input type="number" name="doublebednonacroom" value="0" required class="form-control">
                       
                      </div>
                      <p>(Don't change the value If No Ac rooms are Available)</p>
                
                      <div class="input-group">
                        <span class="input-group-text"> Double Bed Ac Room Rate &#8377;</span>
                        <input type="number" name="doubleacrate" value="0" required class="form-control">
                
                        <span class="input-group-text"> Double Bed Non-Ac Room Rate &#8377;</span>
                        <input type="number" name="doublenonacrate" value="0" required class="form-control">
                       
                      </div>
                
                
                
                      <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Facility</h1>
                
                
                      <div class="radio wifi">
                        <h5>Wifi</h5>
                        <div class="form-check">
                          <input class="form-check-input" type="radio" name="wifi" value="Yes" required id="flexRadiowifi1">
                          <label class="form-check-label" for="flexRadiowifi1">
                            Yes
                          </label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="radio" name="wifi" value="No" required id="flexRadiowifi2">
                          <label class="form-check-label" for="flexRadiowifi2">
                          No
                          </label>
                        </div>
                        
                
                
                
                        <h5>Water cooler</h5>
                        <div class="form-check">
                          <input class="form-check-input" type="radio" name="wc" value="Yes" required id="flexRadiowater1" >
                          <label class="form-check-label" for="flexRadiowater1">
                            Yes
                          </label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="radio" name="wc" value="No" required id="flexRadiowater2">
                          <label class="form-check-label" for="flexRadiowater2">
                          No
                          </label>
                        </div>
                
                      </div>
                
                
                
                      <div class="input-group">
                        <span class="input-group-text">Upload Imaged</span>
                        <input type="file" name="img"   class="form-control">
                       
                      </div>
                
                      <!-- <button type="button" class="btn btn-secondary">Secondary</button> -->
                      <div class="but">
                
                        <input type="submit" class="btn btn-outline-success" value="Register Your Property">
                        <input type="reset" class="btn btn-outline-danger" value="Reset Form">
                        
                      </div>
                
                
                
                
                      
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                    </form>
                
                
                  </div>
                
                
                
                
                
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




    </body>

    </html>