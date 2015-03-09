var request = require("request");
var cheerio = require("cheerio");



request('https://news.ycombinator.com', function (error, response, html) {
    if (!error && response.statusCode == 200)  // status code 200 means that the request has been succeeded without an error
    {
        var $ = cheerio.load(html);
        var items = [];  // to store all the items in a array
        $('span.comhead').each(function (i, element)  // selecting the span tag of the html doc with class as 'comhead' then iterating over them
        {
            var a = $(this).prev(); //looking at the DOM, we want the 'a' tag above the abov espan tag extracted, which can be found by 'prev()' 
            var url = a.attr('href'); // url of the item
            var title = a.text(); // title of the item
            var rank = a.parent().parent().children().text();  // path to extract the rank of an item
            var sub = a.parent().parent().next().children('.subtext').children(); // path to extract the sub items of an item like comments, username and points
            var points = $(sub).eq(0).text(); // path to extract the points of subitem an item
            var username = $(sub).eq(1).text(); // path to extract the username of subitem an item
            var comments = $(sub).eq(3).text(); // path to extract the comments of subitem an item
            console.log(points);
             var a = {
                 url: url,
                 title: title,
                 points: parseInt(points),
                 username: username,
                 comments: parseInt(comments)
             };
             items.push(a);  // adding each item in the items array
 
         });
         console.log(items); 

        }
    
    });

