var express = require('express');
var app = express();
var bodyParser = require('body-parser');
var multer = require('multer');
//var passport = require('passport');
//var LocalStrategy = require('passport-local').Strategy;
//var cookieParser = require('cookie-parser');
//var session = require('express-session');
var cheerio = require("cheerio");
var request = require("request");
var mongoose = require('mongoose');
mongoose.connect('mongodb://localhost/practice1');


app.use(bodyParser.json()); // for parsing application/json
app.use(bodyParser.urlencoded({ extended: true })); // for parsing application/x-www-form-urlencoded
app.use(multer()); // for parsing multipart/form-data
//app.use(session({
//  secret: 'this is the secret'
// resave: true,
//  saveUninitialized: true
//})); // encrypted, sign the session id with this given string only if u have this string u can use it; paswd for session id 
//app.use(cookieParser);  // parse cookie and create a map we can use 
//app.use(passport.initialize());
//app.use(passport.session()); // U NEED TO CONFIGURE PASSPORT'S SESSION AFTER U CONFIGURE EXPRESSES SESSION. THIS ORDER IS VERY IMP

app.use(express.static(__dirname + '/public'));

var name; // name given by the user to that url

app.post('/api/scrap', function (req, res) {
    //console.log(" started");
    name = req.body.name;
    var link = req.body.link;
    //console.log("from server "+ link);
    //console.log("server from " + name);
    /*
    request('http://www.google.com', function (error, response, body) {
        if (!error && response.statusCode == 200) {
            console.log(body) // Show the HTML for the Google homepage. 
        }
    })
    */
    var parsedResults = [];

    request({
        url: link,
    }, function (error, response, html) {
        //console.log("from request fun in server " + link);
        var $ = cheerio.load(html);


        $('p').each(function () {

            var data = $(this).text();

            //console.log(data);

            var jsonData = {

                dataUrl: link,
                tagData: data
            };

            parsedResults.push(jsonData);


        });

        //console.log(parsedResults);
        res.send(parsedResults);
        //var html = html; //holds the HTML fragment to be parsed. The HTML is parsed using cheerio
        //var $ = cheerio.load(html);  // result is assigned to the $ variable
        //var list = $("p"); // selects the <p> element using CSS style selectors


        //console.log($);
        //console.log(list.html()); // the list’s inner HTML is printed using the html() method
    });

    //res.json(parsedResults);
    //return parsedResults;
});