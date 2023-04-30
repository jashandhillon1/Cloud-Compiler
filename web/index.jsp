
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Flex Art Corporate Category Flat Bootstrap Responsive Website Template | Home : W3layouts</title>

        <!-- Meta tag Keywords -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta charset="utf-8">
        <meta name="keywords" content="Flex Art Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script>
            addEventListener("load", function () {
                setTimeout(hideURLbar, 0);
            }, false);

            function hideURLbar() {
                window.scrollTo(0, 1);
            }
        </script>
        <script>
            function usersignuplogic()
            {

                var username = document.getElementById("username").value;
                var password = document.getElementById("password").value;
                var name = document.getElementById("name").value;
                var email = document.getElementById("email").value;
                var phoneno = document.getElementById("phoneno").value;
                var gender = document.getElementById("gender").value;
                var photo = document.getElementById("photo");
                var primarylanguage = document.getElementById("primarylanguage").value;
                document.getElementById("errormessage").innerHTML = "";

                if (username == "" || password == "" || name == "" || email == "" || phoneno == "" || gender == "" || primarylanguage == "")
                {
                    document.getElementById("errormessage").innerHTML = "Please fill all fields";
                } else if (photo.files.length == 0)
                {
                    document.getElementById("errormessage").innerHTML = "Please select file";
                } else {

                    var xhttp = new XMLHttpRequest();

                    xhttp.onreadystatechange = function ()
                    {
                        // Browser is ready and server also sends 200 OK
                        if (this.readyState == 4 && this.status == 200)
                        {
                            var res = this.responseText;
                            res = res.trim();
                            alert(res);
                            if (res == "success") {
                                document.getElementById("errormessage").innerHTML = "Signup Successfull";
                                setTimeout(gotouserlogin, 2000);
                                document.getElementById("username").value = "";
                                document.getElementById("password").value = "";
                                document.getElementById("name").value = "";
                                document.getElementById("email").value = "";
                                document.getElementById("phoneno").value = "";
                                document.getElementById("gender").value = "";
                                document.getElementById("photo").value = "";
                                document.getElementById("primarylanguage").value = "";
                            } else {
                                document.getElementById("errormessage").innerHTML = "Username already exist";

                            }
                        }
                    };

                    xhttp.open("POST", "./usersignupresponse", true);

                    // *** Extra code to add form-data to request ***
                    var formdata = new FormData();
                    formdata.append("username", username);
                    formdata.append("password", password);
                    formdata.append("name", name);
                    formdata.append("email", email);
                    formdata.append("phoneno", phoneno);
                    formdata.append("gender", gender);
                    formdata.append("photo", photo.files[0]);
                    formdata.append("primarylanguage", primarylanguage);


                    xhttp.send(formdata);
                }

            }

            function gotouserlogin() {
               $("#exampleModalCenter2").modal("hide");

                $("#exampleModalCenter1").modal("show");
                
            }

        </script>
        
        <script>
            function searchlogic(){
                
                var keyword=document.getElementById("searchkeyword").value;
                if(keyword==""){
                    
                }
                else{
                    var xhttp = new XMLHttpRequest();

                    xhttp.onreadystatechange = function ()
                    {
                        if (this.readyState == 4 && this.status == 200)
                        {
                            var res = this.responseText;
                            res = res.trim();
                            
                            var jsonobj=JSON.parse(res);
                            
                            var jsonarr=jsonobj["ans"];
                            var ans="";
                            for(var i=0;i<jsonarr.length;i++){
                                var o=jsonarr[i];
                                
                                ans+="<p class=\"searchitem\" onclick=\"gotoprofile('"+o.username+"')\">"+o.name+"</p>";
                            }
                            document.getElementById("searchresults").innerHTML=ans;
                            
                        }
                        

                      
                    };
                    
                      var url = "./searchresponse?keyword=" +keyword;
                        xhttp.open("GET", url, true);
                        xhttp.send();
                    
                    
                    
                }
            }
            
            </script>
            <script>
            function gotoprofile(username){
                location.href="userprofile.jsp?username="+username;
            }
            </script>
            

        <script>
            function userloginlogic()
            {
                
                var username = document.getElementById("lusername").value;
                var password = document.getElementById("lpassword").value;

                if (username == "" || password == "") {
                    document.getElementById("errormessage").innerHTML = "Please fill all fields";

                } else {
                    var xhttp = new XMLHttpRequest();

                    xhttp.onreadystatechange = function ()
                    {
                        if (this.readyState == 4 && this.status == 200)
                        {
                            var res = this.responseText;
                            res = res.trim();
                            alert(res);
                            if (res == "success") {
                                document.getElementById("errormessage").innerHTML = "Login Successful";
                                setTimeout(gotoindex, 2000);

                            } else {
                                document.getElementById("errormessage").innerHTML = "Invalid Username/password";
                            }
                        }
                        ;

                      
                    }
                    
                      var url = "./userloginresponse?username=" + username + "&password=" + password;
                        xhttp.open("GET", url, true);
                        xhttp.send();

                }
            }
            function gotoindex() {
                location.href = "index.jsp";
                
            }



        </script>



        <link href="css/minimal-slider.css" rel='stylesheet' type='text/css' />

        <link rel="stylesheet" href="css/bootstrap.css"> <!-- Bootstrap-Core-CSS -->
        <link href="css/style6.css" rel='stylesheet' type='text/css' />
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all" /> <!-- Style-CSS --> 
        <link rel="stylesheet" href="css/fontawesome-all.css"> <!-- Font-Awesome-Icons-CSS -->

        <link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext" rel="stylesheet">
        <style>
            .searchitem{
                margin-bottom: 10px;
            }
            .searchitem:hover{
                color:red;
            }
            </style>

    </head>

    <body>

        <!-- header -->
        <div class="header-top">
            <header>
                <div class="top-head ml-lg-auto text-center">
                    <div class="row mr-0">

                        <div class="col-lg-4">
                        </div>
                        <%if(session.getAttribute("username")==null){
                         %>   
                            
                        <div class="col-md-3 col-4 sign-btn">
                            <a href="#" data-toggle="modal" data-target="#exampleModalCenter1">
                                <i class="fas fa-lock"></i> Sign In</a>
                        </div>
                        <div class="col-md-3 col-4 sign-btn">
                            <a href="#" data-toggle="modal" data-target="#exampleModalCenter2">
                                <i class="fas fa-user"></i> Register</a>
                        </div>
                        <%}
                        else{%>
                        <%String susername=session.getAttribute("username").toString();%>
                        
                                
                        

                         
                        <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    hello <%=susername%>
                                    <i class="fas fa-angle-down"></i>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="changepassword.jsp" title="">Change Password</a>
                                    <a class="dropdown-item" href="userlogout1" title="">Logout</a>
                                    
                                </div>
                            </li>
                        
                       <% }%>
                       <div id="searchbarsection">
                           <input type="text" id="searchkeyword" placeholder="Search Users" onkeyup="searchlogic()" class="form-control"/>
                           <div id="searchresults"></div>
                       </div>
                       
                       
                        
                    </div>
                </div>
                <div class="clearfix"></div>
                <nav class="navbar navbar-expand-lg navbar-light">
                    <div class="logo">
                        <h1>
                            <a class="navbar-brand" href="index.html">
                                <i class="fab fa-cloudversify"></i> Flex Art</a>
                        </h1>
                    </div>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon">
                            <i class="fas fa-bars"></i>
                        </span>

                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ml-lg-auto text-center">
                            <li class="nav-item active">
                                <a class="nav-link" href="index.html">Home
                                    <span class="sr-only">(current)</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="features.html">Our Features</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Pages
                                    <i class="fas fa-angle-down"></i>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="about.html" title="">About Us</a>
                                    <a class="dropdown-item" href="projects.html" title="">Projects</a>
                                    <a class="dropdown-item" href="errorpage.html">404 error page</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="team.html">Team</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Pricing Pages
                                    <i class="fas fa-angle-down"></i>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="pricing.html"> Default</a>
                                    <a class="dropdown-item" href="pricing_light.html"> Light Version</a>
                                    <a class="dropdown-item" href="pricing.html"> Dark Version</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="contact.html">Contact</a>
                            </li>
                        </ul>

                    </div>
                </nav>
            </header>
        </div>
        <!-- header -->

        <!-- main image slider container -->
        <section class="slide-window">
            <div class="slide-wrapper" style="width:300%;">
                <div class="slide">
                    <div class="slide-caption text-center">
                        <h2 class="text-uppercase">Creative <span>Art</span></h2>
                        <p class="my-4">Excepteur sint occaecat non proident, sunt in culpa quis. Phasellus lacinia id erat eu ullamcorper. Nunc id ipsum fringilla,
                            gravida felis vitae. Phasellus lacinia id, sunt in culpa quis. Phasellus lacinia hasellus lacinia id erat culpa quis.</p>
                        <div class="read">
                            <a href="#" data-toggle="modal" data-target="#exampleModalCenter1" role="button">Read More <span class="btn ml-2"><i class="fas fa-arrow-right" aria-hidden="true"></i></span></a>
                        </div>				
                    </div>
                </div>
                <div class="slide slide2">
                    <div class="slide-caption text-center">
                        <h3 class="text-uppercase">Modern <span>Art </span></h3>
                        <p class="my-4">Excepteur sint occaecat non proident, sunt in culpa quis. Phasellus lacinia id erat eu ullamcorper. Nunc id ipsum fringilla,
                            gravida felis vitae. Phasellus lacinia id, sunt in culpa quis. Phasellus lacinia hasellus lacinia id erat culpa quis.</p>
                        <div class="read">
                            <a href="#" data-toggle="modal" data-target="#exampleModalCenter1" role="button">Read More <span class="btn ml-2"><i class="fas fa-arrow-right" aria-hidden="true"></i></span></a>
                        </div>	
                    </div>
                </div>
                <div class="slide slide3">
                    <div class="slide-caption text-center">
                        <h3 class="text-uppercase">Clean <span> Layout</span></h3>
                        <p class="my-4">Excepteur sint occaecat non proident, sunt in culpa quis. Phasellus lacinia id erat eu ullamcorper. Nunc id ipsum fringilla,
                            gravida felis vitae. Phasellus lacinia id, sunt in culpa quis. Phasellus lacinia hasellus lacinia id erat culpa quis.</p>
                        <div class="read">
                            <a href="#" data-toggle="modal" data-target="#exampleModalCenter1" role="button">Read More <span class="btn ml-2"><i class="fas fa-arrow-right" aria-hidden="true"></i></span></a>
                        </div>	
                    </div>
                </div>
            </div>
            <div class="slide-controller">
                <div class="slide-control-left">
                    <div class="slide-control-line"></div>
                    <div class="slide-control-line"></div>
                </div>
                <div class="slide-control-right">
                    <div class="slide-control-line"></div>
                    <div class="slide-control-line"></div>
                </div>
            </div>
        </section>
        <!-- end of main image slider container -->

        <!-- welcome -->
        <section class="Welcome py-5">
            <div class="container py-sm-5">
                <div class="welcome-grids row">
                    <div class="col-lg-6 mb-lg-0 mb-5">
                        <h3 class="mt-lg-4">Phasellus lacinia id erat.</h3>
                        <p class="my-4">Excepteur sint occaecat non proident, sunt in culpa quis. Phasellus lacinia id erat eu ullamcorper. Nunc id ipsum fringilla,
                            gravida felis vitae. Phasellus lacinia id, sunt in culpa quis. Phasellus lacinia</p>
                        <p class="mb-4">Excepteur sint occaecat non proident, sunt in culpa quis. Phasellus lacinia id erat eu ullamcorper. Nunc id ipsum fringilla.</p>
                        <div class="read">
                            <a href="about.html">Click More <span class="btn ml-2"><i class="fas fa-arrow-right" aria-hidden="true"></i></span></a>
                        </div>	
                    </div>
                    <div class="col-lg-3 col-md-4 col-6 pr-1 welcome-image">
                        <img src="images/a1.jpg" class="img-fluid" alt="" />
                    </div>	
                    <div class="col-lg-3 col-md-4 col-6 pl-1 welcome-image">
                        <img src="images/a2.jpg" class="img-fluid" alt="" />
                    </div>
                </div>	
            </div>	
        </section>
        <!-- welcome -->

        <!-- welcome bottom -->
        <section class="Welcome-bottom">
            <div class="bs-slider-overlay">
                <div class="container">
                    <div class="welcome-bottom-grids row">

                        <!-- Counter -->
                        <div class="col-lg-6 p-sm-5 p-4 welcome_left Features-bottom">
                            <div class="layer p-sm-5 p-4 welcome_left_inner agile-info">
                                <div class="agileits_w3layouts_about_counter_left w3-agile-grid">
                                    <div class="countericon">
                                        <span class="fab fa-algolia" aria-hidden="true"></span>
                                        <h3>Projects</h3>
                                    </div>
                                    <div class="counterinfo agile-info">
                                        <p class="counter">436</p> 
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="mt-sm-5 mt-3 agileits_w3layouts_about_counter_left w3-agile-grid">
                                    <div class="countericon">
                                        <span class="fab fa-asymmetrik" aria-hidden="true"></span>
                                        <h3>Awards Won</h3>
                                    </div>
                                    <div class="counterinfo agile-info">
                                        <p class="counter">147</p> 
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="mt-sm-5 mt-3 agileits_w3layouts_about_counter_left w3-agile-grid">
                                    <div class="countericon">
                                        <span class="fas fa-bug" aria-hidden="true"></span>
                                        <h3>Professionals</h3>
                                    </div>
                                    <div class="counterinfo agile-info">
                                        <p class="counter">218</p>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                        </div>
                        <!-- //Counter -->
                        <div class="col-lg-6 p-sm-5 p-4 mt-lg-5 mt-0 welcome_bottom_right">
                            <h3>Phasellus lacinia id erat eu. Nunc id ipsum</h3>
                            <p class="my-4">Excepteur sint occaecat non proident, sunt in culpa quis. Phasellus lacinia id erat eu ullamcorper. Nunc id ipsum fringilla,
                                gravida felis vitae. Phasellus lacinia id, sunt in culpa quis. Phasellus lacinia. gravida felis vitae. Phasellus lacinia id, sunt in culpa quis.</p>
                            <div class="read">
                                <a href="#" data-toggle="modal" data-target="#exampleModalCenter1" role="button">Click More <span class="btn ml-2"><i class="fas fa-arrow-right" aria-hidden="true"></i></span></a>
                            </div>
                        </div>
                    </div>	
                </div>	
            </div>	
        </section>
        <!-- //welcome bottom -->

        <!-- Features -->
        <section class="features py-5">
            <div class="container py-sm-5">
                <div class="heading pb-4">
                    <h3 class="heading mb-2 text-center"> <span>Our </span> Features </h3>
                    <p class="para mb-5 text-center">Excepteur sint occaecat non proident, sunt in culpa quis. Phasellus lacinia id.</p>
                </div>
                <div class="feature-grids row">
                    <div class="col-lg-4 col-md-6">
                        <div class="f1 p-sm-5 p-4">
                            <i class="fas fa-arrow-right" aria-hidden="true"></i>
                            <h3 class="my-3">Feature 1</h3>
                            <p>Excepteur sint occaecat non proident, sunt in culpa quis. Phasellus lacinia id erat eu ullamcorper. Nunc id ipsum.</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mt-md-0 mt-sm-5 mt-4">
                        <div class="f2-active p-sm-5 p-4">
                            <i class="fas fa-arrow-right" aria-hidden="true"></i>
                            <h3 class="my-3">Feature 2</h3>
                            <p>Excepteur sint occaecat non proident, sunt in culpa quis. Phasellus lacinia id erat eu ullamcorper. Nunc id ipsum.</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mt-lg-0 mt-sm-5 mt-4">
                        <div class="f1 p-sm-5 p-4">
                            <i class="fas fa-arrow-right" aria-hidden="true"></i>
                            <h3 class="my-3">Feature 3</h3>
                            <p>Excepteur sint occaecat non proident, sunt in culpa quis. Phasellus lacinia id erat eu ullamcorper. Nunc id ipsum.</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mt-sm-5 mt-4">
                        <div class="f1 p-sm-5 p-4">
                            <i class="fas fa-arrow-right" aria-hidden="true"></i>
                            <h3 class="my-3">Feature 4</h3>
                            <p>Excepteur sint occaecat non proident, sunt in culpa quis. Phasellus lacinia id erat eu ullamcorper. Nunc id ipsum.</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mt-sm-5 mt-4">
                        <div class="f1 p-sm-5 p-4">
                            <i class="fas fa-arrow-right" aria-hidden="true"></i>
                            <h3 class="my-3">Feature 5</h3>
                            <p>Excepteur sint occaecat non proident, sunt in culpa quis. Phasellus lacinia id erat eu ullamcorper. Nunc id ipsum.</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mt-sm-5 mt-4">
                        <div class="f1 p-sm-5 p-4">
                            <i class="fas fa-arrow-right" aria-hidden="true"></i>
                            <h3 class="my-3">Feature 6</h3>
                            <p>Excepteur sint occaecat non proident, sunt in culpa quis. Phasellus lacinia id erat eu ullamcorper. Nunc id ipsum.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- //Features -->

        <!-- Skills -->
        <section class="bottom-last">
            <div class="bottom-bg py-5 bs-slider-overlay text-left">
                <div class="container py-md-5">
                    <div class="heading pb-4">
                        <h3 class="heading mb-2 text-center text-white"> <span>Our </span> Skills </h3>
                        <p class="para mb-5 text-center">Excepteur sint occaecat non proident, sunt in culpa quis. Phasellus lacinia id.</p>
                    </div>
                    <div class="row grids">
                        <div class="col-lg-6">
                            <h4 class="title">Proffessional Skills</h4>
                            <p class="my-4">Excepteur sint occaecat non proident, sunt in culpa quis. Int Phasellus lacinia id erat eu ullamcorper. 
                                Nunc id ipsum eur fringillats, gravida felis vitae. Phasellus lacinia id, sunt in culp quis. Phasellus lacinia. gravida felis vitae. 
                                Phasellus lacinia id. sunt inculpa quis. Phasellus lacinia. gravida felis vitae.</p>
                            <div class="bnr-button">
                                <button type="button" class="btn btn-primary play" data-toggle="modal" data-target="#exampleModal">
                                    <i class="fas fa-play"></i> 
                                </button> <span class="text-white ml-2">Watch Video </span>
                            </div>
                        </div>
                        <div class="col-md-6 mt-lg-0 mt-5">
                            <div class="progress-one">
                                <h4 class="progress-tittle">Web Design</h4>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-striped" role="progressbar" style="width: 20%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>
                            <div class="progress-one my-4">
                                <h4 class="progress-tittle">PHP Development</h4>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-striped bg-success" role="progressbar" style="width: 35%" aria-valuenow="35" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>
                            <div class="progress-one">
                                <h4 class="progress-tittle">Branding</h4>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-striped bg-info" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>
                            <div class="progress-one my-4">
                                <h4 class="progress-tittle">Marketing</h4>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-striped bg-warning" role="progressbar" style="width: 70%" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>
                            <div class="progress-one">
                                <h4 class="progress-tittle">Web Features</h4>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-striped bg-danger" role="progressbar" style="width: 90%" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>
                        </div>				
                    </div>
                </div>
            </div>
        </section>
        <!-- //Skills -->

        <!-- team -->
        <section id="myteam" class="team py-5">
            <div class="container py-md-5">
                <div class="heading pb-4">
                    <h3 class="heading mb-2 text-center"> <span>Our </span> Team </h3>
                    <p class="para mb-5 text-center">Excepteur sint occaecat non proident, sunt in culpa quis. Phasellus lacinia id.</p>
                </div>
                <div class="row team-row">
                    <div class="col-md-4 col-sm-6 team-wrap">
                        <div class="team-member text-center">
                            <div class="team-img">
                                <img src="images/team1.jpg" alt="">
                                <div class="overlay-team">
                                    <div class="team-details text-center">
                                        <div class="socials mt-20">
                                            <a href="#">
                                                <i class="fab fa-facebook-f"></i>
                                            </a>
                                            <a href="#">
                                                <i class="fab fa-twitter"></i>
                                            </a>
                                            <a href="#">
                                                <i class="fab fa-google-plus-g"></i>
                                            </a>
                                            <a href="#">
                                                <i class="fab fa-instagram"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <h6 class="team-title">Mustakim</h6>
                            <span>web devloper</span>
                        </div>
                    </div>
                    <!-- end team member -->

                    <div class="col-md-4 col-sm-6 team-wrap mt-sm-0 mt-5">
                        <div class="team-member text-center">
                            <div class="team-img">
                                <img src="images/team3.jpg" alt="">
                                <div class="overlay-team">
                                    <div class="team-details text-center">
                                        <div class="socials mt-20">
                                            <a href="#">
                                                <i class="fab fa-facebook-f"></i>
                                            </a>
                                            <a href="#">
                                                <i class="fab fa-twitter"></i>
                                            </a>
                                            <a href="#">
                                                <i class="fab fa-google-plus-g"></i>
                                            </a>
                                            <a href="#">
                                                <i class="fab fa-instagram"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <h6 class="team-title">Aunto Apu</h6>
                            <span>android devloper</span>
                        </div>
                    </div>
                    <!-- end team member -->

                    <div class="col-md-4 col-sm-6 team-wrap mt-md-0 mt-5">
                        <div class="team-member last text-center">
                            <div class="team-img">
                                <img src="images/team2.jpg" alt="">
                                <div class="overlay-team">
                                    <div class="team-details text-center">
                                        <div class="socials mt-20">
                                            <a href="#">
                                                <i class="fab fa-facebook-f"></i>
                                            </a>
                                            <a href="#">
                                                <i class="fab fa-twitter"></i>
                                            </a>
                                            <a href="#">
                                                <i class="fab fa-google-plus-g"></i>
                                            </a>
                                            <a href="#">
                                                <i class="fab fa-instagram"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <h6 class="team-title">Jagir Alam</h6>
                            <span>Software engineer </span>
                        </div>
                    </div>
                    <!-- end team member -->
                </div>
            </div>
        </section>
        <!-- //team -->

        <!-- brands -->
        <section class="partners bg-light py-5">
            <div class="container">
                <div class="row partner-grids text-center">
                    <div class="col-md-2 col-4">
                        <div class="brand bg-white">
                            <a href="#"><i class="fab fa-angrycreative"></i></a>
                        </div>
                    </div>
                    <div class="col-md-2 col-4">
                        <div class="brand bg-white">
                            <a href="#"><i class="fab fa-apper"></i></a>
                        </div>
                    </div>
                    <div class="col-md-2 col-4">
                        <div class="brand bg-white">
                            <a href="#"><i class="fab fa-apple-pay"></i></a>
                        </div>
                    </div>
                    <div class="col-md-2 col-4 mt-md-0 mt-3">
                        <div class="brand bg-white">
                            <a href="#"><i class="fab fa-aviato"></i></a>
                        </div>
                    </div>
                    <div class="col-md-2 col-4 mt-md-0 mt-3">
                        <div class="brand bg-white">
                            <a href="#"><i class="fab fa-aws"></i></a>
                        </div>
                    </div>
                    <div class="col-md-2 col-4 mt-md-0 mt-3">
                        <div class="brand bg-white">
                            <a href="#"><i class="fab fa-amazon-pay"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- //brands -->

        <!-- footer -->
        <footer class="footer py-5">
            <div class="container py-sm-4">
                <div class="row">
                    <div class="col-lg-4 col-md-6 footer-top">
                        <h3 class="mb-4 pb-3 w3f_title">Subscribe Us</h3>
                        <p>By subscribing to our mailing list you will always get latest news, offers and updates from us.</p>
                        <form action="#" method="post">
                            <input type="email" name="Email" placeholder="Enter your email..." required="">
                            <button class="btn1"><i class="fas fa-arrow-right" aria-hidden="true"></i></button>
                            <div class="clearfix"> </div>
                        </form>

                    </div>
                    <div class="col-lg-2  col-md-6 footv3-left mt-md-0 mt-5">
                        <h3 class="mb-4 pb-3 w3f_title">Navigation</h3>
                        <ul class="list-agileits">
                            <li>
                                <a href="index.html">
                                    Home
                                </a>
                            </li>
                            <li class="my-2">
                                <a href="about.html">
                                    About Us
                                </a>
                            </li>
                            <li class="my-2">
                                <a href="projects.html">
                                    Projects
                                </a>
                            </li>
                            <li class="mb-2">
                                <a href="features.html">
                                    Features
                                </a>
                            </li>
                            <li>
                                <a href="contact.html">
                                    Contact Us
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-lg-3 col-md-6 mt-lg-0 mt-5">
                        <h3 class="mb-4 pb-3 w3f_title">Contact Us</h3>
                        <div class="fv3-contact">
                            <span class="fas fa-envelope-open mr-2"></span>
                            <p>
                                <a href="mailto:example@email.com">info@example.com</a>
                            </p>
                        </div>
                        <div class="fv3-contact my-3">
                            <span class="fas fa-phone-volume mr-2"></span>
                            <p>+1(23) 4567 7890</p>
                        </div>
                        <div class="fv3-contact">
                            <span class="fas fa-home mr-2"></span>
                            <p>321 Block,4th Building,
                                <br>2nd Street State 3489.</p>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 footerv2-w3ls mt-lg-0 mt-5">
                        <h3 class="mb-4 w3f_title pb-3">Get In Touch</h3>
                        <p>Excepteur sint occaecat non proident, sunt in culpa qui.</p>
                        <ul class="social-iconsv2 agileinfo mt-4">
                            <li>
                                <a href="#">
                                    <i class="fab fa-facebook-f"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fab fa-twitter"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fab fa-google-plus-g"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fab fa-linkedin-in"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- //footer bottom -->
        </footer>
        <!-- //footer -->

        <!-- copyright -->
        <div class="cpy-right text-center">
            <p>� 2018 Flex Art. All rights reserved | Design by
                <a href="http://w3layouts.com"> W3layouts.</a>
            </p>
        </div>
        <!-- //copyright -->

        <!--model-forms-->
        <!--/Login-->
        <div class="modal fade" id="exampleModalCenter1" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">

                        <div class="login px-4 mx-auto mw-100">
                            <h5 class="text-center mb-4">Login Now</h5>
                            <form action="#" method="post">
                                <div class="form-group">
                                    <label class="mb-2">Username</label>
                                    <input type="text" class="form-control" id="lusername" aria-describedby="emailHelp" placeholder="" required="">
                                </div>
                                <div class="form-group">
                                    <label class="mb-2">Password</label>
                                    <input type="password" class="form-control" id="lpassword" placeholder="" required="">
                                </div>

                                <input type="button" class="btn btn-primary submit mb-4" onclick="userloginlogic()" value="Sign In">
                                <h1 id="errormessage"><h1>
                                        <p class="text-center pb-4">
                                            <a href="#" data-toggle="modal2" data-target="#exampleModalCenter"> Don't have an account?</a>
                                        </p>
                                        </form>
                                        </div>
                                        </div>

                                        </div>
                                        </div>
                                        </div>
                                        <!--//Login-->




                                        <!--/Register-->
                                        <div class="modal fade" id="exampleModalCenter2" tabindex="-1" role="dialog" aria-hidden="true">
                                            <div class="modal-dialog modal-dialog-centered" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header text-center">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="login px-4 mx-auto mw-100">
                                                            <h5 class="text-center mb-4">Register Now</h5>
                                                            <form action="#" method="post">
                                                                <div class="form-group">
                                                                    <label>Username</label>

                                                                    <input type="text" class="form-control" id="username" placeholder="" required="">
                                                                </div>
                                                                <div class="form-group">
                                                                    <label>Password</label>
                                                                    <input type="password" class="form-control" id="password" placeholder="" required="">
                                                                </div>

                                                                <div class="form-group">
                                                                    <label class="mb-2">name</label>
                                                                    <input type="text" class="form-control" id="name" placeholder="" required="">
                                                                </div>
                                                                <div class="form-group">
                                                                    <label>Email</label>
                                                                    <input type="email" class="form-control" id="email" placeholder="" required="">
                                                                </div>
                                                                <div class="form-group">
                                                                    <label>Phone number</label>
                                                                    <input type="number" class="form-control" id="phoneno" placeholder="" required="">
                                                                </div>
                                                                <div class="form-group">
                                                                    <label>Gender</label>
                                                                    <select id="gender">
                                                                        <option>Select Gender</option>
                                                                        <option>Male</option>
                                                                        <option>Female</option>
                                                                    </select>
                                                                </div>

                                                                <br>
                                                                <div class="form-group">
                                                                    <label>Primary Language</label>
                                                                    <select id="primarylanguage">
                                                                        <option>Select Language</option>
                                                                        <option>Python</option>
                                                                        <option>C++</option>
                                                                        <option>Java</option>
                                                                    </select>

                                                                </div>
                                                                <div class="form-group">
                                                                    <label>photo</label>
                                                                    <input type="file" class="form-control" id="photo" placeholder="" required="">
                                                                </div>

                                                                <input type="button" class="btn btn-primary submit mb-4" onclick="usersignuplogic()" value="Register">
                                                                <h1 id="errormessage"></h1>
                                                                <p class="text-center pb-4">

                                                                </p>
                                                            </form>

                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                        <!--//Register-->
                                        
                                        
                                        
                                        <!----------changepassword------------!>
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        <!--//model-form-->

                                        <!-- video Modal Popup -->
                                        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalLabel">Introduction Video</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body video">
                                                        <iframe src="https://player.vimeo.com/video/33531612"></iframe>

                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                        <button type="button" class="btn btn-primary">Save changes</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- //video Model Popup -->

                                        <!-- Vertically centered Modal -->
                                        <div class="modal fade" id="exampleModalCenter1" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenter" aria-hidden="true">
                                            <div class="modal-dialog modal-dialog-centered" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title text-capitalize text-center" id="exampleModalLongTitle"><i class="fab fa-cloudversify"></i> Flex Art</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <img src="images/bg.jpg" class="img-fluid mb-3" alt="Modal Image" />
                                                        Vivamus eget est in odio tempor interdum. Mauris maximus fermentum arcu, ac finibus ante. Sed mattis risus at ipsum elementum,
                                                        ut auctor turpis cursus. Sed sed odio pharetra, aliquet velit cursus, vehicula enim. Mauris porta aliquet magna, eget laoreet ligula.
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                        <button type="button" class="btn btn-primary">Save changes</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- //Vertically centered Modal -->

                                        <!-- js -->
                                        <script src="js/jquery-2.1.4.min.js"></script>
                                        <script src="js/bootstrap.js"></script> <!-- Necessary-JavaScript-File-For-Bootstrap --> 
                                        <!-- //js -->

                                        <!-- search overlay -->
                                        <script src="js/modernizr-2.6.2.min.js"></script> 
                                        <!-- //search overlay -->

                                        <!--search jQuery-->
                                        <script src="js/classie-search.js"></script>
                                        <script src="js/demo1-search.js"></script>
                                        <!--//search jQuery-->

                                        <!-- dropdown nav -->
                                        <script>
                                                                    $(document).ready(function () {
                                                                        $(".dropdown").hover(
                                                                                function () {
                                                                                    $('.dropdown-menu', this).stop(true, true).slideDown("fast");
                                                                                    $(this).toggleClass('open');
                                                                                },
                                                                                function () {
                                                                                    $('.dropdown-menu', this).stop(true, true).slideUp("fast");
                                                                                    $(this).toggleClass('open');
                                                                                }
                                                                        );
                                                                    });
                                        </script>
                                        <!-- //dropdown nav -->

                                        <!-- banner slider js -->
                                        <script src="js/minimal-slider.js"></script>
                                        <!-- //banner slider js -->

                                        <!-- Stats-Number-Scroller-Animation-JavaScript -->
                                        <script src="js/waypoints.min.js"></script> 
                                        <script src="js/counterup.min.js"></script> 
                                        <script>
                                                                    jQuery(document).ready(function ($) {
                                                                        $('.counter').counterUp({
                                                                            delay: 100,
                                                                            time: 1000
                                                                        });
                                                                    });
                                        </script>
                                        <!-- //Stats-Number-Scroller-Animation-JavaScript -->

                                        <!-- start-smoth-scrolling -->
                                        <script src="js/SmoothScroll.min.js"></script>
                                        <script src="js/move-top.js"></script>
                                        <script src="js/easing.js"></script>
                                        <script>
                                                                    jQuery(document).ready(function ($) {
                                                                        $(".scroll").click(function (event) {
                                                                            event.preventDefault();
                                                                            $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                                                                        });
                                                                    });
                                        </script>
                                        <!-- here stars scrolling icon -->
                                        <script>
                                            $(document).ready(function () {
                                                /*
                                                 var defaults = {
                                                 containerID: 'toTop', // fading element id
                                                 containerHoverID: 'toTopHover', // fading element hover id
                                                 scrollSpeed: 1200,
                                                 easingType: 'linear' 
                                                 };
                                                 */

                                                $().UItoTop({easingType: 'easeOutQuart'});

                                            });
                                        </script>
                                        <!-- //here ends scrolling icon -->
                                        <!-- start-smoth-scrolling -->

                                        </body>
                                        </html>