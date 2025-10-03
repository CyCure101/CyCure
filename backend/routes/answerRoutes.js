const express = require('express');
const router = express.Router();
const answerController = require('../controller/answerController');

router.get('/api/answers', answerController.getAnswers);
router.get('/api/answers/:id', answerController.getAnswer);
router.post('/api/answers', answerController.createAnswer);
router.put('/api/answers', answerController.updateAnswer);
router.delete('/api/answers/:id', answerController.deleteAnswer);

module.exports = router;
