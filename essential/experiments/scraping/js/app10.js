

var app = angular.module("ScrapingApp", ['ngRoute']);


app.config(['$routeProvider',
function ($routeProvider) {
    console.log("i am here");
    $routeProvider.
      when('/done', {

          templateUrl: 'user/user1.html',
          //controller: 'UserController'
      });

}]);

app.controller("ScrapingController", function ($scope, $http, $location) {




    $scope.urlSubmit = function (url) {
        //var link1 = $scope.link1;
        console.log("from app the link name and it's url   " + $scope.url.linkName + "  " + $scope.url.link1);
        console.log("choice of user  " + $scope.url.choice);
        $http.post("/api/scrap", { link: $scope.url.link1, name: $scope.url.linkName, choice: $scope.url.choice })
        .success(function (res) {
            $scope.scrap = res;
            console.log(res);

        })
        .error(function (res) {
            console.log('Error: ' + res);
        });

    };


    $scope.datum = [];

    $scope.addData = function (s) {
        $scope.datum.push(s);

        /*
         $http.post("/api/data", {surl: s.dataUrl , sdata: s.tagData })
         .success(function (res) {
             $scope.addedData = res;
             //var index = $scope.movies.indexOf(movie);
             //datas.splice(s, 1);
             //$scope.scrap = datas;
         })
 
         .error(function (res) {
             console.log('Error: ' + res);
         });
      */
    };


    $scope.removeData = function (d) {
        var index = $scope.datum.indexOf(d);
        $scope.datum.splice(index, 1);
    };



    $scope.savePicks = function () {
        $http.post("/api/save", { d: $scope.datum })
        .success(function (res) {
            console.log(res);

            // $location.path("/error");
            $location.path(res);
            //$scope.$apply();

        })

        .error(function (res) {
            console.log('Error: ' + res);
        });
    };


});
