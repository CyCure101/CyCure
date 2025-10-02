const questionService = require('../services/questionService');

// Hämta alla frågor
exports.getQuestions = async (req, res) => {
    try {
        const questions = await questionService.getQuestions();
        res.json({ success: true, questions });
    } catch (error) {
        res.status(500).json({ success: false, error: error.message });
    }
};

// Hämta en fråga
exports.getQuestion = async (req, res) => {
    try {
        const { id } = req.params;
        const question = await questionService.getQuestion(id);

        if (!question) {
            return res.status(404).json({ success: false, error: 'Frågan hittades inte' });
        }

        res.json({ success: true, question });
    } catch (error) {
        res.status(500).json({ success: false, error: error.message });
    }
};

// Skapa en ny fråga
exports.createQuestion = async (req, res) => {
    try {
        const { question, questionType } = req.body;

        if (!question) {
            return res.status(400).json({ success: false, error: 'Du måste ange en fråga' });
        }

        const id = await questionService.createQuestion(question, questionType || null);

        res.status(201).json({ success: true, message: 'Frågan skapades', id });
    } catch (error) {
        res.status(500).json({ success: false, error: error.message });
    }
};

// Uppdatera en fråga
exports.updateQuestion = async (req, res) => {
    try {
        const { id } = req.params;
        const { question, questionType } = req.body;

        await questionService.updateQuestion(id, question, questionType || null);

        res.json({ success: true, message: 'Frågan uppdaterades' });
    } catch (error) {
        res.status(500).json({ success: false, error: error.message });
    }
};

// Radera en fråga
exports.deleteQuestion = async (req, res) => {
    try {
        const { id } = req.params;
        await questionService.deleteQuestion(id);

        res.json({ success: true, message: 'Frågan raderades' });
    } catch (error) {
        res.status(500).json({ success: false, error: error.message });
    }
};
