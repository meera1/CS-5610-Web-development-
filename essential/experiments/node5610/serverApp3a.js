var request = require("request");

request({
    uri: "http://www.strongroom.co.za/",
}, function (error, response, body) {
    console.log(body);
});




/*   I tried using this code but there was some error in installing the YQL 
module some kind of version issues

var YQL = require("yql");

new YQL.exec('select * from data.html.cssselect where url="http://net.tutsplus.com/" and css=".post_title a"', function (response) {
    console.log(body);
    //response consists of JSON that you can parse

});


*/