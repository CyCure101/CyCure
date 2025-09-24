
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
INSERT INTO questions (question) VALUES
('What is cybersecurity?'),
('What is a firewall?'),
('What is encryption?'),
('What is phishing?'),
('What is malware?');

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

-- Question 4: What is phishing?
INSERT INTO answers (questionsid, answer) VALUES
(4, 'Fraudulent email attacks'),
(4, 'Fishing for data'),
(4, 'Network scanning'),
(4, 'Password cracking');

-- Question 5: What is malware?
INSERT INTO answers (questionsid, answer) VALUES
(5, 'Malicious software'),
(5, 'Good software'),
(5, 'Operating system'),
(5, 'Web browser');
