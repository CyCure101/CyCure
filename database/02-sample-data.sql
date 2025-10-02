
-- Sample data for CyCure Database - MySQL Version
-- Simple sample data matching the basic schema

INSERT INTO users (username, password, userlevel) VALUES
('admin', 'password123', 3),
('teacher', 'password123', 2),
('student1', 'password123', 1),
('student2', 'password123', 1);

INSERT INTO employees (userid) VALUES
(1), -- admin
(2), -- teacher
(3), -- student1
(4); -- student2

-- Insert sample questions
INSERT INTO questions (question, questionType) VALUES
('What is cybersecurity?', 1), #1 = IT frågor
('What is a firewall?', 2), #2 = Säkerhetsfrågor
('What is encryption?', 3); #3 = kundtjänstfrågor

-- Insert sample answers for each question
-- Question 1: What is cybersecurity?
INSERT INTO answers (questionsid, answer) VALUES
(1, 'Protection of digital systems'),
(1, 'Making computers faster'),
(1, 'Reducing internet costs'),
(1, 'Increasing storage');

-- Question 2: What is a firewall?
INSERT INTO answers (questionsid, answer) VALUES
(2, 'Network security device'),
(2, 'Computer cooling system'),
(2, 'Internet speed booster'),
(2, 'Storage device');

-- Question 3: What is encryption?
INSERT INTO answers (questionsid, answer) VALUES
(3, 'Converting data to secure code'),
(3, 'Deleting files permanently'),
(3, 'Compressing files'),
(3, 'Backing up data');

