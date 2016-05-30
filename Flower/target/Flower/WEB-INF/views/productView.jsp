<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sec" 	uri="http://www.springframework.org/security/tags"%>

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



<title>Product List</title>
</head>

<body>
<%-- <sec:authorize access="hasRole('ROLE_ADMIN','ROLE_USER')"> --%>
 <%-- <jsp:include page="header.jsp" /> --%> 
<nav class="navbar navbar-default role="navigator">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index"><img src="resources\images\logo.jpg" height="40" width="40"></a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index">Home</a></li>
      
      <li class="dropdown">
         
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">CONTENTS
           <span class="caret"></span></a> 
          <ul class="dropdown-menu">
            <li><a href="#">About Us</a></li>
            <li><a href="productView">Products</a></li>
            <li><a href="#">Category</a></li> 
          </ul>
        </li> 
      <li><a href="#">About Us</a></li>
      <li><a href="#">Category</a></li> 
      <li><a href="productView">Products</a></li> 
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="signup"><span class="glyphicon glyphicon-user" ></span> Sign Up</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>
<br/><br/>
<div class="container-fluid">
<table width="100" id="prdTable" class="table table-striped table-bodered">
	<thead>  
          <tr>  
            <th>ID</th>  
            <th>Name</th>  
            <th>Description</th> 
            <th>Category</th> 
            <th>Price</th>
            <th>Status</th>  
            <th>More</th>
          </tr>  
        </thead>  
   		<c:forEach items="${pList}" var="prd">
   		<tr>  
            <td>${prd.id}</td>  
            <td>${prd.name}</td>
            <td>${prd.description}</td>
            <td>${prd.category}</td>
            <td>${prd.price}</td>
            <td>${prd.status}</td>
            <td><a href="details/${prd.id}">Details</a> </td>  
          </tr> 
           
        </c:forEach> 
  
  
</table>
</div>
<script>
$(document).ready(function(){
    $('#prdTable').dataTable();
});
</script>
<jsp:include page="footer.jsp" />
<%-- </sec:authorize> --%>
</body>
</html>