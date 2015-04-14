var express = require('express');
var app = express();
var bodyParser = require('body-parser');
var multer = require('multer');
var passport = require('passport');
var LocalStrategy = require('passport-local').Strategy;
var cookieParser = require('cookie-parser');
var session = require('express-session');



app.use(bodyParser.json()); // for parsing application/json
app.use(bodyParser.urlencoded({ extended: true })); // for parsing application/x-www-form-urlencoded
app.use(multer()); // for parsing multipart/form-data
app.use(session({
    secret: 'this is the secret'
   // resave: true,
  //  saveUninitialized: true
})); // encrypted, sign the session id with this given string only if u have this string u can use it; paswd for session id 
app.use(cookieParser);  // parse cookie and create a map we can use 
app.use(passport.initialize());
app.use(passport.session()); // U NEED TO CONFIGURE PASSPORT'S SESSION AFTER U CONFIGURE EXPRESSES SESSION. THIS ORDER IS VERY IMP

app.use(express.static(__dirname + '/public'));


var users =
    [{ username: 'alice', password: 'alice', firstName: 'Alice', lastName: 'Wonderland', roles: ['admin', 'teacher'] },
    { username: 'charlie', password: 'charlie', firstName: 'Charlie', lastName: 'Wonderland', roles: ['teacher'] },
    { username: 'meera', password: 'meera', firstName: 'Meera', lastName: 'Udani', roles: ['student'] }


    ];



passport.use(new LocalStrategy(
    function(username, password, done)
    {

        for(var u in users)
        {
            if(username == users[u].uesrname && password == users[u].password)
            {
                return done(null, users[u]);
            }

        }
        return done(null, false, { message: 'Unable to login' });
    }
        ));


passport.serializeUser(function (user, done) {  // to encrypt
    done(null, user);
     
});

passport.deserializeUser(function (user, done) {  // to decrypt
    done(null, user);

});




// passport.authenticate('local' /*strategy like facebook, google, local,etc */),
app.post("/login",passport.authenticate('local'), function (req, res) {
    console.log("in server")
    var user = req.user;
    console.log(user);
    res.json(user);

});



app.listen(3000);