var mongoose = require('mongoose');
mongoose.connect('mongodb://localhost/practice');
var express = require('express');
var app = express();

app.use(express.static(__dirname + '/public'));

var WebsiteSchema = new mongoose.Schema({

    name: String,
    url: String,
    created: { type: Date, default: Date.now() }
});

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


app.listen(3000);

/*
var WebsiteSchema = new mongoose.Schema({
    
    name: String,
    url: String,
    created: {type: Date , default: Date.now()}
});

var Website = mongoose.model('Website', WebsiteSchema);


var website3 = new Website({
    name: "website 3",
    url: "www.website3.com"
});


var website4 = new Website({
    name: "website 4",
    url: "www.website4.com"
});

var website5 = new Website({
    name: "website 5",
    url: "www.website5.com"
});

var website6 = new Website({
    name: "website 6",
    url: "www.website6.com"
});

website3.save();
website4.save();
website5.save();
website6.save();





Website.remove({ _id: "5511cd5ff7946bc82de87b35" }, function () {
});


Website.find(function (err, docs) {
    console.log(docs);
});
 

 */