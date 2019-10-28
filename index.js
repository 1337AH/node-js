var express = require('express');
var app = express();
var exports = module.exports = {};

app.get('/', function(req, res){
  res.send('Hello World');
});

var server = app.listen(8080, function(){
  console.log('Magic is happening on port 8080');
});




