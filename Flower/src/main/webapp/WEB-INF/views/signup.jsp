<%@ page language="java" contentType="text/html; charset=ISO-8859-1"    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!--  my addition -->

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">


  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

<!--  end of my addition -->
<title>Registration Form</title>
<style type="text/css">
body{
    background-color: #ffbbcc;
}
.centered-form{
	margin-top: 60px;
}
.centered-form .panel{
	background: rgba(255, 255, 255, 0.8);
	box-shadow: rgba(0, 0, 0, 0.3) 20px 20px 20px;
}
<!-- for footer -->
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
<!-- end of footer -->

.error {
        color: red; font-weight: bold;
    }
</style>
</head>
<body>
<!-- <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"><img src="resourcesimages\img_flower.jpg" height="30" width="40"></a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index">Home</a></li>
      
      <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">CONTENTS
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Merchandise</a></li>
            <li><a href="#">Extras</a></li>
            <li><a href="#">Media</a></li> 
          </ul>
        </li> 
      <li><a href="#">Page 1</a></li>
      <li><a href="#">Page 2</a></li> 
      <li><a href="#">Page 3</a></li> 
    </ul>
    <ul class="nav navbar-nav navbar-right">
          <li><a href="/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav> -->
<jsp:include page="header.jsp" />
<div class="container">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title">Please sign up for Registration</h3>
			 			</div>
			 			<div class="panel-body">
			<!--  <c:url var="addAction" value="logins" ></c:url> -->
			
  			<form:form method="POST" action="logins" modelAttribute="register" enctype="multipart/form-data"> 
			    		<%-- <form role="form"> --%>
			   <table align="center">
			    	
           			<form:hidden path="id" />	
			    	<tr>
			    		<td>
            				<form:label path="username">
               					<spring:message text="Login Name"/>
            				</form:label>
        				</td>
        				<td>
            				<form:input path="username" />
        				</td> 
			    	</tr>
			    	<tr>
			    		<td>
            				<form:label path="password">
                				<spring:message text="Password"/>
           					</form:label>
        				</td>
       					 <td>
           					<form:input path="password" />
           					<form:errors path="password" /> <!-- cssClass="error"/> -->
       					 </td>
			    	</tr>
			    	<tr>
			    		<td>
            				<form:label path="conf_pass">
                				<spring:message text="Confirm Password"/>
           					</form:label>
        				</td>
       					 <td>
           					<form:input path="conf_pass" />
           					
       					 </td>
			    	</tr>
			    	<tr>
			    		<td>
            				<form:label path="address">
                				<spring:message text="Address"/>
           					</form:label>
        				</td>
       					 <td>
           					<form:input path="address" />
       					 </td>
			    	</tr>
			    	<tr>
			    		<td>
            				<form:label path="email">
                				<spring:message text="Email Id"/>
           					</form:label>
        				</td>
       					 <td>
           					<form:input path="email" />
           					<form:errors path="email" />
       					 </td>
			    	</tr>
			    	<tr>
			    		<td>
            				<form:label path="mobileno">
                				<spring:message text="Mobile No"/>
           					</form:label>
        				</td>
       					 <td>
           					<form:input path="mobileno" />
           					<form:errors path="mobileno" />
       					 </td>
			    	</tr>
			    	<tr>
			    		<td>
			    			<%-- <form:input path="role" value="ROLE_USER"/> --%>
			    			<form:hidden path="role" value="ROLE_USER"/>
			    		</td>
			    	</tr>
			    	 <tr>
     
        				<td colspan="2">
       		 			
                			<input type="submit"  value="<spring:message text="Register Your Details"/>" />
            			 </td>
    				</tr>
			    </table>		
			    		</form:form>
			    	</div>
	    		</div>
    		</div>
    	</div>
    </div>
    
    <!-- My addition for footer-->
<!-- <div class="container" color="blue">
    <hr/>
        <div class="text-left left-block">
            <p class="txt-railway"><b>About</b></p> </div>
         <div class="text-right Right-block">   
            <br />
                <a href="https://www.facebook.com"><i id="social-fb" class="fa fa-facebook-square fa-3x social"></i></a>
	            <a href="https://twitter.comp"><i id="social-tw" class="fa fa-twitter-square fa-3x social"></i></a>
	            <a href="https://plus.google.com"><i id="social-gp" class="fa fa-google-plus-square fa-3x social"></i></a>
	            <a href="mailto:bootsnipp@gmail.com"><i id="social-em" class="fa fa-envelope-square fa-3x social"></i></a>
		</div>
    <hr/>
</div> -->
<jsp:include page="footer.jsp" />
<br />
<!--  end of my addition -->
    
</body>
</html>