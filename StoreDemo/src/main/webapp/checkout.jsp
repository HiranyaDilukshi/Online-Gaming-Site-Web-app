<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
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
      <link rel="stylesheet" href="=css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="=images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="=css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
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
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <title>GoodGames | Checkout</title>
      <meta name="description" content="GoodGames - Bootstrap template for communities and games store">
      <meta name="keywords" content="game, gaming, template, HTML template, responsive, Bootstrap, premium">
      <meta name="author" content="_nK">
      <link rel="icon" type="image/png" href="images/favicon.png">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <!-- START: Styles -->
      <!-- Google Fonts -->
      <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700%7cOpen+Sans:400,700" rel="stylesheet" type="text/css">
      <!-- Bootstrap -->
      <link rel="stylesheet" href="vendor/bootstrap/dist/css/bootstrap.min.css">
      <!-- FontAwesome -->
      <script defer src="vendor/fontawesome-free/js/all.js"></script>
      <script defer src="vendor/fontawesome-free/js/v4-shims.js"></script>
      <!-- IonIcons -->
      <link rel="stylesheet" href="assets/vendor/ionicons/css/ionicons.min.css">
      <!-- Flickity -->
      <link rel="stylesheet" href="vendor/flickity/dist/flickity.min.css">
      <!-- Photoswipe -->
      <link rel="stylesheet" type="text/css" href="vendor/photoswipe/dist/photoswipe.css">
      <link rel="stylesheet" type="text/css" href="vendor/photoswipe/dist/default-skin/default-skin.css">
      <!-- Seiyria Bootstrap Slider -->
      <link rel="stylesheet" href="vendor/bootstrap-slider/dist/css/bootstrap-slider.min.css">
      <!-- Summernote -->
      <link rel="stylesheet" type="text/css" href="vendor/summernote/dist/summernote-bs4.css">
      <!-- GoodGames -->
      <link rel="stylesheet" href="css/goodgames.css">
      <!-- Custom Styles -->
      <link rel="stylesheet" href="css/custom.css">
      <!-- END: Styles -->
      <!-- jQuery -->
      <script src="assets/vendor/jquery/dist/jquery.min.js"></script>
      <style>
         input[type=text], input[type=password] {
         width: 100%;
         padding: 16px 8px;
         margin: 8px 0;
         display: inline-block;
         border: 1px solid #ccc;
         box-sizing: border-box;
         }
         #message {
         display:none;
         background: rgba(241, 241, 241, 0.6);
         color: #000;
         position: auto;
         padding: 7px;
         margin-top: 10px;
         margin-left: 30px;
         margin-right: 280px;
         border-radius: 4px;
         }
         #message p {
         padding: 5px 10px;
         font-size: 14px;
         text-align: left;
         }
         .valid {
         color: green;
         }
         .valid:before {
         position: relative;
         left: -5px;
         content: '\2714';
         }
         .invalid {
         color: red;
         }
         .invalid:before {
         position: relative;
         left: -5px;
         content: '\2716';
         }
      </style>
      <script>
         var myInput = document.getElementById("psw");
         var letter = document.getElementById("letter");
         var capital = document.getElementById("capital");
         var number = document.getElementById("number");
         var length = document.getElementById("length");
         
         
           // Validate numbers
           var numbers = /[0-9]/g;
           if(myInput.value.match(numbers)) {
             number.classList.remove("invalid");
             number.classList.add("valid");
           } else {
             number.classList.remove("valid");
             number.classList.add("invalid");
           }
         
           // Validate length
           if(myInput.value.length >= 8) {
             length.classList.remove("invalid");
             length.classList.add("valid");
           } else {
             length.classList.remove("valid");
             length.classList.add("invalid");
           }
         }
      </script>
   </head>
   <!-- body -->
   <body class="main-layout">
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
                        <div class="text-bg">
                           <h1>Complete your order</h1>
                        </div>
                     </div>
                  </div>
               </div>
         </div>
         </section>
         </div>
      </header>
      <!--
         Additional Classes:
             .nk-header-opaque
         -->
      <header class="nk-header nk-header-opaque">
      </header>
      <!--
         START: Navbar Mobile
         
         Additional Classes:
             .nk-navbar-left-side
             .nk-navbar-right-side
             .nk-navbar-lg
             .nk-navbar-overlay-content
         -->
      <div id="nk-nav-mobile" class="nk-navbar nk-navbar-side nk-navbar-right-side nk-navbar-overlay-content d-lg-none">
         <div class="nano">
            <div class="nano-content">
               <a href="index.html" class="nk-nav-logo">
               <img src="assets/images/logo.png" alt="" width="120">
               </a>
               <div class="nk-navbar-mobile-content">
                  <ul class="nk-nav">
                     <!-- Here will be inserted menu from [data-mobile-menu="#nk-nav-mobile"] -->
                  </ul>
               </div>
            </div>
         </div>
      </div>
      <!-- END: Navbar Mobile -->
      <div class="nk-main">
      <!-- START: Breadcrumbs -->
      <div class="nk-gap-1"></div>
      <div class="container">
         <ul class="nk-breadcrumbs">
            <li><a href="index.html">Home</a></li>
            <li><span class="fa fa-angle-right"></span></li>
            <li><a href="store.jsp">Store</a></li>
            <li><span class="fa fa-angle-right"></span></li>
            <li><a href="store-cart.html">Cart</a></li>
            <li><span class="fa fa-angle-right"></span></li>
            <li><span>Checkout</span></li>
         </ul>
      </div>
      <div class="nk-gap-1"></div>
      <!-- END: Breadcrumbs -->
      
      <form action="shipping" method="post">
      
         <div class="container">
            <div class="nk-store nk-store-checkout">
               <h3 class="nk-decorated-h-2"><span><span class="text-main-1">Billing</span> Details</span></h3>
               <!-- START: Billing Details -->
               <div class="nk-gap"></div>
               <div class="row vertical-gap">
                  <div class="col-lg-6">
                     <div class="row vertical-gap">
                        <div class="col-sm-6">
                           <label for="fname">First Name <span class="text-main-1">*</span>:</label>
                           <input type="text" class="form-control required" name="fname" id="fname" required>
                        </div>
                        <div class="col-sm-6">
                           <label for="lname">Last Name <span class="text-main-1">*</span>:</label>
                           <input type="text" class="form-control required" name="lname" id="lname" required>
                        </div>
                     </div>
                     <div class="nk-gap-1"></div>
                     <label for="company">Company Name:</label>
                     <input type="text" class="form-control" name="company" id="company" required>
                     <div class="nk-gap-1"></div>
                     <div class="row vertical-gap">
                        <div class="col-sm-6">
                           <label for="email">Email Address <span class="text-main-1">*</span>:</label>
                           <input type="email" class="form-control required" name="email" id="email" required>
                        </div>
                        <div class="col-sm-6">
                           <label for="phone">Phone <span class="text-main-1">*</span>:</label>
                           <input type="tel" class="form-control required" name="phone" id="phone"  pattern= "[0-9]{10}" required>
                        </div>
                     </div>
                     <div class="nk-gap-1"></div>
                     &nbsp <label for="country-sel">Country <span class="text-main-1">*</span>:</label>
                     <select id="country" name="country" required>
                        <option value="Afganistan">Afghanistan</option>
                        <option value="Albania">Albania</option>
                        <option value="Algeria">Algeria</option>
                        <option value="American Samoa">American Samoa</option>
                        <option value="Andorra">Andorra</option>
                        <option value="Angola">Angola</option>
                        <option value="Anguilla">Anguilla</option>
                        <option value="Antigua & Barbuda">Antigua & Barbuda</option>
                        <option value="Argentina">Argentina</option>
                        <option value="Armenia">Armenia</option>
                        <option value="Aruba">Aruba</option>
                        <option value="Australia">Australia</option>
                        <option value="Austria">Austria</option>
                        <option value="Azerbaijan">Azerbaijan</option>
                        <option value="Bahamas">Bahamas</option>
                        <option value="Bahrain">Bahrain</option>
                        <option value="Bangladesh">Bangladesh</option>
                        <option value="Barbados">Barbados</option>
                        <option value="Belarus">Belarus</option>
                        <option value="Belgium">Belgium</option>
                        <option value="Belize">Belize</option>
                        <option value="Benin">Benin</option>
                        <option value="Bermuda">Bermuda</option>
                        <option value="Bhutan">Bhutan</option>
                        <option value="Bolivia">Bolivia</option>
                        <option value="Bonaire">Bonaire</option>
                        <option value="Bosnia & Herzegovina">Bosnia & Herzegovina</option>
                        <option value="Botswana">Botswana</option>
                        <option value="Brazil">Brazil</option>
                        <option value="British Indian Ocean Ter">British Indian Ocean Ter</option>
                        <option value="Brunei">Brunei</option>
                        <option value="Bulgaria">Bulgaria</option>
                        <option value="Burkina Faso">Burkina Faso</option>
                        <option value="Burundi">Burundi</option>
                        <option value="Cambodia">Cambodia</option>
                        <option value="Cameroon">Cameroon</option>
                        <option value="Canada">Canada</option>
                        <option value="Canary Islands">Canary Islands</option>
                        <option value="Cape Verde">Cape Verde</option>
                        <option value="Cayman Islands">Cayman Islands</option>
                        <option value="Central African Republic">Central African Republic</option>
                        <option value="Chad">Chad</option>
                        <option value="Channel Islands">Channel Islands</option>
                        <option value="Chile">Chile</option>
                        <option value="China">China</option>
                        <option value="Christmas Island">Christmas Island</option>
                        <option value="Cocos Island">Cocos Island</option>
                        <option value="Colombia">Colombia</option>
                        <option value="Comoros">Comoros</option>
                        <option value="Congo">Congo</option>
                        <option value="Cook Islands">Cook Islands</option>
                        <option value="Costa Rica">Costa Rica</option>
                        <option value="Cote DIvoire">Cote DIvoire</option>
                        <option value="Croatia">Croatia</option>
                        <option value="Cuba">Cuba</option>
                        <option value="Curaco">Curacao</option>
                        <option value="Cyprus">Cyprus</option>
                        <option value="Czech Republic">Czech Republic</option>
                        <option value="Denmark">Denmark</option>
                        <option value="Djibouti">Djibouti</option>
                        <option value="Dominica">Dominica</option>
                        <option value="Dominican Republic">Dominican Republic</option>
                        <option value="East Timor">East Timor</option>
                        <option value="Ecuador">Ecuador</option>
                        <option value="Egypt">Egypt</option>
                        <option value="El Salvador">El Salvador</option>
                        <option value="Equatorial Guinea">Equatorial Guinea</option>
                        <option value="Eritrea">Eritrea</option>
                        <option value="Estonia">Estonia</option>
                        <option value="Ethiopia">Ethiopia</option>
                        <option value="Falkland Islands">Falkland Islands</option>
                        <option value="Faroe Islands">Faroe Islands</option>
                        <option value="Fiji">Fiji</option>
                        <option value="Finland">Finland</option>
                        <option value="France">France</option>
                        <option value="French Guiana">French Guiana</option>
                        <option value="French Polynesia">French Polynesia</option>
                        <option value="French Southern Ter">French Southern Ter</option>
                        <option value="Gabon">Gabon</option>
                        <option value="Gambia">Gambia</option>
                        <option value="Georgia">Georgia</option>
                        <option value="Germany">Germany</option>
                        <option value="Ghana">Ghana</option>
                        <option value="Gibraltar">Gibraltar</option>
                        <option value="Great Britain">Great Britain</option>
                        <option value="Greece">Greece</option>
                        <option value="Greenland">Greenland</option>
                        <option value="Grenada">Grenada</option>
                        <option value="Guadeloupe">Guadeloupe</option>
                        <option value="Guam">Guam</option>
                        <option value="Guatemala">Guatemala</option>
                        <option value="Guinea">Guinea</option>
                        <option value="Guyana">Guyana</option>
                        <option value="Haiti">Haiti</option>
                        <option value="Hawaii">Hawaii</option>
                        <option value="Honduras">Honduras</option>
                        <option value="Hong Kong">Hong Kong</option>
                        <option value="Hungary">Hungary</option>
                        <option value="Iceland">Iceland</option>
                        <option value="Indonesia">Indonesia</option>
                        <option value="India">India</option>
                        <option value="Iran">Iran</option>
                        <option value="Iraq">Iraq</option>
                        <option value="Ireland">Ireland</option>
                        <option value="Isle of Man">Isle of Man</option>
                        <option value="Israel">Israel</option>
                        <option value="Italy">Italy</option>
                        <option value="Jamaica">Jamaica</option>
                        <option value="Japan">Japan</option>
                        <option value="Jordan">Jordan</option>
                        <option value="Kazakhstan">Kazakhstan</option>
                        <option value="Kenya">Kenya</option>
                        <option value="Kiribati">Kiribati</option>
                        <option value="Korea North">Korea North</option>
                        <option value="Korea Sout">Korea South</option>
                        <option value="Kuwait">Kuwait</option>
                        <option value="Kyrgyzstan">Kyrgyzstan</option>
                        <option value="Laos">Laos</option>
                        <option value="Latvia">Latvia</option>
                        <option value="Lebanon">Lebanon</option>
                        <option value="Lesotho">Lesotho</option>
                        <option value="Liberia">Liberia</option>
                        <option value="Libya">Libya</option>
                        <option value="Liechtenstein">Liechtenstein</option>
                        <option value="Lithuania">Lithuania</option>
                        <option value="Luxembourg">Luxembourg</option>
                        <option value="Macau">Macau</option>
                        <option value="Macedonia">Macedonia</option>
                        <option value="Madagascar">Madagascar</option>
                        <option value="Malaysia">Malaysia</option>
                        <option value="Malawi">Malawi</option>
                        <option value="Maldives">Maldives</option>
                        <option value="Mali">Mali</option>
                        <option value="Malta">Malta</option>
                        <option value="Marshall Islands">Marshall Islands</option>
                        <option value="Martinique">Martinique</option>
                        <option value="Mauritania">Mauritania</option>
                        <option value="Mauritius">Mauritius</option>
                        <option value="Mayotte">Mayotte</option>
                        <option value="Mexico">Mexico</option>
                        <option value="Midway Islands">Midway Islands</option>
                        <option value="Moldova">Moldova</option>
                        <option value="Monaco">Monaco</option>
                        <option value="Mongolia">Mongolia</option>
                        <option value="Montserrat">Montserrat</option>
                        <option value="Morocco">Morocco</option>
                        <option value="Mozambique">Mozambique</option>
                        <option value="Myanmar">Myanmar</option>
                        <option value="Nambia">Nambia</option>
                        <option value="Nauru">Nauru</option>
                        <option value="Nepal">Nepal</option>
                        <option value="Netherland Antilles">Netherland Antilles</option>
                        <option value="Netherlands">Netherlands (Holland, Europe)</option>
                        <option value="Nevis">Nevis</option>
                        <option value="New Caledonia">New Caledonia</option>
                        <option value="New Zealand">New Zealand</option>
                        <option value="Nicaragua">Nicaragua</option>
                        <option value="Niger">Niger</option>
                        <option value="Nigeria">Nigeria</option>
                        <option value="Niue">Niue</option>
                        <option value="Norfolk Island">Norfolk Island</option>
                        <option value="Norway">Norway</option>
                        <option value="Oman">Oman</option>
                        <option value="Pakistan">Pakistan</option>
                        <option value="Palau Island">Palau Island</option>
                        <option value="Palestine">Palestine</option>
                        <option value="Panama">Panama</option>
                        <option value="Papua New Guinea">Papua New Guinea</option>
                        <option value="Paraguay">Paraguay</option>
                        <option value="Peru">Peru</option>
                        <option value="Phillipines">Philippines</option>
                        <option value="Pitcairn Island">Pitcairn Island</option>
                        <option value="Poland">Poland</option>
                        <option value="Portugal">Portugal</option>
                        <option value="Puerto Rico">Puerto Rico</option>
                        <option value="Qatar">Qatar</option>
                        <option value="Republic of Montenegro">Republic of Montenegro</option>
                        <option value="Republic of Serbia">Republic of Serbia</option>
                        <option value="Reunion">Reunion</option>
                        <option value="Romania">Romania</option>
                        <option value="Russia">Russia</option>
                        <option value="Rwanda">Rwanda</option>
                        <option value="St Barthelemy">St Barthelemy</option>
                        <option value="St Eustatius">St Eustatius</option>
                        <option value="St Helena">St Helena</option>
                        <option value="St Kitts-Nevis">St Kitts-Nevis</option>
                        <option value="St Lucia">St Lucia</option>
                        <option value="St Maarten">St Maarten</option>
                        <option value="St Pierre & Miquelon">St Pierre & Miquelon</option>
                        <option value="St Vincent & Grenadines">St Vincent & Grenadines</option>
                        <option value="Saipan">Saipan</option>
                        <option value="Samoa">Samoa</option>
                        <option value="Samoa American">Samoa American</option>
                        <option value="San Marino">San Marino</option>
                        <option value="Sao Tome & Principe">Sao Tome & Principe</option>
                        <option value="Saudi Arabia">Saudi Arabia</option>
                        <option value="Senegal">Senegal</option>
                        <option value="Seychelles">Seychelles</option>
                        <option value="Sierra Leone">Sierra Leone</option>
                        <option value="Singapore">Singapore</option>
                        <option value="Slovakia">Slovakia</option>
                        <option value="Slovenia">Slovenia</option>
                        <option value="Solomon Islands">Solomon Islands</option>
                        <option value="Somalia">Somalia</option>
                        <option value="South Africa">South Africa</option>
                        <option value="Spain">Spain</option>
                        <option value="Sri Lanka" selected>Sri Lanka</option>
                        <option value="Sudan">Sudan</option>
                        <option value="Suriname">Suriname</option>
                        <option value="Swaziland">Swaziland</option>
                        <option value="Sweden">Sweden</option>
                        <option value="Switzerland">Switzerland</option>
                        <option value="Syria">Syria</option>
                        <option value="Tahiti">Tahiti</option>
                        <option value="Taiwan">Taiwan</option>
                        <option value="Tajikistan">Tajikistan</option>
                        <option value="Tanzania">Tanzania</option>
                        <option value="Thailand">Thailand</option>
                        <option value="Togo">Togo</option>
                        <option value="Tokelau">Tokelau</option>
                        <option value="Tonga">Tonga</option>
                        <option value="Trinidad & Tobago">Trinidad & Tobago</option>
                        <option value="Tunisia">Tunisia</option>
                        <option value="Turkey">Turkey</option>
                        <option value="Turkmenistan">Turkmenistan</option>
                        <option value="Turks & Caicos Is">Turks & Caicos Is</option>
                        <option value="Tuvalu">Tuvalu</option>
                        <option value="Uganda">Uganda</option>
                        <option value="United Kingdom">United Kingdom</option>
                        <option value="Ukraine">Ukraine</option>
                        <option value="United Arab Erimates">United Arab Emirates</option>
                        <option value="United States of America">United States of America</option>
                        <option value="Uraguay">Uruguay</option>
                        <option value="Uzbekistan">Uzbekistan</option>
                        <option value="Vanuatu">Vanuatu</option>
                        <option value="Vatican City State">Vatican City State</option>
                        <option value="Venezuela">Venezuela</option>
                        <option value="Vietnam">Vietnam</option>
                        <option value="Virgin Islands (Brit)">Virgin Islands (Brit)</option>
                        <option value="Virgin Islands (USA)">Virgin Islands (USA)</option>
                        <option value="Wake Island">Wake Island</option>
                        <option value="Wallis & Futana Is">Wallis & Futana Is</option>
                        <option value="Yemen">Yemen</option>
                        <option value="Zaire">Zaire</option>
                        <option value="Zambia">Zambia</option>
                        <option value="Zimbabwe">Zimbabwe</option>
                     </select>
                  </div>
                  <div class="col-lg-6">
                     <label for="address">Address <span class="text-main-1">*</span>:</label>
                     <input type="text" class="form-control required" name="address" id="address">
                     <div class="nk-gap-1"></div>
                     <label for="city">Town / City <span class="text-main-1">*</span>:</label>
                     <input type="text" class="form-control required" name="city" id="city">
                     <div class="nk-gap-1"></div>
                     <div class="row vertical-gap">
                        <div class="col-sm-6">
                           <label for="zip">Postcode / ZIP <span class="text-main-1">*</span>:</label>
                           <input type="tel" class="form-control required" name="zip" id="zip" required>
                        </div>
                     </div>
                     <div class="nk-gap-1"></div>
                     <label class="custom-control custom-checkbox">
                     <input type="checkbox" class="custom-control-input">
                     
                     </label>
                  </div>
               </div>
               <!-- END: Billing Details -->
               <div class="nk-gap-2"></div>
               <div class="nk-gap-1"></div>
               <label for="notes">Order Notes:</label>
               <textarea class="form-control" name="notes" id="notes" placeholder="Order Notes" rows="6"></textarea>
               <br><br>
               <div class="container">
                  <div class="nk-store nk-store-checkout">
                     <h3 class="nk-decorated-h-2"><span><span class="text-main-1">Gamehub</span> Subscription Service</span></h3>
                     <h5 ><span>Get UNLIMITED ACCESS TO 100+ quality GAMES with new titles added all the time.the pc game subscription that lets you choose games every month to keep forever! </span></h5>
                     <!-- START: Billing Details -->
                     <div class="nk-gap"></div>
                     <div class="nk-gap-2"></div>
                     <a  class="nk-btn nk-btn-rounded nk-btn-color-main-1" href="subscription.jsp">see all plans</a>
                  </div>
                  <br><br>
                  <div class="container">
                     <div class="nk-store nk-store-checkout">
                        <h3 class="nk-decorated-h-2"><span><span class="text-main-1">Payment</span> Method</span></h3>
                        <span>     We accept the following secure payment methods.When you submit your payment information your data is protected by Secure Socket Layer(SSL)technology certificate by a digital certificate.</span>
                        <!-- START: Billing Details -->
                        <div class="nk-gap"></div>
                        <div class="row vertical-gap">
                           <div class="col-lg-6">
                              <div class="row vertical-gap">
                                 <div class="col-sm-6">
                                    <label for="fname">Please select a payment method: </label>
                                    <select id="country" name="country">
                                       <option value="Visa">Visa</option>
                                       <option value="Master">Master</option>
                                       <option value="Credit Card(Domestic)">Credit Card(Domestic)</option>
                                       <option value="Debit card(Domestic)">Debit card(Domestic)</option>
                                       <option value="Net banking">Net banking</option>
                                    </select>
                                 </div>
                              </div>
                              <div class="nk-gap-1"></div>
                              <label for="card">Credit/Debit Card Number:</label>
                              <input type="text" class="form-control required" type="text" name="card_num" inputmode="numeric" pattern="[0-9]{16}" title="Enter valid credit or debit card number" required>
                             
                              <div class="row vertical-gap">
                                 <div class="col-sm-6">
                                    <label for="state">Expiration Date: </label>
                                   
                                    <input type="date" class="form-control required" name="payment" id="date" required> &nbsp 
                                    		 <div class="col-sm-6"> 
                                    <label for="phone">Security Code: </label>
                                    <input type="phone" class="form-control required" name="cvv" id="cvv"  pattern= "[0-9]{3}" title="Enter valid CVV number" required>
                                    </div>
                                 </div>
                                 <div class="nk-gap-1"></div>
                                 <label class="custom-control custom-checkbox">
                                 <input type="checkbox" class="custom-control-input">
                                 </label>
                              </div>
                           </div>
                           <!-- END: Billing Details -->
                           <br>
                           
                           &nbsp &nbsp &nbsp<img src="images/pay.jpg" width="40%"; height="40%">
                      
                        </div>
                        <!-- START: Order Products -->
                        <div class="nk-gap-3"></div>
                        <h3 class="nk-decorated-h-2"><span><span class="text-main-1">Your</span> Order</span></h3>
                        <div class="nk-gap"></div>
                        <label for="notes">Please enter your userID to Continue</label>
                        <input type="text" class="form-control required" name="userid" id="zip">      <br><br><br>
                        <div class="table-responsive">
                           <table class="nk-table nk-table-sm">
                              <thead class="thead-default">
                                 <tr>
                                    <th class="nk-product-cart-title">Game ID</th>
                                    <th class="nk-product-cart-total">Game Name</th>
                                 </tr>
                              </thead>
                              <tbody>
                                 <tr>
                                    <td>
                                       <input type="text" class="form-control  required" placeholder="Enter game ID" name="gameid" >
                                       <div class="nk-gap-1"></div>
                                    </td>
                                    <td>
                                       <input type="text" class="form-control  required" placeholder="Enter game name" name="name">
                                       <div class="nk-gap-1"></div>
                                    </td>
                                 </tr>
                              </tbody>
                           </table>
                        </div>
                        <!-- END: Order Products -->
                        <div class="nk-gap-2"></div>
                        <input type="submit" name="Place Order" value="Create Order" class="nk-btn nk-btn-rounded nk-btn-color-main-1">
                     </div>
                  </div>
                  <div class="nk-gap-2">
                  </div>
               </div>
            </div>
      </form>
      </div>
      <!--  footer -->
      <footr>
         <div class="footer ">
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
         </div>
      </footr>
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