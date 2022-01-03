<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="TransponstersEDM._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!DOCTYPE html>
    <html lang="zxx">
    
    <head>
        <title>Grocery Shoppy an Ecommerce Category Bootstrap Responsive Web Template | Home :: w3layouts</title>
        <!--/tags -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Grocery Shoppy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
    Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script>
            addEventListener("load", function () {
                setTimeout(hideURLbar, 0);
            }, false);
    
            function hideURLbar() {
                window.scrollTo(0, 1);
            }
        </script>
        <!--//tags -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/font-awesome.css" rel="stylesheet">
        <!--pop-up-box-->
        <link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
        <!--//pop-up-box-->
        <!-- price range -->
        <link rel="stylesheet" type="text/css" href="css/jquery-ui1.css">
        <!-- fonts -->
        <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
    </head>
    
    <body>
    <!-- top-header -->
    <div class="header-most-top">
        <p>Grocery Offer Zone Top Deals & Discounts</p>
    </div>
    <!-- //top-header -->
    <!-- header-bot-->
    <div class="header-bot">
        <div class="header-bot_inner_wthreeinfo_header_mid">
            <!-- header-bot-->
            <div class="col-md-4 logo_agile">
                <h1>
                    <a href="index.html">
                        <span>C</span>ity
                        <span>M</span>art
                        <img src="images/logo2.png" alt=" ">
                    </a>
                </h1>
            </div>
            <!-- header-bot -->
            <div class="col-md-8 header">
                <!-- header lists -->
                <ul>
                    <!--<li>
                        <a class="play-icon" href="StoreLocator.aspx">
                            <span class="fa fa-map-marker" aria-hidden="true"></span> Store Locator</a>
                    </li>
                    <!--<li>
                        <a href="#" data-toggle="modal" data-target="#myModal1">
                            <span class="fa fa-truck" aria-hidden="true"></span>Track Order</a>
                    </li>
                    <li>
                        <span class="fa fa-phone" aria-hidden="true"></span> 001 234 5678
                    </li> -->                 
                    <li>
                        <a href="LogInPage.aspx">
                            <span class="fa fa-unlock-alt" aria-hidden="true"></span> SignIn </a>
                    </li>
                    <li>
                        <a href="SignUpPage.aspx">
                            <span class="fa fa-pencil-square-o" aria-hidden="true"></span> SignUp </a>
                    </li>
                    <li>
                        <a href="AdminSignUp.aspx">
                            <span class="fa fa-pencil-square-o" aria-hidden="true"></span>Admin SignUp</a>
                    </li>
                </ul>
                <!-- //header lists -->

                <!-- cart details -->
                <div class="top_nav_right">
                    <div class="wthreecartaits wthreecartaits2 cart cart box_1">
                        <form action="#" method="post" class="last">
                            <input type="hidden" name="cmd" value="_cart">
                            <input type="hidden" name="display" value="1">
                            <button class="w3view-cart" type="submit" name="submit" value="">
                                <i class="fa fa-cart-arrow-down" aria-hidden="true"></i>
                            </button>
                        </form>
                    </div>
                </div>
                <!-- //cart details -->
                <div class="clearfix"></div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <!-- shop locator (popup) -->
    <!-- Button trigger modal(shop-locator) -->
    <div id="small-dialog1" class="mfp-hide">
        <form action="/zipcode" method="GET" id="signup" style="border:1px solid #ccc">
        <div class="select-city">
            <h3>Please Select Your Location</h3>
            <select class="list_of_cities">
                <optgroup label="We deliver to these zipcodes">
                    <option selected style="display:none;color:#eee;">Select City</option>
                </optgroup>
                <optgroup label="Arizona">
                    <option>72959</option>
                    <option>729HH</option>
                    <option>729XX</option>
                </optgroup>
                <optgroup label="California">
                    <option>90001</option>
                    <option>90002</option>
                    <option>90003</option>
                </optgroup>
            </select>
            <label for="zipcode"><b>zipcode</b></label>
            <input type="text" placeholder="Enter Desired Zip Code: " name="zipcode" id="zipcode" required>
            <a href="product.html">
                <button type="submit" class="Select">Select</button>
            </a>
            <div class="clearfix"></div>
        </div>
        </form>
    </div>
    <!-- //shop locator (popup) -->
    <!-- signin Model -->
    <!-- Modal1 -->
    <div class="modal fade" id="myModal1" tabindex="-1" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body modal-body-sub_agile">
                    <div class="main-mailposi">
                        <span class="fa fa-envelope-o" aria-hidden="true"></span>
                    </div>
                    <div class="modal_body_left modal_body_left1">
                        <h3 class="agileinfo_sign">Sign In </h3>
                        <p>
                            Sign In now, Let's start your Grocery Shopping. Don't have an account?
                            <a href="signup.html">
                                Sign Up Now</a>
                        </p>
                        <form action="signin.html" method="post">
                            <div class="styled-input agile-styled-input-top">
                                <input type="text" placeholder="User Name" name="Name" required="">
                            </div>
                            <div class="styled-input">
                                <input type="password" placeholder="Password" name="password" required="">
                            </div>
                            <input type="submit" value="Sign In">
                        </form>
                        <div class="clearfix"></div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <!-- //Modal content-->
        </div>
    </div>
    <!-- //Modal1 -->
    <!-- //signin Model -->
    <!-- signup Model -->
    <!-- Modal2 -->
    <div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body modal-body-sub_agile">
                    <div class="main-mailposi">
                        <span class="fa fa-envelope-o" aria-hidden="true"></span>
                    </div>
                    <div class="modal_body_left modal_body_left1">
                        <h3 class="agileinfo_sign">Sign Up</h3>
                        <p>
                            Come join the Grocery Shoppy! Let's set up your Account.
                        </p>
                        <form action="#" method="post">
                            <div class="styled-input agile-styled-input-top">
                                <input type="text" placeholder="Name" name="Name" required="">
                            </div>
                            <div class="styled-input">
                                <input type="email" placeholder="E-mail" name="Email" required="">
                            </div>
                            <div class="styled-input">
                                <input type="password" placeholder="Password" name="password" id="password1" required="">
                            </div>
                            <div class="styled-input">
                                <input type="password" placeholder="Confirm Password" name="Confirm Password" id="password2" required="">
                            </div>
                            <input type="submit" value="Sign Up">
                        </form>
                        <p>
                            <a href="#">By clicking register, I agree to your terms</a>
                        </p>
                    </div>
                </div>
            </div>
            <!-- //Modal content-->
        </div>
    </div>
    <!-- //Modal2 -->
    <!-- //signup Model -->
    <!-- //header-bot -->
    <!-- navigation -->
    <div class="ban-top">
    </div>
    <!-- //navigation -->
    <!-- banner -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators-->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1" class=""></li>
            <li data-target="#myCarousel" data-slide-to="2" class=""></li>
            <li data-target="#myCarousel" data-slide-to="3" class=""></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <div class="container">
                    <div class="carousel-caption">
                        <h3>Big
                            <span>Save</span>
                        </h3>
                        <a class="button2" href="LogInPage.aspx">Shop Now </a>
                    </div>
                </div>
            </div>
            <div class="item item2">
                <div class="container">
                    <div class="carousel-caption">
                        <h3>Healthy
                            <span>Saving</span>
                        </h3>
                        <a class="button2" href="product.html">Shop Now </a>
                    </div>
                </div>
            </div>
        </div>
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <!-- //banner -->
    
    
    <!-- js-files -->
    <!-- jquery -->
    <script src="js/jquery-2.1.4.min.js"></script>
    <!-- //jquery -->
    
    <!-- popup modal (for signin & signup)-->
  
    <!-- Large modal -->
    <!-- <script>
        $('#').modal('show');
    </script> -->
    <!-- //popup modal (for signin & signup)-->
    
    <!-- cart-js -->
    <script src="js/minicart.js"></script>
    <script>
        paypalm.minicartk.render(); //use only unique class names other than paypalm.minicartk.Also Replace same class name in css and minicart.min.js
    
        paypalm.minicartk.cart.on('checkout', function (evt) {
            var items = this.items(),
                    len = items.length,
                    total = 0,
                    i;
    
            // Count the number of each item in the cart
            for (i = 0; i < len; i++) {
                total += items[i].get('quantity');
            }
    
            if (total < 3) {
                alert('The minimum order quantity is 3. Please add more to your shopping cart before checking out');
                evt.preventDefault();
            }
        });
    </script>
    <!-- //cart-js -->
    
    <!-- price range (top products) -->
    <script src="js/jquery-ui.js"></script>
    <script>
        //<![CDATA[
        $(window).load(function () {
            $("#slider-range").slider({
                range: true,
                min: 0,
                max: 9000,
                values: [50, 6000],
                slide: function (event, ui) {
                    $("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
                }
            });
            $("#amount").val("$" + $("#slider-range").slider("values", 0) + " - $" + $("#slider-range").slider("values", 1));
    
        }); //]]>
    </script>
    <!-- //price range (top products) -->
    
    <!-- flexisel (for special offers) -->
    <script src="js/jquery.flexisel.js"></script>
    <script>
        $(window).load(function () {
            $("#flexiselDemo1").flexisel({
                visibleItems: 3,
                animationSpeed: 1000,
                autoPlay: true,
                autoPlaySpeed: 3000,
                pauseOnHover: true,
                enableResponsiveBreakpoints: true,
                responsiveBreakpoints: {
                    portrait: {
                        changePoint: 480,
                        visibleItems: 1
                    },
                    landscape: {
                        changePoint: 640,
                        visibleItems: 2
                    },
                    tablet: {
                        changePoint: 768,
                        visibleItems: 2
                    }
                }
            });
    
        });
    </script>
    <!-- //flexisel (for special offers) -->
    
    <!-- password-script -->
    <script>
        window.onload = function () {
            document.getElementById("password1").onchange = validatePassword;
            document.getElementById("password2").onchange = validatePassword;
        }
    
        function validatePassword() {
            var pass2 = document.getElementById("password2").value;
            var pass1 = document.getElementById("password1").value;
            if (pass1 != pass2)
                document.getElementById("password2").setCustomValidity("Passwords Don't Match");
            else
                document.getElementById("password2").setCustomValidity('');
            //empty string means no validation error
        }
    </script>
    <!-- //password-script -->
    
    <!-- smoothscroll -->
    <script src="js/SmoothScroll.min.js"></script>
    <!-- //smoothscroll -->
    
    <!-- start-smooth-scrolling -->
    <script src="js/move-top.js"></script>
    <script src="js/easing.js"></script>
    <script>
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();
    
                $('html,body').animate({
                    scrollTop: $(this.hash).offset().top
                }, 1000);
            });
        });
    </script>
    <!-- //end-smooth-scrolling -->
    
    <!-- smooth-scrolling-of-move-up -->
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
            $().UItoTop({
                easingType: 'easeOutQuart'
            });
    
        });
    </script>
    <!-- //smooth-scrolling-of-move-up -->
    
    <!-- for bootstrap working -->
    <script src="js/bootstrap.js"></script>
    <!-- //for bootstrap working -->
    <!-- //js-files -->
    
    
    </body>
    
    </html>

</asp:Content>
