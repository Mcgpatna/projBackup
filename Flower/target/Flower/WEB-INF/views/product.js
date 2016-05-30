var myApp = angular.module('mainApp', []);
 
myApp.controller('homeController', ['$scope', '$http', function($scope, $http) {
 
    $scope.listUser = null;
    $scope.resMsg = null;
 
        $scope.showUserList = function() {
            var urlGetUsers = 'viewProduct';
             
            var responEC = $http.get(urlGetUsers, {cache: true, transformResponse: function(data, headersGetter) {
                    try {
                        var jsonObject = JSON.parse(data);
                        keepGoing = true;
                        return jsonObject;
                    }
                    catch (e) {
                        console.log(e);
                        $scope.resMsg = "Error. Cannot Retrieve Data";
                    }
                    return {};
                }});//end ajax 
 
            responEC.success(function(listUser, status, headers, config) {
                $scope.listUser = listUser;
                if ($scope.listUser == null || $scope.listUser.length == 0) {
                    $scope.resMsg = "No Data";
                }
            });
        };
         
        $scope.showUserList();
 
    }]);