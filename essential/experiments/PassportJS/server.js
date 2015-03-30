var express = require('express');
var app = express();
var bodyParser = require('body-parser');
var multer = require('multer');
var passport = require('passport')
var LocalStrategy = require('passport-local').Strategy;
var cookieParser = require('cookie-parser')
var session = require('express-session');



app.use(bodyParser.json()); // for parsing application/json
app.use(bodyParser.urlencoded({ extended: true })); // for parsing application/x-www-form-urlencoded
app.use(multer()); // for parsing multipart/form-data
app.use(session({ secret: 'this is the secret' }));
app.use(cookieParser());
app.use(passport.initialize());
app.use(passport.session());



app.use(express.static(__dirname + '/public'));


var users = [{ username: 'alice', password: 'alice' },
    { username: 'bob', password: 'bob' }
];

passport.use(new LocalStrategy(
    function(username, password, done)
    {
        for (var u in users)
        {
            if (username == users[u].username && password == users[u].password)
            { return done(null, users[u]); }
        }
        return done(null, false, { message: 'Unable to login' });
       
    }

    ));


passport.serializeUser(function (user, done) {
    done(null, user);
});

passport.deserializeUser(function (user, done) {
    done(null, user);
});


app.post("/login", passport.authenticate('local'), function (req, res) {
    var user = req.user ;
    console.log(user);
    res.json(user);
});

var auth = function(req, res, next)
{
    if (!req.isAuthenticated())
        res.send(401);
    else
        next();
}

app.get("/profile", auth, function (req, res) {
    var user = req.body;
    res.json(user);
});



app.get("/rest/user", auth, function (req, res) {
    res.json(users);
});

app.listen(3000);