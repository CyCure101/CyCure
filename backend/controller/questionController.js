const questionService = require('../services/questionService');

exports.getQuestions = (async(req, res) => {
    try {
        const questions = await questionService.getQuestions();
        res.json({questions});
    }catch(error){
        return res.status(500).json({
            error: error.message
        });
    }
});
