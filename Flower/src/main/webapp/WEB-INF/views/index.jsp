<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!-- The HTML 4.01 Transitional DOCTYPE declaration-->
<!-- above set at the top of the file will set     -->
<!-- the browser's rendering engine into           -->
<!-- "Quirks Mode". Replacing this declaration     -->
<!-- with a "Standards Mode" doctype is supported, -->
<!-- but may lead to some differences in layout.   -->

<html>
  <head>
    <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>Bootstrap Theme The Band</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

  <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet" integrity="sha256-MfvZlkHCEqatNoGiOXveE8FIwMzZg4W85qfrfIFBfYc= sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

 <!--  
  for footer
  <style>
.social:hover {
     -webkit-transform: scale(1.1);
     -moz-transform: scale(1.1);
     -o-transform: scale(1.1);
 }
 .social {
     -webkit-transform: scale(0.8);
     /* Browser Variations: */
     
     -moz-transform: scale(0.8);
     -o-transform: scale(0.8);
     -webkit-transition-duration: 0.5s;
     -moz-transition-duration: 0.5s;
     -o-transition-duration: 0.5s;
 }
/*
    Multicoloured Hover Variations
*/
 
 #social-fb:hover {
     color: #3B5998;
 }
 #social-tw:hover {
     color: #4099FF;
 }
 #social-gp:hover {
     color: #d34836;
 }
 #social-em:hover {
     color: #f39c12;
 }
</style> -->
  
</head>

<body>

 <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"><img src="resources\images\logo.jpg" height="35" width="50"></a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      
      <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">CONTENTS
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">About Us</a></li>
            <li><a href="prList">Products</a></li>
            <li><a href="#">Category</a></li> 
          </ul>
        </li> 
      <li><a href="#">About Us</a></li>
      <li><a href="#">Category</a></li> 
      <li><a href="productView">Products</a></li> 
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="signup"><span class="glyphicon glyphicon-user" ></span> Sign Up</a></li>
      <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav> 

 <%-- <jsp:include page="header.jsp" />  --%>
<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="50000">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    
    
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="resources\images\1aa.jpg" alt="Bitter Nutmeg is a tree up to 20 m tall" width="450" height="350">
        <div class="carousel-caption">
          <h3><font face="arial,helvetica">Bitter Nutmeg is a tree up to 20 m tall, often with stilt roots. Bark is brownish, warty, flaky; blaze reddish.</font></h3>
          
        </div>      
      </div>
      
      <div class="item">
        <img src="resources\images\2aa.jpg" alt="Campbell's magnolia is a magnolia that grows in the forests of the Himalaya" width="480" height="350">
        <div class="carousel-caption">
          <h3>Tulip Tree Is a deciduous tree native to North America, that can grow to heights of over 30 m with trunk diameters of 4-6 ft.</h3>
          
        </div>      
      </div>
      
      
      <div class="item">
        <img src="resources\images\3aa.jpg" alt="Cathcart's Magnolia is a trees up to 50 m tall" width="480" height="350">
        <div class="carousel-caption">
          <h3>Cathcart's Magnolia is a trees up to 50 m tall" </h3>
          
        </div>      
      </div> 
       <div class="item">
        <img src="resources\images\4aa.jpg" alt="Nilofar is an aquatic flowering plant found in Kashmir" width="480" height="350">
        <div class="carousel-caption">
          <h3>Nilofar is an aquatic flowering plant found in Kashmir" </h3>
         
        </div>      
      </div>
      
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
<center>
<div class="table-responsive">
  <table class="table" align="center">

  <tr>
    <td > <a href="productDetails"><img src="resources\images\5aa.jpg" /> </a></td>
    <td ><a href="productView"><img src="resources\images\6aa.jpg" /></a></td>
    <td ><a href="product"><img src="resources\images\7aa.jpg" /></a></td>
  </tr>
</table></div>
</div>
</center>
</div>
 <jsp:include page="footer.jsp" />

<!-- <!-- myaddition for footer 
<div class="container">
    <hr/>
        <div class="text-left left-block">
            <p class="txt-railway"><b>About</b></p> </div>
         <div class="text-right Right-block">   
            <br />
                <a href="https://www.facebook.com/bootsnipp"><i id="social-fb" class="fa fa-facebook-square fa-3x social"></i></a>
	            <a href="https://twitter.com/bootsnipp"><i id="social-tw" class="fa fa-twitter-square fa-3x social"></i></a>
	            <a href="https://plus.google.com/+Bootsnipp-page"><i id="social-gp" class="fa fa-google-plus-square fa-3x social"></i></a>
	            <a href="mailto:bootsnipp@gmail.com"><i id="social-em" class="fa fa-envelope-square fa-3x social"></i></a>
		</div>
    <hr/>
</div>
<br /> -->


<!--  end of my addition -->
  </body>
</html>