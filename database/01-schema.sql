-- Users table now includes both regular users and admins via userlevel
-- userlevel: 1 = user, 2 = admin (extend as needed)
CREATE TABLE users (
    userid INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL,
    userlevel INT NOT NULL
);

-- Removed separate admin table; use users.userlevel to distinguish roles

CREATE TABLE questions (
    questionsid INT AUTO_INCREMENT PRIMARY KEY,
    question TEXT NOT NULL,
    questionType INT
);

CREATE TABLE answers (
    answersid INT AUTO_INCREMENT PRIMARY KEY,
    categoryid INT NOT NULL,
    answer TEXT NOT NULL,
    
    CONSTRAINT fk_answer_question 
        FOREIGN KEY (categoryid)
        REFERENCES questions(questionsid) 
        ON DELETE CASCADE
);