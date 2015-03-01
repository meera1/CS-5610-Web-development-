

var app = angular.module("FirstAngularApp", []);
app.controller("FirstAngularApp", function ($scope) {
    $scope.hello="Hello from "
    //console.log("Hi from controller");

    var emp = {
        first: "Meera",
        last: "Udani",
    };
    $scope.emp = emp
})

