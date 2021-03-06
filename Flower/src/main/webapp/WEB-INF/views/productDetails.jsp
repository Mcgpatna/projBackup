<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>  
 <html>  
 <head>  
   <title>Use of Angular JS table sort and filter </title>  
   <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">  
   <script src="http://code.angularjs.org/1.4.8/angular.js"></script>  
   <script src="http://code.angularjs.org/1.4.8/angular-resource.js"></script>  
   <script src="http://angular-ui.github.io/bootstrap/ui-bootstrap-tpls-0.11.0.js"></script>  
   <script>  
     var app = angular.module('MyForm', ['ui.bootstrap', 'ngResource']);  
     app.controller('myCtrl', function ($scope) {  
       $scope.predicate = 'name';  
       $scope.reverse = true;  
       $scope.currentPage = 1;  
       $scope.order = function (predicate) {  
         $scope.reverse = ($scope.predicate === predicate) ? !$scope.reverse : false;  
         $scope.predicate = predicate;  
       };  
       /* $scope.students = [  
         { name: 'Kevin', age: 25, gender: 'boy' },  
         { name: 'John', age: 30, gender: 'girl' },  
         { name: 'Laura', age: 28, gender: 'girl' },  
         { name: 'Joy', age: 15, gender: 'girl' },  
         { name: 'Mary', age: 28, gender: 'girl' },  
         { name: 'Peter', age: 95, gender: 'boy' },  
         { name: 'Bob', age: 50, gender: 'boy' },  
         { name: 'Erika', age: 27, gender: 'girl' },  
         { name: 'Patrick', age: 40, gender: 'boy' },  
         { name: 'Tery', age: 60, gender: 'girl' }  
       ]; */  
       $scope.students=${myJson};
       $scope.totalItems = $scope.students.length;  
       $scope.numPerPage = 5;  
       $scope.paginate = function (value) {  
         var begin, end, index;  
         begin = ($scope.currentPage - 1) * $scope.numPerPage;  
         end = begin + $scope.numPerPage;  
         index = $scope.students.indexOf(value);  
         return (begin <= index && index < end);  
       };  
     });  
   </script>  
   <style>  
     .odd {  
       background-color: antiquewhite;  
       color: #008b8b;  
     }  
     td th {  
       height: 30px;  
       min-width: 100px;  
     }  
     thead {  
       background-color: darkgray;  
       color: white;  
       height: 30px;  
     }  
   </style>  
 </head>
 <jsp:include page="header.jsp" />  
 <body ng-app="MyForm">  
   <div ng-controller="myCtrl">  
     <h3>List for  Flowers of Tree</h3>  
     <div class="container-fluid">  
       <pre>Click header link to sort, input into filter text to filter</pre>  
       <hr />  
       <table class="table table-striped">  
         <thead>  
           <tr>  
             <th>Edit</th>  
             <th><a href="" ng-click="order('id')">Id</a> </th>  
             <th><a href="" ng-click="order('name')"> Name</a> </th>  
             <th><a href="" ng-click="order('description')">Description</a> </th>
             <th><a href="" ng-click="order('category')">Category</a> </th>
             <th><a href="" ng-click="order('price')">Price</a> </th>
           </tr>  
         </thead>  
         <tbody>  
           <tr>  
             <td>Filter =>></td>  
             <td> <input type="text" ng-model="search.id" /></td>  
             <td> <input type="text" ng-model="search.name" /> </td>  
             <td><input type="text" ng-model="search.description" /> </td> 
             <td><input type="text" ng-model="search.category" /> </td>
             <td><input type="text" ng-model="search.Price" /> </td>
           </tr>  
           <tr ng-repeat="user in students | orderBy:predicate:reverse | filter:paginate| filter:search" ng-class-odd="'odd'">  
             <td>  
               <button class="btn">  
                 Edit  
               </button>  
             </td>  
             <td>{{ user.id}}</td>  
             <td>{{ user.name}}</td>  
             <td>{{ user.description}}</td>
             <td>{{ user.category}}</td>
             <td>{{ user.price}}</td>  
           </tr>  
         </tbody>  
       </table>  
       <pagination total-items="totalItems" ng-model="currentPage"  
             max-size="5" boundary-links="true"  
             items-per-page="numPerPage" class="pagination-sm">  
       </pagination>  
     </div>  
   </div>  
 </body>  
 <jsp:include page="footer.jsp" />
 </html>  