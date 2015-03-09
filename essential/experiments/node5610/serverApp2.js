var express = require('express')   //imports
var app = express() //instance of expresss

// app.use(express.static(__dirname + '/public'));


var actors = ['Harry',
'Ron',
'Malfoy'];


var actress = ['Hermoine', 'Luna', 'Parvati', 'Padma'];



app.get("/actors", function (req, res) {

    res.json(actors);
});

app.get("/actress", function (req, res) {

    res.json(actress);
});


app.listen(3000);

