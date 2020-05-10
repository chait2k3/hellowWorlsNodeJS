var express = require('express');
var app = express();

// define routes here..
app.get('/', function (req, res) {
    res.send('<html><body><h1>Hello World</h1></body></html>');
});

var port = process.env.PORT || '3000';

app.listen(port, function () {
    console.log('Node server is running..');
});
