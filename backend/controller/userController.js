const userService = require('../services/userService');

// Hämta alla
exports.getUsers = async (req, res) => {
    try {
        const users = await userService.getUsers();
        res.json({ success: true, users });
    } catch (error) {
        res.status(500).json({ success: false, error: error.message });
    }
};

// Hämta en
exports.getUser = async (req, res) => {
    try {
        const { id } = req.params;
        const user = await userService.getUser(id);

        if (!user) {
            return res.status(404).json({ success: false, error: 'Användaren hittades inte' });
        }

        res.json({ success: true, user });
    } catch (error) {
        res.status(500).json({ success: false, error: error.message });
    }
};

// Skapa
exports.createUser = async (req, res) => {
    try {
        const { username, password, userlevel } = req.body;

        if (!username || !password || !userlevel) {
            return res.status(400).json({ success: false, error: 'Alla fält måste anges' });
        }

        const id = await userService.createUser(username, password, userlevel);

        res.status(201).json({ success: true, message: 'Användare skapad', id });
    } catch (error) {
        res.status(500).json({ success: false, error: error.message });
    }
};

// Uppdatera
exports.updateUser = async (req, res) => {
    try {
        const { id } = req.params;
        const { username, password, userlevel } = req.body;

        await userService.updateUser(id, username, password, userlevel);

        res.json({ success: true, message: 'Användare uppdaterad' });
    } catch (error) {
        res.status(500).json({ success: false, error: error.message });
    }
};

// Radera
exports.deleteUser = async (req, res) => {
    try {
        const { id } = req.params;
        await userService.deleteUser(id);

        res.json({ success: true, message: 'Användare raderad' });
    } catch (error) {
        res.status(500).json({ success: false, error: error.message });
    }
};
