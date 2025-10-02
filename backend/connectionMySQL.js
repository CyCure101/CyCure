const mysql = require('mysql2');

const connectionMySQL = mysql.createConnection({
    host: 'localhost',
    user: 'user',
    password: 'user',
    database: 'CyCure101',
    port: 3306
});

module.exports = connectionMySQL;
