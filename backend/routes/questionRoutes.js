const express = require('express');
const router = express.Router();
const questionController = require('../controller/questionController');

router.get('/api/questions', questionController.getQuestions);
router.get('/api/questions/:id', questionController.getQuestion);
router.post('/api/questions', questionController.createQuestion);
router.put('/api/questions/:id', questionController.updateQuestion);
router.delete('/api/questions/:id', questionController.deleteQuestion);

module.exports = router;
