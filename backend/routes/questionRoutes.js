const express = require('express');
const router = express.Router();
const questionController = require('../controller/questionController');

router.get('/api/questions', questionController.getQuestions);
// router.get('/api/books/:id', bookController.getBook);
// router.post('/api/books', bookController.createBook);
// router.put('/api/books', bookController.updateBook);
// router.delete('/api/books/:id', bookController.deleteBook);

module.exports = router;
