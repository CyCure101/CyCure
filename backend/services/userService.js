const connection = require('../connectionMySQL');

function getUsers() {
    return new Promise((resolve, reject) => {
        connection.query('SELECT * FROM users', (err, rows) => {
            if (err) reject(err);
            else resolve(rows);
        });
    });
}

function createUser(username, password, userlevel) {
    return new Promise((resolve, reject) => {
        const sql = 'INSERT INTO users (username, password, userlevel) VALUES (?, ?, ?)';
        connection.query(sql, [username, password, userlevel], (err) => {
            if (err) reject(err);
            else resolve();
        });
    });
}

module.exports = { getUsers, createUser };
