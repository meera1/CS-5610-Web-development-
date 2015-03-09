var express = require('express')   //imports
var app = express() //instance of expresss


app.get('/', function (req, res) {
    res.send('Hello World')
});


app.get('/bye', function (req, res) {
    res.send('Good Bye World')
});


app.listen(3000)