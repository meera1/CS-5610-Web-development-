var app = angular.module("ScrapingApp", ['ngRoute']);


app.controller("ScrapingController", function ($scope, $http, $location) {




    $scope.urlSubmit = function (url) {
        //var link1 = $scope.link1;
        console.log("from app  " + $scope.url.linkName + "  " + $scope.url.link1);
        $http.post("/api/scrap", { link: $scope.url.link1, name: $scope.url.linkName })
        .success(function (res) {
           console.log(res);


        })
        .error(function (res) {
            console.log('Error: ' + res);
        });

    };

});