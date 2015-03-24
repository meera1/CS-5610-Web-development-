var express = require('express');
var app = express();

app.use(express.static(__dirname + '/public'));

var bodyParser = require('body-parser');
var multer = require('multer');

app.use(bodyParser.json()); // for parsing application/json
app.use(bodyParser.urlencoded({ extended: true })); // for parsing application/x-www-form-urlencoded
app.use(multer()); // for parsing multipart/form-data


var developer = [
{ firstName: 'Alice', lastName: 'Wnoderland', apps: [
    { name: 'Word' },
    {name: 'Xcel'}
]
},
{ firstName: 'Meera', lastName: 'Udani' , apps: [
{ name: 'Pages' },
{name: 'Numbers'}
]}
]


app.get('/rest/developer', function(req, res)   // /rest or /api means it is meant to be consumed by programs not humans 
{
    res.json(developer);
})

app.get('/rest/developer/:index', function (req, res)  
{
    res.json(developer[req.params.index]);
})


app.delete('/rest/developer/:index', function(req, res)
{
    developer.splice(req.params.index, 1);
    res.json(developer);
})


app.post('/rest/developer', function(req, res)
{
    var newDev = req.body;
    developer.push(newDev);
    res.json(developer);
})



var ip = process.env.OPENSHIFT_NODEJS_IP || '127.0.0.1';
var port = process.env.OPENSHIFT_NODEJS_PORT || 3000;

app.listen(port, ip);