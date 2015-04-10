var app = angular.module("ScrapingApp", ['ngRoute']);


app.config(['$routeProvider',
   function($routeProvider) {
       $routeProvider.
           when('/failure', {
               templateUrl: '/done/done.html'
           }).
           when('/api/failure', {
               templateUrl: 'public/failure/failure.html'

           });
   }]);

app.controller("ScrapingController", function ($scope, $http, $location) {




    $scope.urlSubmit = function (url) {
        //var link1 = $scope.link1;
        console.log("from app  " + $scope.url.linkName + "  "+$scope.url.link1);
        $http.post("/api/scrap", { link: $scope.url.link1, name: $scope.url.linkName })
        .success(function (res) {
            $scope.scrap = res;
            
            
        })
        .error(function (res) {
            console.log('Error: ' + res);
        });

    };
