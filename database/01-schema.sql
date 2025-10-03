-- Users table (innehåller både admins och vanliga användare)
CREATE TABLE users
(
    userid    INT AUTO_INCREMENT PRIMARY KEY,
    username  VARCHAR(50)  NOT NULL,
    password  VARCHAR(255) NOT NULL,
    userlevel INT          NOT NULL CHECK (userlevel IN (1, 2)) -- 1=user, 2=admin
);

-- Questions table
CREATE TABLE questions
(
    questionsid  INT AUTO_INCREMENT PRIMARY KEY,
    question     TEXT NOT NULL,
    questionType INT
);

-- Answers table (varje fråga har 4 svarsalternativ)
CREATE TABLE answers
(
    answersid   INT AUTO_INCREMENT PRIMARY KEY,
    questionsid INT     NOT NULL,
    answer      TEXT    NOT NULL,
    isCorrect   BOOLEAN NOT NULL DEFAULT 0, -- 0 = fel, 1 = rätt

    CONSTRAINT fk_answer_question
        FOREIGN KEY (questionsid)
            REFERENCES questions (questionsid)
            ON DELETE CASCADE
);
