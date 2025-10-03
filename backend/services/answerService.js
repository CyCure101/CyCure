const connection = require('../connectionMySQL');

// Hämta alla answers
function getAnswers({limit = 50, offset = 0} = {}) {
    return new Promise((resolve, reject) => {
        const sql = 'SELECT answersid, questionsid, answer FROM answers LIMIT ? OFFSET ?';
        connection.query(sql, [Number(limit), Number(offset)], (err, rows) => {
            if (err) return reject(err);
            resolve(rows);
        });
    });
}

//Hämta ett specifikt answers ID
function getAnswer(id) {
    return new Promise((resolve, reject) => {
        const sql = 'SELECT answersid, questionsid, answer FROM answers WHERE answersid = ?';
        connection.query(sql, [id], (err, rows) => {
            if (err) return reject(err);
            resolve(rows[0]);
        });
    });
}

// Skapa nytt answer
function createAnswer(questionsid, answer) {
    return new Promise((resolve, reject) => {
        const sql = 'INSERT INTO answers (questionsid, answer) VALUES (?, ?)';
        connection.query(sql, [questionsid, answer], (err, result) => {
            if (err) return reject(err);
            resolve(result.insertId);
        });
    });
}

// Uppdatera ett answer
function updateAnswer(answersid, questionsid, answer) {
    return new Promise((resolve, reject) => {
        const sql = 'UPDATE answers SET questionsid = ?, answer = ? WHERE answersid = ?';
        connection.query(sql, [questionsid, answer, answersid], (err, result) => {
            if (err) return reject(err);
            resolve(result);
        });
    });
}

// Ta bort ett answer
function deleteAnswer(id) {
    return new Promise((resolve, reject) => {
        const sql = 'DELETE FROM answers WHERE answersid = ?';
        connection.query(sql, [id], (err, result) => {
            if (err) return reject(err);
            resolve(result);
        });
    });
}

module.exports = {
    getAnswers,
    getAnswer,
    createAnswer,
    updateAnswer,
    deleteAnswer
};
