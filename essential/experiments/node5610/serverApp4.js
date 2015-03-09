var request = require("request");
var cheerio = require("cheerio");



request('https://news.ycombinator.com', function (error, response, html) {
    if (!error && response.statusCode == 200)  // status code 200 means that the request has been succeeded without an error
    {
        var $ = cheerio.load(html);
        $('span.comhead').each(function (i, element)  // selecting the span tag of the html doc with class as 'comhead' then iterating over them
        {
            var a = $(this).prev(); //looking at the DOM, we want the 'a' tag above the above span tag extracted, which can be found by 'prev()' 
            console.log(a.text());
        });
    }
});

