app.factory('MovieService', function MovieService($http) {

    var favouriteMovies = [];
    var searchMovies = function (searchByTitle, callback) {

        var title = searchByTitle;
        $http.jsonp("http://www.myapifilms.com/imdb?title= " + title + "&format=JSONP&aka=0&business=0&seasons=0&seasonYear=0&technical=0&filter=N&exactFilter=0&limit=10&lang=en-us&actors=N&biography=0&trailer=0&uniqueName=0&filmography=0&bornDied=0&starSign=0&actorActress=0&actorTrivia=0&movieTrivia=0&awards=0&moviePhotos=N&movieVideos=N&callback=JSON_CALLBACK")
        .success(callback);
    }

    var addToFavourites = function (movie) {
        favouriteMovies.push(movie);
    }

    var getFavourites = function()
    {
        return favouriteMovies;
    }


  /*  var getTitle = function(id)
    {
        $http.jsonp("http://www.myapifilms.com/imdb?format=JSONP&idIMDB=" + id + "&callback=JSON_CALLBACK")
            .success(function (movie) {
                alert("hi")
                //return movie
            });
 */      
    



  
    return {  // don't created { on a new line if its on new line it means return immediately, else it means first create this obj then return
        search: searchMovies,
        addToFavourites: addToFavourites,
        getFavourites: getFavourites
       // getTitle : getTitle
    }
    
});

