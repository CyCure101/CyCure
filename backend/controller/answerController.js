const answerService = require('../services/answerService');

// Hämta alla answers
exports.getAnswers = async (req, res) => {
    try {
        const answers = await answerService.getAnswers();
        res.json({answers});
    } catch (error) {
        res.status(500).json({error: error.message});
    }
};


// Hämta ett answer via ID
exports.getAnswer = async (req, res) => {
    const {id} = req.params;

    try {
        const answer = await answerService.getAnswer(id);
        res.json({answer});
    } catch (error) {
        res.status(500).json({error: error.message});
    }
};

// Skapa ett nytt answer
exports.createAnswer = async (req, res) => {
    const {questionsid, answer} = req.body;

    if (!questionsid || !answer) {
        return res.status(400).json({
            success: false,
            error: 'Du måste ange questionsid och answer.'
        });
    }

    try {
        const id = await answerService.createAnswer(questionsid, answer);
        res.status(201).json({
            success: true,
            message: 'Nytt answer har skapats!',
            id
        });
    } catch (error) {
        res.status(500).json({success: false, error: error.message});
    }
};


// Uppdatera ett answer
exports.updateAnswer = async (req, res) => {
    const {answersid, questionsid, answer} = req.body;

    if (!answersid) {
        return res.status(400).json({
            success: false,
            error: 'Du måste ange ett answersid för att uppdatera.'
        });
    }

    try {
        await answerService.updateAnswer(answersid, questionsid, answer);
        res.status(200).json({
            success: true,
            message: 'Answer har uppdaterats!'
        });
    } catch (error) {
        res.status(500).json({error: error.message});
    }
};

// Ta bort ett answer
exports.deleteAnswer = async (req, res) => {
    const { id } = req.params;

    if (!id) {
        return res.status(400).json({
            success: false,
            error: 'Du måste ange ett ID för att radera answer.'
        });
    }

    try {
        await answerService.deleteAnswer(id);
        res.status(200).json({
            success: true,
            message: 'Answer har raderats!'
        });
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

