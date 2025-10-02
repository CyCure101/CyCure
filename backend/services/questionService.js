const connection = require('../connectionMySQL');

// Hämta alla frågor
function getQuestions() {
    return new Promise((resolve, reject) => {
        const sql = 'SELECT * FROM questions';
        connection.query(sql, (err, rows) => {
            if (err) reject(err);
            else resolve(rows);
        });
    });
}

// Hämta en fråga med ID
function getQuestion(id) {
    return new Promise((resolve, reject) => {
        const sql = 'SELECT * FROM questions WHERE questionsid = ?';
        connection.query(sql, [id], (err, rows) => {
            if (err) reject(err);
            else resolve(rows[0]);
        });
    });
}

// Skapa en ny fråga
function createQuestion(question, questionType) {
    return new Promise((resolve, reject) => {
        const sql = 'INSERT INTO questions (question, questionType) VALUES (?, ?)';
        connection.query(sql, [question, questionType], (err, result) => {
            if (err) reject(err);
            else resolve(result.insertId);
        });
    });
}

// Uppdatera fråga
function updateQuestion(id, question, questionType) {
    return new Promise((resolve, reject) => {
        const sql = 'UPDATE questions SET question = ?, questionType = ? WHERE questionsid = ?';
        connection.query(sql, [question, questionType, id], (err, result) => {
            if (err) reject(err);
            else resolve(result);
        });
    });
}

// Radera fråga
function deleteQuestion(id) {
    return new Promise((resolve, reject) => {
        const sql = 'DELETE FROM questions WHERE questionsid = ?';
        connection.query(sql, [id], (err, result) => {
            if (err) reject(err);
            else resolve(result);
        });
    });
}

module.exports = {
    getQuestions,
    getQuestion,
    createQuestion,
    updateQuestion,
    deleteQuestion
};
