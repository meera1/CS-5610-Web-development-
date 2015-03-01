




var app = angular.module("AngularApp2", []);
app.controller("Controller2", function ($scope) {
    var movies = [ { title: "Avatar", plot: "Blue guys and humans fight", year: 2009 },
        {title: "Raaz 2", plot: "Horror movie, where the lead actress is captured by spirits", year: 2006}];

    $scope.movies = movies;

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

























