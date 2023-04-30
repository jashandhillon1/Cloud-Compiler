<%-- 
    Document   : changepassword
    Created on : 7 May, 2021, 7:32:16 AM
    Author     : 91905
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <title>Flex Art Corporate Category Flat Bootstrap Responsive Website Template | Home : W3layouts</title>

        <!-- Meta tag Keywords -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta charset="utf-8">
        <meta name="keywords" content="Flex Art Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        
        <link href="css/minimal-slider.css" rel='stylesheet' type='text/css' />

        <link rel="stylesheet" href="css/bootstrap.css"> <!-- Bootstrap-Core-CSS -->
        <link href="css/style6.css" rel='stylesheet' type='text/css' />
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all" /> <!-- Style-CSS --> 
        <link rel="stylesheet" href="css/fontawesome-all.css"> <!-- Font-Awesome-Icons-CSS -->

        <link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext" rel="stylesheet">


        <script>
            function userchangepasswordfx(){
                
            var username=document.getElementById("username").value;
            var oldpassword=document.getElementById("oldpassword").value;
            var newpassword=document.getElementById("newpassword").value;
            var confirmpassword=document.getElementById("confirmpassword").value;
            
            if(username=="" || oldpassword=="" || newpassword=="" || confirmpassword==""){
                document.getElementById("errorchangepassword").innerHTML="please fill all the fields";
            }
            else if(newpassword != confirmpassword){
                document.getElementById("errorchangepassword").innerHTML="newpassword is not equal to confirm password";
            }
            else{
                var xhttp = new XMLHttpRequest();

                    xhttp.onreadystatechange = function ()
                    {
                        if (this.readyState == 4 && this.status == 200)
                        {
                            var res = this.responseText;
                            res = res.trim();
                            
                            if (res == "success") {
                                document.getElementById("errorchangepassword").innerHTML = "Password changed";
                                setTimeout(gotoindex,2000);
                                
                                

                            } else {
                                document.getElementById("errorchangepassword").innerHTML = "password change fail";
                            }
                        }
                        ;

                      
                    }
                    
                      var url = "./userchangepassword?username=" + username + "&oldpassword=" + oldpassword + "&newpassword=" +newpassword;
                        xhttp.open("GET", url, true);
                        xhttp.send();

                }
            }
            function gotoindex() {
                location.href = "index.jsp";
                
            }
        
            </script>
    </head>
    <body>
        <div class="login px-4 mx-auto mw-100">
                            <h5 class="text-center mb-4">change password</h5>
                            <form action="#" method="post">
                                <div class="form-group">
                                    <label class="mb-2">Username</label>
                                    <input type="text" class="form-control" id="username" aria-describedby="emailHelp" placeholder="" required="">
                                </div>
                                <div class="form-group">
                                    <label class="mb-2">Enter old Password</label>
                                    <input type="password" class="form-control" id="oldpassword" placeholder="" required="">
                                </div>
<div class="form-group">
                                    <label class="mb-2">Enter new Password</label>
                                    <input type="password" class="form-control" id="newpassword" placeholder="" required="">
                                </div>
                                <div class="form-group">
                                    <label class="mb-2">Confirm Password</label>
                                    <input type="password" class="form-control" id="confirmpassword" placeholder="" required="">
                                </div>
                                <input type="button" class="btn btn-primary submit mb-4" onclick="userchangepasswordfx()" value="Change password">
                                
                                <h1 id="errorchangepassword"><h1>
                                        <p class="text-center pb-4">
                                            <a href="#" data-toggle="modal2" data-target="#exampleModalCenter"> Don't have an account?</a>
                                        </p>
                                        </form>
                                        </div>
        
        
        
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
