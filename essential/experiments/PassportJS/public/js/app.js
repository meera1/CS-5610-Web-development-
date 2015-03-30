var app = angular.module("PassportApp", ["ngRoute"]);

app.config(function ($routeProvider) {
    $routeProvider
     .when('/home', {
         templateUrl: 'views/home/home.html',
     })
    .when('/profile', {
        templateUrl: 'views/profile/profile.html',
        controller: 'ProfileCtrl'
    })

    .when('/login', {
        templateUrl: 'views/login/login.html',
        controller: 'LoginCtrl'
    })
});