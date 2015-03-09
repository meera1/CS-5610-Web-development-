var app = angular.module("MovieApp", ['ngRoute']);



app.config(['$routeProvider',  //$routeProvider is the centralized controller that is responsible for handeling the events
  function ($routeProvider) {
      $routeProvider.
        when('/home', {
            templateUrl: 'partials/home1.html',
             controller: 'HomeCtrl'
        }).
        when('/profile', {
            templateUrl: 'partials/profile1.html',
            controller: 'HomeCtrl'
        }).
          when('/details', {
              templateUrl: 'partials/details.html',
              // controller: 'PhoneDetailCtrl'
          }).
        otherwise({
            redirectTo: '/home'
        });
  }]);


app.controller("HomeCtrl", function ($scope, $http) {
    $scope.searchMovies = function () {
        
        var title = $scope.searchByTitle;
        $http.jsonp("http://www.myapifilms.com/imdb?title= " + title + "&format=JSONP&aka=0&business=0&seasons=0&seasonYear=0&technical=0&filter=N&exactFilter=0&limit=10&lang=en-us&actors=N&biography=0&trailer=0&uniqueName=0&filmography=0&bornDied=0&starSign=0&actorActress=0&actorTrivia=0&movieTrivia=0&awards=0&moviePhotos=N&movieVideos=N&callback=JSON_CALLBACK")
        .success(function (response) {
            
            $scope.movies = response;
        })
    }

    $scope.removeMovie = function (movie) {
        var index = $scope.movies.indexOf(movie);
        $scope.movies.splice(index, 1);

    }



    $scope.updateMovie = function () {
        alert($scope.movie.title);
    }

    $scope.favouriteMovies = [];


    $scope.addToFavourites = function (movie) {
        $scope.favouriteMovies.push(movie);
        
        
    }


});