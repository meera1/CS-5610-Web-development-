var app = angular.module("IDEApp", [])

app.controller("IDEController",
    function ($scope, $http) {

        $http.get("/rest/developer")
        .success(function (response) {
            $scope.developer = response;
        });

        $scope.remove = function(index)
        {
            $http.delete('/rest/developer/:index' + index)
            .success(function(response)
            {
                $scope.developer = response;
            })
        }


        $scope.add = function (dev) {
            $http.post('/rest/developer', dev)
            .success(function (response) {
                $scope.developer = response;
            });

        }   

        $scope.select = function($index)
        {
            $scope.selectedIndex = $index;
            $scope.applications = $scope.developer[$index].apps;
        }
        
    });