 var app = angular.module("MovieApp", ['ngRoute']);



app.config(['$routeProvider',  //$routeProvider is the centralized controller that is responsible for handeling the events
  function ($routeProvider) {
      $routeProvider.
        when('/home', {
            templateUrl: 'partials/home.html',
             controller: 'HomeCtrl'
        }).
        when('/profile', {
            templateUrl: 'partials/profile.html',
            controller: 'ProfileCtrl'
        }).
          when('/details/:idIMDB', {
              templateUrl: 'partials/details.html',
            //  controller: 'DetailsCtrl'
          }).
        otherwise({
            redirectTo: '/home'
        });
  }]);


app.controller("HomeCtrl", function ($scope, $http, MovieService) {
   
    $scope.searchMovies = function () {
        MovieService.search($scope.searchByTitle, function (response) {
             $scope.movies = response;
        });
    }

    $scope.addToFavourites = function(movie)
    {
        MovieService.addToFavourites(movie);
    }

});


app.controller("ProfileCtrl", function ($scope, MovieService) {
    $scope.favouriteMovies = MovieService.getFavourites();

});

/*
app.controller("DetailsCtrl", function ($scope, MovieService, $routeParams) {
    $scope.details = MovieService.getTitle($routeParams.idIMDB);

});

*/