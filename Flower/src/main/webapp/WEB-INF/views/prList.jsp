<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@page import="controllers.homeController"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


 <title>List Of Product</title>
        <!-- BOOTSTRAP STYLES-->
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <!-- ANGULAR JS -->
        <script src="/views/angular.js"></script>
        <!--USERS JS -->
        <script src="/views/product.js"></script>
</head>
<body>
<div class="row" ng-controller="homeController" ng-app="mainApp" style="margin: 10px;">
            <div class="col-md-7">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        Users
                    </div>
                    <div class="panel-body">
                        <div ng-show="isEmpty(listUser)">
                            {{resMsg}}
                        </div>
                        <div id="dynamic" ng-hide="isEmpty(listUser)">
                            <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="exampleone">
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
                                <tbody>
                                    <tr ng-repeat="prd in listUser">
                                        <td>{{$index + 1}}</td>
                                        <!-- <td>{{user.username}}</td>
                                        <td>{{user.name}}</td>
                                        <td>{{user.enable}}</td> -->
                                        <td>${prd.id}</td>  
            							<td>${prd.name}</td>
            							<td>${prd.description}</td>
            							<td>${prd.category}</td>
            							<td>${prd.price}</td>
            							<td>${prd.status}</td>
                 						<td><a href="details/${prd.id}">Details</a> </td>                       
                                        
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>            
        </div>
</body>
</html>