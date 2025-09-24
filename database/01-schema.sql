
CREATE TABLE users (
    userid INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL,
    userlevel INT NOT NULL
);


CREATE TABLE employees (
    employeeid INT AUTO_INCREMENT PRIMARY KEY,
    userid INT NOT NULL,
    
    CONSTRAINT fk_employee_user 
        FOREIGN KEY (userid) 
        REFERENCES users(userid) 
        ON DELETE CASCADE
);

CREATE TABLE questions (
    questionsid INT AUTO_INCREMENT PRIMARY KEY,
    question TEXT NOT NULL
);


CREATE TABLE answers (
    answersid INT AUTO_INCREMENT PRIMARY KEY,
    questionsid INT NOT NULL,
    answer TEXT NOT NULL,
    
    CONSTRAINT fk_answer_question 
        FOREIGN KEY (questionsid) 
        REFERENCES questions(questionsid) 
        ON DELETE CASCADE
);
