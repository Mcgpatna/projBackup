<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sec" 	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<%-- <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet" integrity="sha256-MfvZlkHCEqatNoGiOXveE8FIwMzZg4W85qfrfIFBfYc= sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous"> --%>
  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<link rel="stylesheet" 
href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css">
<script type="text/javascript" 
src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" 
src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<title>Individual Product's Details</title>
</head>
<body>


<h1>
<center>    Details of a  Product  </center>
</h1>
<!-- header details E:/MCG-TTT/DT-PROJECT/Flower/src/main/webapp/resources/images/img_flower.jpg--> 

<nav class="navbar navbar-default role="navigator">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index"><img src="E:/MCG-TTT/DT-PROJECT/Flower/src/main/webapp/resources/images/logo.jpg" height="30" width="40"></a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="/Flower/index">Home</a></li>
      
      <li class="dropdown">
         
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">CONTENTS
           <span class="caret"></span></a> 
          <ul class="dropdown-menu">
            <li><a href="#">About Us</a></li>
            <li><a href="/Flower/productView">Products</a></li>
            <li><a href="#">Category</a></li> 
          </ul>
        </li> 
      <li><a href="#">About Us</a></li>
      <li><a href="#">Category</a></li> 
      <li><a href="/Flower/productView">Products</a></li> 
    </ul>
    
  </div>
</nav>
 
<!-- end of header details -->
<div class="container-fluid">
<%-- <form:form  action="/email" enctype="multipart/form-data"> --%>
<table width="100"  class="table table-striped table-bodered">

    

<tr >
 <td rowspan=6>
   <img src="${products.pLocation}"/>
 </td>
 <th> Product Id</th>
  <td> <c:out value="${products.id}"/></td>
</tr>
<tr>
 <th>Product Name</th>
 <td><c:out value="${products.name}"/></td>
</tr>
<tr>
 <th>Description</th>
 <td><c:out value="${products.description}"/></td>
</tr>
<tr>
 <th>Category</th>
 <td><c:out value="${products.category}"/></td>
</tr>
<tr>
 <th>Price</th>
 <td><c:out value="${products.price}"/></td>
</tr>
<tr>
 <th>Status</th>
 <td><c:out value="${products.status}"/></td>
</tr>

 <tr>
     <td colspan="2" align="center">
          <a href="/email">Send E-mail</a>
     </td>
</tr>
    
    
   
</table>  
<%-- </form:form> --%>
</div>

<br/><br/>
<!-- my addition for footer -->
<div class="container"  style=color:#00aabb >
    <hr/>
        <div class="text-left left-block">
            <p class="txt-railway"><font face="vivaldi" size="10"><b>About</b></font> 
            &nbsp;&nbsp;&nbsp;&nbsp;
            <a href="/Flower/index"><font face="vivaldi" size="10"><b>Home </b></font></a></p>
         </div>
         <div class="text-right Right-block" >   
            <br />
                <a href="https://www.facebook.com"><i id="social-fb" class="fa fa-facebook-square fa-3x social"></i></a>
	            <a href="https://twitter.com"><i id="social-tw" class="fa fa-twitter-square fa-3x social"></i></a>
	            <a href="https://plus.google.com"><i id="social-gp" class="fa fa-google-plus-square fa-3x social"></i></a>
	            <a href="mailto:chanda.madhu@gmail.com"><i id="social-em" class="fa fa-envelope-square fa-3x social"></i></a>
		</div>
    <hr/>
</div>

<br />


<!--  end of my addition -->

</body>
</html>
