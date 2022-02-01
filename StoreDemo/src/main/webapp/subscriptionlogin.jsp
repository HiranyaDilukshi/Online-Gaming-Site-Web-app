<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>jackpiro</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- bootstrap css -->
      <link rel="stylesheet" href="css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" href="css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
      <link rel="stylesheet" type="text/css" href="css/tablestyle.css" >
      <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
      <style>
         input[type=text], input[type=password] {
         width: 100%;
         padding: 16px 8px;
         margin: 20px 0;
         display: inline-block;
         border: 1px solid #ccc;
         box-sizing: border-box;
         }
         button {
         background-color: #e9967A;
         color: white;
         padding: 20px 0;
         margin: 10px 0;
         border: none;
         cursor: grabbing;
         width: 15%;
         }
         h1 {
         text-align:center;
         fone-size:18;
         }
         button:hover {
         background-color: #B22222;
         opacity: 0.8;
         }
         .formcontainer {
         text-align: left;
         margin: 24px 50px 12px;
         }
         .container {
         padding: 16px 0;
         text-align:left;
         width:75%;
         height:75%;
         }
         span.psw {
         float: right;
         padding-top: 0;
         padding-right: 15px;
         }
         /* Change styles for span on extra small screens */
         @media screen and (max-width: 500px) {
         span.psw {
         display: block;
         float: none;
         }
      </style>
   </head>
   <!-- body -->
   <body class="main-layout" style="background-color: #CAEBF2;">
      <!-- loader  -->
      <!-- end loader -->
      <!-- header -->
      <header>
         <!-- header inner -->
         <div class="header-top">
            <div class="header">
               <div class="container-fluid">
                  <div class="row">
                     <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                        <div class="full">
                           <div class="center-desk">
                              <div class="logo">
                                 <a href="index.html"><img src="images/logo.png" alt="#" /></a>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                        <ul class="top_icon">
                           <li class="button_login"> <a href="#">Login</a> </li>
                           <li> <a href="#about">Signup</a> </li>
                           <li class="mean-last">
                              <a href="#"><img src="images/search_icon.png" alt="#" /></a>
                           </li>
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
            <!-- end header inner -->
            <!-- end header -->
            <section class="slider_section">
               <div class="banner_main">
                  <div class="container-fluid">
                     <div class="row">
                        <div class="col-md-2 padding_left0">
                           <div class="menu-area">
                              <div class="limit-box">
                                 <nav class="main-menu">
                                    <ul class="menu-area-main">
                                       <li class="active"> <a href="index.jsp">Game</a> </li>
                                       <li> <a href="store.jsp">Store</a> </li>
                                       <li> <a href="librarylogin.jsp">Library</a> </li>
                                       <li> <a href="reqmaterials.html">Upload Game</a> </li>
                                       <li> <a href="subscriptionlogin.jsp">Subscription</a> </li>
                                    </ul>
                                 </nav>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
         </div>
         </section>
         </div>
      </header>
      <br><br><br>
      <center>
         <form action="subscription" method="post" style=" border: 5px solid #f1f1f1;;
            font-family: Roboto,Arial,sans-serif;
            justify-content: center;
            font-family: Roboto, Arial, sans-serif;
            font-size: 15px;width:75%;">
            <br><br><br>
            <b>
               <h1>YOUR <a href="https://github.com/pablorgarcia" target="_blank">SUBSCRIPTIONS</a></h1>
            </b>
            <div class="formcontainer">
            <hr/>
            <label for="uname"><strong>Enter your User Name to continue</strong></label>
            <input type="text" placeholder="Enter UserName" name="username" required>
            <label for="uid"><strong>Enter your User ID to continue</strong></label>
            <input type="text" placeholder="Enter UserID" name="userid" required>
            <center><button type="submit">View Subscription Plans</button></center>
            <br>  <br> 
            <div class="container" style="background-color: #eee">
               <label style="padding-left: 15px">
               <input type="checkbox"  checked="checked" name="remember"> Remember me
               </label>
               <span class="psw"><a href="#"> Forgot password?</a></span>
            </div>
         </form>
      </center>
      <!--  footer -->
      <footer  >
         <div class="footer style="padding-left:0px">
            <div class="container">
               <div class="row">
                  <div class="col-md-12">
                     <h2>Newsletter</h2>
                  </div>
                  <div class="col-md-10 offset-md-1">
                     <form class="news">
                        <input class="newslatter" placeholder="Enter Your Email" type="text" name="Enter Your Email">
                        <button class="submit">Subscribe</button>
                     </form>
                  </div>
                  <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 ">
                     <div class="row">
                        <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6 ">
                           <div class="address">
                              <ul class="social_link">
                                 <li><a href="#"><img src="icon/fb.png"></a></li>
                                 <li><a href="#"><img src="icon/tw.png"></a></li>
                                 <li><a href="#"><img src="icon/lin(2).png"></a></li>
                                 <li><a href="#"><img src="icon/instagram.png"></a></li>
                              </ul>
                              <a href="index.html"> <img src="images/logo.png" alt="logo"></a>
                           </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6">
                           <div class="address">
                              <h3>Quick links</h3>
                              <ul class="Menu_footer">
                                 <li class="active"> <img src="images/3.png" alt="#"> <a href="#game">Game</a> </li>
                                 <li><img src="images/3.png" alt="#"> <a href="#software">Software</a> </li>
                                 <li><img src="images/3.png" alt="#"> <a href="#about">About</a> </li>
                                 <li><img src="images/3.png" alt="#"> <a href="#testimonial"> Testimonial</a> </li>
                                 <li><img src="images/3.png" alt="#"> <a href="#contact">Contact</a> </li>
                              </ul>
                           </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6">
                           <div class="address">
                              <h3>downloded</h3>
                              <ul class="Links_footer">
                                 <li class="active"><img src="images/3.png" alt="#"> <a href="#">Lorem Ipsum </a> </li>
                                 <li><img src="images/3.png" alt="#"> <a href="#">Simply random</a> </li>
                                 <li><img src="images/3.png" alt="#"> <a href="#">Roots in a</a> </li>
                                 <li><img src="images/3.png" alt="#"> <a href="#"> Piece</a> </li>
                                 <li><img src="images/3.png" alt="#"> <a href="#">Classical</a> </li>
                              </ul>
                           </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6 ">
                           <div class="address">
                              <h3>Contact us </h3>
                              <ul class="loca">
                                 <li>
                                    <a href="#"><img src="icon/loc.png" alt="#" /></a>London 145
                                    <br>United Kingdom 
                                 </li>
                                 <li>
                                    <a href="#"><img src="icon/email.png" alt="#" /></a>demo@gmail.com 
                                 </li>
                                 <li>
                                    <a href="#"><img src="icon/call.png" alt="#" /></a>+12586954775 
                                 </li>
                              </ul>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="copyright">
            </div>
         </div>
      </footer>
      <!-- end footer -->
      <!-- Javascript files-->
      <script src="js/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/bootstrap.bundle.min.js"></script>
      <script src="js/jquery-3.0.0.min.js"></script>
      <script src="js/plugin.js"></script>
      <!-- sidebar -->
      <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="js/custom.js"></script>
      <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
   </body>
</html>