const connection = require('../connectionMySQL');

// Hämta alla users
function getUsers() {
    return new Promise((resolve, reject) => {
        const sql = 'SELECT userid, username, userlevel FROM users';
        connection.query(sql, (err, rows) => {
            if (err) reject(err);
            else resolve(rows);
        });
    });
}

// Hämta en user via id
function getUser(id) {
    return new Promise((resolve, reject) => {
        const sql = 'SELECT userid, username, userlevel FROM users WHERE userid = ?';
        connection.query(sql, [id], (err, rows) => {
            if (err) reject(err);
            else resolve(rows[0]);
        });
    });
}

// Skapa en user
function createUser(username, password, userlevel) {
    return new Promise((resolve, reject) => {
        const sql = 'INSERT INTO users (username, password, userlevel) VALUES (?, ?, ?)';
        connection.query(sql, [username, password, userlevel], (err, result) => {
            if (err) reject(err);
            else resolve(result.insertId);
        });
    });
}

// Uppdatera user
function updateUser(id, username, password, userlevel) {
    return new Promise((resolve, reject) => {
        const sql = 'UPDATE users SET username = ?, password = ?, userlevel = ? WHERE userid = ?';
        connection.query(sql, [username, password, userlevel, id], (err, result) => {
            if (err) reject(err);
            else resolve(result);
        });
    });
}

// Radera user
function deleteUser(id) {
    return new Promise((resolve, reject) => {
        const sql = 'DELETE FROM users WHERE userid = ?';
        connection.query(sql, [id], (err, result) => {
            if (err) reject(err);
            else resolve(result);
        });
    });
}

module.exports = {
    getUsers,
    getUser,
    createUser,
    updateUser,
    deleteUser
};
