*{
    font-family: cursive;
color:white;
}
body {
    background-image: url("../images/patterned_pale_orange_background.jpg");
}
       
    #container {
    width: 900px;
    height: auto;
    margin: 0 auto;
    border: double;
        background-color: black;
        border-radius: 25px;
        opacity: 0.7;
        /*For IE : this is required !!! */
        filter: alpha(opacity=60);
    }
   
input[type="text"]{
    color:black;
    padding: 10px;
    border: solid 5px #c9c9c9;
    box-shadow: inset 0 0 0 1px #707070;
    transition: box-shadow 0.3s, border 0.3s;
}
input[type="text"]:focus,
input[type="text"].focus {
    border: solid 5px #969696;
}
button {
    -moz-box-shadow:inset 0px 1px 3px 0px #91b8b3;
    -webkit-box-shadow:inset 0px 1px 3px 0px #91b8b3;
    box-shadow:inset 0px 1px 3px 0px #91b8b3;
    background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #768d87), color-stop(1, #6c7c7c));
    background:-moz-linear-gradient(top, #768d87 5%, #6c7c7c 100%);
    background:-webkit-linear-gradient(top, #768d87 5%, #6c7c7c 100%);
    background:-o-linear-gradient(top, #768d87 5%, #6c7c7c 100%);
    background:-ms-linear-gradient(top, #768d87 5%, #6c7c7c 100%);
    background:linear-gradient(to bottom, #768d87 5%, #6c7c7c 100%);
    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#768d87', endColorstr='#6c7c7c',GradientType=0);
    background-color:#768d87;
    -moz-border-radius:5px;
    -webkit-border-radius:5px;
    border-radius:5px;
    border:1px solid #566963;
    display:inline-block;
    cursor:pointer;
    color:#ffffff;
    font-family:arial;
    font-size:15px;
    font-weight:bold;
    padding:11px 23px;
    
    text-shadow:0px -1px 0px #2b665e;
}
button:hover {
    background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #6c7c7c), color-stop(1, #768d87));
    background:-moz-linear-gradient(top, #6c7c7c 5%, #768d87 100%);
    background:-webkit-linear-gradient(top, #6c7c7c 5%, #768d87 100%);
    background:-o-linear-gradient(top, #6c7c7c 5%, #768d87 100%);
    background:-ms-linear-gradient(top, #6c7c7c 5%, #768d87 100%);
    background:linear-gradient(to bottom, #6c7c7c 5%, #768d87 100%);
    
    background-color:#6c7c7c;
}
button:active {
    position:relative;
    top:1px;
}
   
     @media only screen and (max-width: 1100px) {


         * {
             font-size: 15px;
     }

           #container {
    width: 90%;
           }
}
 