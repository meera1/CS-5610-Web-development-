$(function () {
    var param = {
        apikey: "v6cqqs9x7f6qkucu27wnsbgn"
    };
    $.ajax({
        url: "http://api.rottentomatoes.com/api/public/v1.0/movies.json?",
        data: param,
        dataType: "jsonp",
        success: function (response) {
            var movieArray = [];
            for (var i = 0; i < response.movies.length; i++) {
                var movie = response.movies[i];
                movieArray.push(movie.title);
            }

        }
    });

    $(".details").click(display);
});
function display() {
    var text = $(".titleofmovie").val();
    var param = {
        apikey: "v6cqqs9x7f6qkucu27wnsbgn",
        q: text,
        page_limit: "10"
    };
    $.ajax({
        url: "http://api.rottentomatoes.com/api/public/v1.0/movies.json?",
        data: param,
        dataType: "jsonp",
        success: function (response) {
            var ul = $(".tableforrecord");
            ul.empty();

            for (var i = 0; i < response.movies.length; i++) {
                var movie = response.movies[i];
                var name = movie.title;
                var year = movie.year;
                var duration = movie.runtime;
                var rating = movie.critics_consensus;
                var instance = $(".listofmovies .Movies:first-child").clone();
                instance.find(".title").html(name);
                instance.find(".year").html(year);
                instance.find(".duration").html(duration);
                instance.filter(".rating").html(rating);
                ul.append(instance);
            }
        }
    });
}
