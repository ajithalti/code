var mysql      = require('mysql');
var connection = mysql.createConnection({
  host     : 'db4free.net',
  user     : 'altiwap',
  password : 'AJAY.ALTI',
  database : 'altiwap',
	port:'3306'
});
lat path=require('path');
let express=require('express');
connection.connect();

connection.query('SELECT 1 + 1 AS solution', function (error, results, fields) {
  if (error) throw error;
  console.log('The solution is: ', results[0].solution);
});

connection.end();
let app=express();
app.get('/',(req,res)=>{
	res.send("Hello");
});
/*
app.get('/', function(req, res) {
    res.sendFile(path.join(__dirname + '/index.html'));
});
*/
