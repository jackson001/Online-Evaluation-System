<%@page import="models.evaluation_Model"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
<title>Online Evaluation System</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/reality-icon.css">
<link rel="stylesheet" type="text/css" href="css/bootsnav.css">
<link rel="stylesheet" type="text/css" href="css/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="css/owl.transitions.css">
<link rel="stylesheet" type="text/css" href="css/cubeportfolio.min.css">
<link rel="stylesheet" type="text/css" href="css/jquery.fancybox.css">
<link rel="stylesheet" type="text/css" href="css/settings.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/range-Slider.min.css">
<link rel="stylesheet" type="text/css" href="css/search.css">
<link rel="icon" href="images/icon.png">
</head>
<body>
 

<!--Loader-->
<div class="loader">
  <div class="span">
    <div class="location_indicator"></div>
  </div>
</div>
 <!--Loader--> 


<header class="layout_boxed">
<div class="header-upper dark">
  <div class="container">
    <div class="row">
      <div class="col-md-3 col-sm-12">
        <div class="logo">
<!--          <a href="index6.html"><img alt="" src="images/logo-white.png"></a>-->
        </div>
      </div>
    </div>
  </div>
</div>
<nav class="navbar navbar-default navbar-sticky bootsnav">
  <div class="container">
    <div class="attr-nav">
      <a href="#." class="btn-touch uppercase white-touch">Social Media Platforms</a>
    </div>
    <div class="attr-nav">
      <ul class="social_share">
        <li><a href="javascript:void(0)" class="facebook"><i class="fa fa-facebook"></i></a></li>
        <li><a href="javascript:void(0)" class="twitter"><i class="fa fa-twitter"></i></a></li>
        <li><a class="google" href="javascript:void(0)"><i class="icon-google4"></i></a></li>
      </ul>
    </div>
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
      <i class="fa fa-bars"></i>
      </button>
<!--      <a class="navbar-brand sticky_logo" href="index6.html"><img src="images/logo-white.png" class="logo" alt=""></a>-->
    </div>
    <div class="collapse navbar-collapse" id="navbar-menu">
      <ul class="nav navbar-nav" data-in="fadeIn" data-out="fadeOut">
              <li class="dropdown active">
                <a href="/Evaluation" class="dropdown-toggle uppercase " data-toggle="dropdown">Home</a>               
              </li>
              <li class="dropdown megamenu-fw">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Top Assessments</a>
                <ul class="dropdown-menu megamenu-content" role="menu">
                  <li>
                    <div class="row">
                      
                      <div class="col-menu col-md-12">
                        <h5 class="title bottom20">ASSESSMENTS' LIST</h5>
                        <div class="row">
                          <div id="nav_slider" class="owl-carousel">
                              <% evaluation_Model latestevaluation=new evaluation_Model();
                                      request.setAttribute("latestevaluation",latestevaluation.get10evaluation()); 
                              %>
                              <c:forEach var="latest" items="${latestevaluation}">
                                  
                                  <div class="item">
                              <div class="image bottom15"> 
                                <img src="images/nav-slider1.jpg" alt="${latest.evaluation_NAME}"> 
                                <span class="nav_tag yellow text-uppercase">${latest.evaluation_TYPE}</span>
                              </div>
                              <h4><a href="property_detail2.jsp?n=${latest.evaluation_NAME}&id=${latest.ID}">${latest.evaluation_NAME}</a></h4>
                              <p>COST IS: $ ${latest.COST}</p>
                            </div>
                              </c:forEach>
                                                                                                     
                            
                          </div>
                        </div>
                      </div>
                    </div>
                  </li>
                </ul>
              </li>                             
              
              <li class="dropdown">
                <a href="#." class="dropdown-toggle" data-toggle="dropdown">How to??</a>
                <ul class="dropdown-menu">                  
                  <li class="dropdown">
                    <a href="#." class="dropdown-toggle" data-toggle="dropdown">Manage Evaluations.</a>
                    <ul class="dropdown-menu">
                      <li><a href="#">professions</a></li>
                      
                    </ul>
                  </li>
                  <li class="dropdown">
                    <a href="#." class="dropdown-toggle" data-toggle="dropdown">Learn About Other Evaluations</a>
                   
                  </li>
                  <li class="dropdown">
                  <a href="faq2.jsp" class="dropdown-toggle" data-toggle="dropdown">FAQ's</a>
                  </li>
                  
                </ul>
              </li>
              <li><a href="ContactUs.jsp">Contact Us<i class="icon-icons179"></i></a></li>
              
              <li><a class ="uppercase dark" href="login.jsp">Login /Register<i class="icon-icons179"></i></a></li>
            </ul>
    </div>
  </div>
</nav>
</header>