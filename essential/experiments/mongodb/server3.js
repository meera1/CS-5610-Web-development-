var mongoose = require('mongoose');
mongoose.connect('mongodb://localhost/practice');
var express = require('express');
var app = express();

app.use(express.static(__dirname + '/public'));

var FormSchema = new mongoose.Schema({
    name: String,
    DOB: Date

}, {collection: "form"});


var Form = mongoose.model("Form", FormSchema);



app.get('/api/form', function (req, res) {
    Form.find(function (err, data) {
        res.json(data);
    });
});

app.get('/api/form/:id', function (req, res) {
    Form.findById(req.params.id, function (err, data) {
        res.json(data);
        
    });
});

    

app.listen(3000);








