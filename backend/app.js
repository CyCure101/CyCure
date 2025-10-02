const express = require('express');
const cors = require('cors');

const app = express();
const port = 3000;

app.use(express.json());
app.use(cors());

// Routes
// const userRoutes = require('./routes/userRoutes');
const questionRoutes = require('./routes/questionRoutes');
// const answerRoutes = require('./routes/answerRoutes');

// app.use(userRoutes);
app.use(questionRoutes);
// app.use(answerRoutes);

app.listen(port, () => console.log(`Server running on http://localhost:${port}`));
