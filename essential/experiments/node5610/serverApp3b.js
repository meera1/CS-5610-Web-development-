

var cheerio = require("cheerio");
var html = "<ul><li>foo</li><li>bar</li></ul>"; //holds the HTML fragment to be parsed. The HTML is parsed using cheerio
var $ = cheerio.load(html);  // result is assigned to the $ variable
var list = $("ul"); // selects the <ul> element using CSS style selectors

console.log(list.html()); // the list’s inner HTML is printed using the html() method