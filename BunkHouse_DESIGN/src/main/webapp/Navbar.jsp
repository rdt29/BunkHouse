<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
  <body>
   
     <%@ page import="java.util.Random" %>
            <% Random random=new Random(); StringBuilder sb=new StringBuilder(); for(int i=0 ; i< 1 ; i++) {
                sb.append(random.nextInt(10)); } String num1=sb.toString(); // out.print(num1); out.print("<br>");

                StringBuilder sb2=new StringBuilder();

                for(int i=0 ; i< 1 ; i++) { sb2.append(random.nextInt(10)); } String num2=sb2.toString(); %> 

   
    <!-- nav bar -->
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
                            <li><a class="dropdown-item" href="#">MH</a></li>
                            <li><a class="dropdown-item" href="#">MH</a></li>
                            <li><a class="dropdown-item" href="#">MH</a></li>
                            <li><a class="dropdown-item" href="#">MH</a></li>
                            <li><a class="dropdown-item" href="#">MH</a></li>
                            <li><a class="dropdown-item" href="#">MH</a></li>
                            <li><a class="dropdown-item" href="#">MH</a></li>
                            <li><a class="dropdown-item" href="#">MH</a></li>
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

   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
  </body>
</html>