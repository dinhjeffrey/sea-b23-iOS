var express = require('ßess');
var http = require('http');
var app = express();


app.get('/',function(req,res)
{
    res.send("Route path at base address");
});

app.get('/users',function(req,res)
{
	res.send("Maybe here we would query our database for all users and send it back in a JSON");
});

app.get('/user/:id',function(req,res)
{
	res.send("Here we could pass back the user info JSON for user with id " + req.params.id);
});



var server = http.createServer(app)

server.listen(3000, function(){
  console.log('Express server listening on port 3000');
});

