var mysql      = require('mysql');
var db = mysql.createConnection({
  host     : 'localhost',
  user     : 'admin',
  password : 'admin',
  database : 'ci',
  charset : 'utf8'
});

module.exports = db;