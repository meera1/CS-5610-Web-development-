
var express = require('express');
var app = express();
var bodyParser = require('body-parser');
var multer = require('multer');
var mongoose = require('mongoose');

app.use(express.static(__dirname + '/public'));


app.use(bodyParser.json()); // for parsing application/json
app.use(bodyParser.urlencoded({ extended: true })); // for parsing application/x-www-form-urlencoded
app.use(multer()); // for parsing multipart/form-data
mongoose.connect('mongodb://localhost/practice');


var WebsiteSchema = new mongoose.Schema({

    name: String,
    
}, {collection: 'website_pages'});

var Website = mongoose.model('Website', WebsiteSchema);






app.get('/api/website', function (req, res) {
    Website.find(function (err, docs) {
        res.json(docs);
    });

});

app.get('/api/website/:id', function (req, res) {
    Website.findById(req.params.id, function (err, doc) {
        res.json(doc);
    });

});


app.delete('/api/website/:id', function (req, res) {
   
   Website.remove({ _id: req.params.id }, function () {

        Website.find(function (err, docs) {
            res.json(docs);
        });

    });

});


app.post('/api/website/:name', function (req, res) { 
    var site1 = new Website({ name: req.params.name });
    site1.save(function () {
        Website.find(function (err, docs) {
            res.json(docs);
    });
      
        });
    
   
    });

   

//Website.find(function (err, docs) {
  //  res.json(docs);
//});



var ip = process.env.OPENSHIFT_NODEJS_IP || '127.0.0.1';
var port = process.env.OPENSHIFT_NODEJS_PORT || 3000;

app.listen(port, ip);