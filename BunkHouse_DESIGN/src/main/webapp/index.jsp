<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %> 

<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>BunkHouse</title>
  <style>
  body::-webkit-scrollbar {
        display: none;
    }
  </style>
   

</head>

<body>
 <!--Start of Tawk.to Script-->
<script type="text/javascript">
    var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
    (function(){
    var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
    s1.async=true;
    s1.src='https://embed.tawk.to/61f77a4a9bd1f31184da2000/1fqnbbdok';
    s1.charset='UTF-8';
    s1.setAttribute('crossorigin','*');
    s0.parentNode.insertBefore(s1,s0);
    })();
    </script>
    <!--End of Tawk.to Script-->

     <%@ page import="java.util.Random" %>
            <% Random random=new Random(); StringBuilder sb=new StringBuilder(); for(int i=0 ; i< 1 ; i++) {
                sb.append(random.nextInt(10)); } String num1=sb.toString(); // out.print(num1); out.print("<br>");

                StringBuilder sb2=new StringBuilder();

                for(int i=0 ; i< 1 ; i++) { sb2.append(random.nextInt(10)); } String num2=sb2.toString(); %> 


    <!-- --------------------------------------nav bar---------------------------------- -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#"><img src="bksmall3.png" alt="" srcset=""></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            State
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="#">Mp</a></li>
                            <li><a class="dropdown-item" href="#">MH</a></li>
                            
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="#">Something else here</a></li>
                        </ul>
                    </li>


                    <!-- BBUTTON FOR PROPERTYER LOGIN -->

                    <li class="nav-item">
                        <a class="nav-link active" href="#" data-bs-toggle="modal"
                            data-bs-target="#propertyloginModalToggle">List Your Property</a>
                    </li>



                </ul>

                <div class="mx-2 class=  ">




                    <button class="btn btn-outline-light" data-bs-toggle="modal"
                        data-bs-target="#loginModalToggle">Login</button>
                    <button class="btn btn-outline-light" data-bs-toggle="modal"
                        data-bs-target="#signupModalToggle2">Signup</button>
                </div>
                <!-- search form -->
                <div class="pt-1">

                    <form class="d-flex" pt-2>
                        <input class="form-control me-2 " type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-light" type="submit">Search</button>
                    </form>
                </div>
            </div>
        </div>
    </nav>

    <!-- -------------------------------------Propertyer-------------------------------------------- -->


    <!-- Proprietor Login Modal -->
    <div class="modal fade" id="propertyloginModalToggle" aria-hidden="true"
        aria-labelledby="propertysignupModalToggleLabel" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="propertysignupToggleLabel">Proprietor Login</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <!-- property login form -->

                    <form action="Proprietor_login1.jsp" method="POST">
                        <div class="form-floating mb-3">
                            <input type="email" class="form-control" name="email" id="floatingInput"
                                placeholder="name@example.com" required>
                            <label for="floatingInput">Email address</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="password" class="form-control" name="password" id="floatingPassword"
                                placeholder="Password" required>
                            <label for="floatingPassword">Password <svg xmlns="http://www.w3.org/2000/svg" width="16"
                                    height="16" fill="currentColor" class="bi bi-eye-slash" viewBox="0 0 16 16">
                                    <path
                                        d="M13.359 11.238C15.06 9.72 16 8 16 8s-3-5.5-8-5.5a7.028 7.028 0 0 0-2.79.588l.77.771A5.944 5.944 0 0 1 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.134 13.134 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755-.165.165-.337.328-.517.486l.708.709z" />
                                    <path
                                        d="M11.297 9.176a3.5 3.5 0 0 0-4.474-4.474l.823.823a2.5 2.5 0 0 1 2.829 2.829l.822.822zm-2.943 1.299.822.822a3.5 3.5 0 0 1-4.474-4.474l.823.823a2.5 2.5 0 0 0 2.829 2.829z" />
                                    <path
                                        d="M3.35 5.47c-.18.16-.353.322-.518.487A13.134 13.134 0 0 0 1.172 8l.195.288c.335.48.83 1.12 1.465 1.755C4.121 11.332 5.881 12.5 8 12.5c.716 0 1.39-.133 2.02-.36l.77.772A7.029 7.029 0 0 1 8 13.5C3 13.5 0 8 0 8s.939-1.721 2.641-3.238l.708.709zm10.296 8.884-12-12 .708-.708 12 12-.708.708z" />
                                </svg></label>
                        </div>
                        <button type="submit" class="btn btn-outline-success mb-2">Login</button>
                    </form>

                    <button class="btn btn-danger" data-bs-target="#propertyforgetModalToggle" data-bs-toggle="modal">
                        Forget Password</button>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-primary" data-bs-target="#propertysignupModalToggle2" data-bs-toggle="modal">
                        Not Registered?</button>
                </div>
            </div>
        </div>
    </div>



    <!-- Propertyer forget password -->

    <div class="modal fade" id="propertyforgetModalToggle" aria-hidden="true"
        aria-labelledby="propertyforgetModalToggleLabel" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="forgetToggleLabel">Propertyer Forget Password</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <!-- Propertyer forgetpass form -->


                    <form action="Proprietorforgetpass1.jsp" >
                        <div class="form-floating mb-3">
                            <input type="email" class="form-control" name="email" id="floatingInput"
                                placeholder="name@example.com" required>
                            <label for="floatingInput">Email address</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="number" class="form-control" name="contact" id="floatingcontact"
                                placeholder="mobileno" required>
                            <label for="floatingcontact">Mobile No </label>
                        </div>

                        <div class="form-check">
                            <input class="form-check-input" type="radio" name = "otp"  value="mail"
                                id="flexRadioDefault1" checked required>
                            <label class="form-check-label" for="flexRadioDefault1">
                                OTP via Mail
                            </label>
                        </div>


                        <div class="form-check mb-3">
                            <input class="form-check-input" type="radio" name = "otp"  value="sms"
                                id="flexRadioDefault2" required>
                            <label class="form-check-label" for="flexRadioDefault2">
                                OTP via Sms
                                <p>Charges may apply</p>
                            </label>
                        </div>
                        <button type="submit" class="btn btn-outline-success mb-2">Reset</button>
                    </form>




                </div>
                <div class="modal-footer">
                    <button class="btn btn-primary" data-bs-target="#propertysignupModalToggle2" data-bs-toggle="modal">
                        Not Registered?</button>
                </div>
            </div>
        </div>
    </div>





    <!-- Propertyer  signup Modal -->


    <div class="modal fade" id="propertysignupModalToggle2" aria-hidden="true"
        aria-labelledby="propertysignupToggleLabel2" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="propertyexampleModalToggleLabel2">Propertyer Signup</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">




                    <!-- New Propertyer form  -->
                    <form action="Student_signup1.jsp">

                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" name="name" id="floatingname" placeholder="Name"
                                required>
                            <label for="floatingname">Name</label>
                        </div>


                        <div class="form-floating mb-2 ">
                            <input type="email" class="form-control" name="email" id="floatingInput"
                                placeholder="name@example.com" required>
                            <label for="floatingInput">Email address</label>
                        </div>


                        <div class="form-floating mb-2">
                            <input type="number" class="form-control" name="contact" id="floatingnumber"
                                placeholder="Without +91" required>
                            <label for="floatingnumber">Contact no (Without +91)</label>
                        </div>



                        <div class="form-floating mb-2">
                            <input type="password" class="form-control" name="password" id="floatingpass"
                                placeholder="password" required>
                            <label for="floatingpass">Password <svg xmlns="http://www.w3.org/2000/svg" width="16"
                                    height="16" fill="currentColor" class="bi bi-eye-slash" viewBox="0 0 16 16">
                                    <path
                                        d="M13.359 11.238C15.06 9.72 16 8 16 8s-3-5.5-8-5.5a7.028 7.028 0 0 0-2.79.588l.77.771A5.944 5.944 0 0 1 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.134 13.134 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755-.165.165-.337.328-.517.486l.708.709z" />
                                    <path
                                        d="M11.297 9.176a3.5 3.5 0 0 0-4.474-4.474l.823.823a2.5 2.5 0 0 1 2.829 2.829l.822.822zm-2.943 1.299.822.822a3.5 3.5 0 0 1-4.474-4.474l.823.823a2.5 2.5 0 0 0 2.829 2.829z" />
                                    <path
                                        d="M3.35 5.47c-.18.16-.353.322-.518.487A13.134 13.134 0 0 0 1.172 8l.195.288c.335.48.83 1.12 1.465 1.755C4.121 11.332 5.881 12.5 8 12.5c.716 0 1.39-.133 2.02-.36l.77.772A7.029 7.029 0 0 1 8 13.5C3 13.5 0 8 0 8s.939-1.721 2.641-3.238l.708.709zm10.296 8.884-12-12 .708-.708 12 12-.708.708z" />
                                </svg></label>
                        </div>

                        recaptcha
                        <div class="form-floating mb-2"
                            style="height: 1.3cm; width: 3.2cm; font-weight: bolder; font-size: large; color: azure; margin: 0cm; margin-right: 0in; border: 2px solid black; align-items: center; text-align: center; padding-top: .3cm ; background-image: url('https://picsum.photos/200/300?random=?');">
                            
                                     <%=num1%>
                                         <%="+"%>
                                             <%=num2%>
                                                 <%="="%> 

                        </div>

                        <a href="index.jsp">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                class="bi bi-arrow-repeat" viewBox="0 0 16 16">
                                <path
                                    d="M11.534 7h3.932a.25.25 0 0 1 .192.41l-1.966 2.36a.25.25 0 0 1-.384 0l-1.966-2.36a.25.25 0 0 1 .192-.41zm-11 2h3.932a.25.25 0 0 0 .192-.41L2.692 6.23a.25.25 0 0 0-.384 0L.342 8.59A.25.25 0 0 0 .534 9z" />
                                <path fill-rule="evenodd"
                                    d="M8 3c-1.552 0-2.94.707-3.857 1.818a.5.5 0 1 1-.771-.636A6.002 6.002 0 0 1 13.917 7H12.9A5.002 5.002 0 0 0 8 3zM3.1 9a5.002 5.002 0 0 0 8.757 2.182.5.5 0 1 1 .771.636A6.002 6.002 0 0 1 2.083 9H3.1z" />
                            </svg>
                            Refresh
                        </a>
                        <div class="form-floating mb-3">
                            <input type="number" class="form-control" name="capcha" id="floatingcap"
                                placeholder="Enter Answer here" required>
                            <label for="floatingcap">Answer</label>
                        </div>

                        <button type="submit" class="btn btn-primary">Signup</button>

                        <input type="hidden" name="num1" value="<%=num1%>">
                        <input type="hidden" name="num2" value="<%=num2%>">

                    </form>
                    <div class="modal-footer">
                        <button class="btn btn-primary" data-bs-target="#propertyloginModalToggle"
                            data-bs-toggle="modal">
                            Already Registered?</button>
                    </div>

                </div>

            </div>

        </div>
    </div>
    </div>














    <!-- ---------------------------------------------Student------------------------------------------------------------------- -->






    <!-- Student Login Modal -->
    <div class="modal fade" id="loginModalToggle" aria-hidden="true" aria-labelledby="signupModalToggleLabel"
        tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="signupToggleLabel">Login</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <!-- Student login form -->

                    <form action="Student_login1.jsp" method="POST">
                        <div class="form-floating mb-3">
                            <input type="email" class="form-control" name="email" id="floatingInput"
                                placeholder="name@example.com" required>
                            <label for="floatingInput">Email address</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="password" class="form-control" name="password" id="floatingPassword"
                                placeholder="Password" required>
                            <label for="floatingPassword">Password <svg xmlns="http://www.w3.org/2000/svg" width="16"
                                    height="16" fill="currentColor" class="bi bi-eye-slash" viewBox="0 0 16 16">
                                    <path
                                        d="M13.359 11.238C15.06 9.72 16 8 16 8s-3-5.5-8-5.5a7.028 7.028 0 0 0-2.79.588l.77.771A5.944 5.944 0 0 1 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.134 13.134 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755-.165.165-.337.328-.517.486l.708.709z" />
                                    <path
                                        d="M11.297 9.176a3.5 3.5 0 0 0-4.474-4.474l.823.823a2.5 2.5 0 0 1 2.829 2.829l.822.822zm-2.943 1.299.822.822a3.5 3.5 0 0 1-4.474-4.474l.823.823a2.5 2.5 0 0 0 2.829 2.829z" />
                                    <path
                                        d="M3.35 5.47c-.18.16-.353.322-.518.487A13.134 13.134 0 0 0 1.172 8l.195.288c.335.48.83 1.12 1.465 1.755C4.121 11.332 5.881 12.5 8 12.5c.716 0 1.39-.133 2.02-.36l.77.772A7.029 7.029 0 0 1 8 13.5C3 13.5 0 8 0 8s.939-1.721 2.641-3.238l.708.709zm10.296 8.884-12-12 .708-.708 12 12-.708.708z" />
                                </svg></label>
                        </div>
                        <button type="submit" class="btn btn-outline-success mb-2">Login</button>
                    </form>

                    <button class="btn btn-danger" data-bs-target="#forgetModalToggle" data-bs-toggle="modal">
                        Forget Password</button>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-primary" data-bs-target="#signupModalToggle2" data-bs-toggle="modal">
                        Not Registered?</button>
                </div>
            </div>
        </div>
    </div>




    <!-- Student forget password -->

    <div class="modal fade" id="forgetModalToggle" aria-hidden="true" aria-labelledby="forgetModalToggleLabel"
        tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="forgetToggleLabel">Forget Password</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <!-- Student forgetpass form -->


                    <form action="Student_Forgetpass1.jsp" >
                        <div class="form-floating mb-3">
                            <input type="email" class="form-control" name="email" id="floatingInput"
                                placeholder="name@example.com" required>
                            <label for="floatingInput">Email address</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="number" class="form-control" name="contact" id="floatingcontact"
                                placeholder="mobileno" required>
                            <label for="floatingcontact">Mobile No </label>
                        </div>

                        <div class="form-check">
                            <input class="form-check-input" type="radio" name = "otp"  value="mail"
                                id="flexRadioDefault11" checked required>
                            <label class="form-check-label" for="flexRadioDefault11">
                                OTP via Mail
                            </label>
                        </div>


                        <div class="form-check mb-3">
                            <input class="form-check-input" type="radio" name = "otp"  value="sms"
                                id="flexRadioDefault22" required>
                            <label class="form-check-label" for="flexRadioDefault22">
                                OTP via Sms
                                <p>Charges may apply</p>
                            </label>
                        </div>
                        <button type="submit" class="btn btn-outline-success mb-2">Reset</button>
                    </form>


                </div>
                <div class="modal-footer">
                    <button class="btn btn-primary" data-bs-target="#signupModalToggle2" data-bs-toggle="modal">
                        Not Registered?</button>
                </div>
            </div>
        </div>
    </div>






    <!-- Student  signup Modal -->


    <div class="modal fade" id="signupModalToggle2" aria-hidden="true" aria-labelledby="signupToggleLabel2"
        tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalToggleLabel2">Signup</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">




                    <!-- New student form  -->
                    <form action="Student_signup1.jsp">

                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" name="name" id="floatingname" placeholder="Name"
                                required>
                            <label for="floatingname">Name</label>
                        </div>


                        <div class="form-floating mb-2 ">
                            <input type="email" class="form-control" name="email" id="floatingInput"
                                placeholder="name@example.com" required>
                            <label for="floatingInput">Email address</label>
                        </div>


                        <div class="form-floating mb-2">
                            <input type="number" class="form-control" name="contact" id="floatingnumber"
                                placeholder="Without +91" required>
                            <label for="floatingnumber">Contact no (Without +91)</label>
                        </div>



                        <div class="form-floating mb-2">
                            <input type="password" class="form-control" name="password" id="floatingpass"
                                placeholder="password" required>
                            <label for="floatingpass">Password <svg xmlns="http://www.w3.org/2000/svg" width="16"
                                    height="16" fill="currentColor" class="bi bi-eye-slash" viewBox="0 0 16 16">
                                    <path
                                        d="M13.359 11.238C15.06 9.72 16 8 16 8s-3-5.5-8-5.5a7.028 7.028 0 0 0-2.79.588l.77.771A5.944 5.944 0 0 1 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.134 13.134 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755-.165.165-.337.328-.517.486l.708.709z" />
                                    <path
                                        d="M11.297 9.176a3.5 3.5 0 0 0-4.474-4.474l.823.823a2.5 2.5 0 0 1 2.829 2.829l.822.822zm-2.943 1.299.822.822a3.5 3.5 0 0 1-4.474-4.474l.823.823a2.5 2.5 0 0 0 2.829 2.829z" />
                                    <path
                                        d="M3.35 5.47c-.18.16-.353.322-.518.487A13.134 13.134 0 0 0 1.172 8l.195.288c.335.48.83 1.12 1.465 1.755C4.121 11.332 5.881 12.5 8 12.5c.716 0 1.39-.133 2.02-.36l.77.772A7.029 7.029 0 0 1 8 13.5C3 13.5 0 8 0 8s.939-1.721 2.641-3.238l.708.709zm10.296 8.884-12-12 .708-.708 12 12-.708.708z" />
                                </svg></label>
                        </div>

                        recaptcha
                        <div class="form-floating mb-2"
                            style="height: 1.3cm; width: 3.2cm; font-weight: bolder; font-size: large; color: azure; margin: 0cm; margin-right: 0in; border: 2px solid black; align-items: center; text-align: center; padding-top: .3cm ; background-image: url('https://picsum.photos/200/300?random=?');">
                           
                                            <%=num1%>
                                                <%="+"%>
                                                    <%=num2%>
                                                        <%="="%> 

                        </div>

                        <a href="index.jsp">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                class="bi bi-arrow-repeat" viewBox="0 0 16 16">
                                <path
                                    d="M11.534 7h3.932a.25.25 0 0 1 .192.41l-1.966 2.36a.25.25 0 0 1-.384 0l-1.966-2.36a.25.25 0 0 1 .192-.41zm-11 2h3.932a.25.25 0 0 0 .192-.41L2.692 6.23a.25.25 0 0 0-.384 0L.342 8.59A.25.25 0 0 0 .534 9z" />
                                <path fill-rule="evenodd"
                                    d="M8 3c-1.552 0-2.94.707-3.857 1.818a.5.5 0 1 1-.771-.636A6.002 6.002 0 0 1 13.917 7H12.9A5.002 5.002 0 0 0 8 3zM3.1 9a5.002 5.002 0 0 0 8.757 2.182.5.5 0 1 1 .771.636A6.002 6.002 0 0 1 2.083 9H3.1z" />
                            </svg>
                            Refresh
                        </a>
                        <div class="form-floating mb-3">
                            <input type="number" class="form-control" name="capcha" id="floatingcap"
                                placeholder="Enter Answer here" required>
                            <label for="floatingcap">Answer</label>
                        </div>

                        <button type="submit" class="btn btn-primary">Signup</button>

                        <input type="hidden" name="num1" value="<%=num1%>">
                        <input type="hidden" name="num2" value="<%=num2%>">

                    </form>
                    <div class="modal-footer">
                        <button class="btn btn-primary" data-bs-target="#loginModalToggle" data-bs-toggle="modal">
                            Already Registered?</button>
                    </div>

                </div>

            </div>

        </div>
    </div>
    </div>
<!-- ----------------------End of Nav--------------------------------------------------- -->





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
                <img src="https://source.unsplash.com/random/1400x400/?flats" class="d-block w-100" alt="..."
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
                <img src="https://source.unsplash.com/random/1400x400/?Apartments,hostels" class="d-block w-100" alt="..."
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


    <!----------------------------------------- Card----------------------------------------------------- -->


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