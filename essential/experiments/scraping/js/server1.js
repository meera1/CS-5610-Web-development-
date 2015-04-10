var express = require('express');
var app = express();
var bodyParser = require('body-parser');
var multer = require('multer');
var cheerio = require("cheerio");
var request = require("request");
var mongoose = require('mongoose');
mongoose.connect('mongodb://localhost/practice1');


app.use(bodyParser.json()); // for parsing application/json
app.use(bodyParser.urlencoded({ extended: true })); // for parsing application/x-www-form-urlencoded
app.use(multer()); // for parsing multipart/form-data

app.use(express.static(__dirname + '/scrape1.html'));

var name; // name given by the user to that url

app.post('/api/scrap', function (req, res) {

     name = req.body.name;
    var link = req.body.link;
   
    var parsedResults = [];

    request({
        url: link,
    }, function (error, response, html) {
        var $ = cheerio.load(html);
        
        
        $('p').each(function () {

            var data = $(this).text();

           
            var jsonData = {

                dataUrl: link,
                tagData : data
            };

            parsedResults.push(jsonData);
            

        });

        
        res.send(parsedResults);
    });

});

