




var app = angular.module("AngularApp3", []);

app.controller("Controller3", function ($scope, $http) {

    $scope.detailsMovie = function (movie) {
        $http.jsonp("http://www.myapifilms.com/imdb?format=JSONP&idIMDB=" + movie.idIMDB + "&callback=JSON_CALLBACK")
        .success(function (movie) {
            $scope.details = movie;
        });
    }
   
    $scope.searchMovies = function () {
       
        var title = $scope.searchByTitle;
        $http.jsonp("http://www.myapifilms.com/imdb?title= " + title + "&format=JSONP&aka=0&business=0&seasons=0&seasonYear=0&technical=0&filter=N&exactFilter=0&limit=10&lang=en-us&actors=N&biography=0&trailer=0&uniqueName=0&filmography=0&bornDied=0&starSign=0&actorActress=0&actorTrivia=0&movieTrivia=0&awards=0&moviePhotos=N&movieVideos=N&callback=JSON_CALLBACK")
        .success(function (response) {
            console.log(response);
            $scope.movies = response;
        })    
    }
    $scope.favouriteMovies = [];

    $scope.removeFavoriteMovie = function(movie)
    {
        var index = $scope.favouriteMovies.indexOf(movie);
        $scope.favouriteMovies.splice(index, 1);
    }

   

    $scope.addToFavourites = function (movie)
    {
        $scope.favouriteMovies.push(movie);
    }

   /* var movies = [ { title: "Avatar", plot: "Blue guys and humans fight", year: 2009 },
        {title: "Raaz 2", plot: "Horror movie, where the lead actress is captured by spirits", year: 2006}];

    $scope.movies = movies;
    */




    $scope.removeMovie = function (movie) {
        var index = $scope.movies.indexOf(movie);
        $scope.movies.splice(index, 1);

    }

    $scope.updateMovie = function () {
        alert($scope.movie.title);
    }


    $scope.addMovie = function () {
        var new_movie = {
            title: $scope.movie.title,
            plot: $scope.movie.plot,
            year: $scope.movie.year

        }
        $scope.movies.push(new_movie);
    }

    $scope.selectMovie = function (movie)
    {
        $scope.movie = movie;
    }

}


);

























