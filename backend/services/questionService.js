const connection = require('../connectionMySQL');

function getQuestions() {
    return new Promise((resolve, reject) => {
        connection.query('SELECT * FROM questions', (err, rows) => {
            if (err) reject(err);
            else resolve(rows);
        });
    });
}

module.exports = { getQuestions };
