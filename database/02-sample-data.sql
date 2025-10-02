
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
('Vilken typ av attack utnyttjar svagheter i en webbapplikations databas?',1),
('Vilken funktion har en “load balancer” i ett nätverk?',1),
('Vad innebär “sandboxing” i IT-säkerhet?',1),
('Vilken protokollkombination används oftast för säkra e-postöverföringar?', 1),
('Vilket av följande är ett exempel på multifaktorautentisering?', 1),
('Vad är skillnaden mellan symmetrisk och asymmetrisk kryptering?',1),
('Vilken typ av malware kan ta kontroll över en dator och kräva betalning?',1),
('Vilken är den mest kritiska åtgärden vid en misstänkt dataläcka?',2),
('Vad är en “zero-day exploit”?',2),
('Vilket säkerhetslager fokuserar på att skydda människors beteende snarare än teknik?',2),
('Vilken metod används ofta för att förebygga insiderhot?',2),
('Hur kan en organisation testa sin IT-säkerhet proaktivt?',2),
('Vilket scenario beskriver en “man-in-the-middle”-attack?',2),
('Vilken av följande är ett exempel på en säkerhetsprincip?',2),
('En kund är irriterad över en upprepad felaktighet. Hur hanterar du situationen bäst?',3),
('Vad innebär “kundresan” (customer journey) i kundservice?',3),
('Vilken metod hjälper bäst att förebygga missnöje innan det uppstår?',3),
('När är det lämpligt att eskalera ett ärende till specialistnivå?',3),
('Hur kan kunddata bäst användas i kundtjänst?',3),
('Vilken teknik kan förbättra responstiden i kundtjänst?',3),
('Vad är ett tecken på effektiv kundtjänst?',3);

-- Insert sample answers for each question
INSERT INTO answers (questionsid, answer) VALUES
-- 1 Vilken typ av attack utnyttjar svagheter i en webbapplikations databas?
( 1,'SQL Injection'),
( 1,'Cross-Site Scripting (XSS)'),
( 1,'Denial of Service (DoS)'),
( 1,'Phishing');

-- 2 Vilken funktion har en “load balancer” i ett nätverk?
INSERT INTO answers (questionsid, answer) VALUES
( 1,'Fördelar nätverkstrafik över flera servrar'),
( 1,'Ökar hastigheten på internetanslutningen'),
( 1,'Skyddar mot skadlig programvara'),
( 1,'Övervakar nätverkssäkerhet');

-- 3 Vad innebär “sandboxing” i IT-säkerhet?
INSERT INTO answers (questionsid, answer) VALUES
( 1,'Isolering av program för att förhindra skadlig påverkan'),
(1, 'Snabba upp systemet'),
(1, 'Öka lagringskapaciteten'),
(1, 'Förbättra nätverkshastigheten');

-- 4 Vilken protokollkombination används oftast för säkra e-postöverföringar?
INSERT INTO answers (questionsid, answer) VALUES
( 1,'SMTP + TLS'),
( 1,'FTP + SSL'),
( 1,'HTTP + SSL'),
( 1,'IMAP + TLS');

-- 5 Vilket av följande är ett exempel på multifaktorautentisering?
INSERT INTO answers (questionsid, answer) VALUES
( 1,'Lösenord + SMS-kod'),
( 1,'Två olika lösenord'),
( 1,'E-postadress + Lösenord'),
( 1,'Användarnamn + Lösenord');

-- 6 Vad är skillnaden mellan symmetrisk och asymmetrisk kryptering?
INSERT INTO answers (questionsid, answer) VALUES
( 1,'Symmetrisk använder samma nyckel för kryptering och dekryptering, asymmetrisk använder ett par nycklar'),
( 1,'Symmetrisk är snabbare än asymmetrisk'),
( 1,'Asymmetrisk är säkrare än symmetrisk'),
( 1,'Symmetrisk används för små datamängder, asymmetrisk för stora datamängder');

-- 7 Vilken typ av malware kan ta kontroll över en dator och kräva betalning?
INSERT INTO answers (questionsid, answer) VALUES
( 1,'Ransomware'),
( 1,'Spyware'),
( 1,'Adware'),
( 1,'Trojan');

-- 8 Vilken är den mest kritiska åtgärden vid en misstänkt dataläcka?
INSERT INTO answers (questionsid, answer) VALUES
( 2,'Isolera de drabbade systemen'),
( 2,'Informera alla anställda'),
( 2,'Byta alla lösenord'),
( 2,'Kontakta media');

-- 9 Vad är en “zero-day exploit”?
INSERT INTO answers (questionsid, answer) VALUES
( 2,'En sårbarhet som är okänd för programvarutillverkaren'),
( 2,'En attack som sker på en söndag'),
( 2,'En typ av malware som sprids via e-post'),
( 2,'En säkerhetsåtgärd som används för att skydda data');

-- 10 Vilket säkerhetslager fokuserar på att skydda människors beteende snarare än teknik?
INSERT INTO answers (questionsid, answer) VALUES
( 2,'Mänskligt lager'),
( 2,'Brandvägg'),
( 2,'Kryptering'),
( 2,'Antivirus');

-- 11 Vilken metod används ofta för att förebygga insiderhot?
INSERT INTO answers (questionsid, answer) VALUES
(2,'Rollbaserad åtkomstkontroll'),
(2,'Att byta nätverk varje dag'),
(2,'Använda starka lösenord'),
(2,'Installera antivirusprogram');

-- 12 Hur kan en organisation testa sin IT-säkerhet proaktivt?
INSERT INTO answers (questionsid, answer) VALUES
(2,'Genom att genomföra penetrationstester'),
(2,'Genom att byta alla lösenord regelbundet'),
(2,'Genom att installera fler brandväggar'),
(2,'Genom att utbilda anställda i IT-säkerhet');

-- 13 Vilket scenario beskriver en “man-in-the-middle”-attack?
INSERT INTO answers (questionsid, answer) VALUES
(2,'En angripare avlyssnar och eventuellt ändrar kommunikationen mellan två parter utan deras vetskap'),
(2,'En användare får ett e-postmeddelande med skadlig kod'),
(2,'En dator infekteras med ransomware'),
(2,'En webbplats blir överbelastad av trafik från många källor');

-- 14 Vilken av följande är ett exempel på en säkerhetsprincip?
INSERT INTO answers (questionsid, answer) VALUES
(2,'Principen om minsta privilegium'),
(2,'Principen om maximal åtkomst'),
(2,'Principen om öppenhet'),
(2,'Principen om snabbhet');

-- 15 En kund är irriterad över en upprepad felaktighet. Hur hanterar du situationen bäst?
INSERT INTO answers (questionsid, answer) VALUES
(3,'Lyssna aktivt på kundens klagomål och be om ursäkt för besväret'),
(3,'Förklara att det inte är ditt fel och att de bör kontakta någon annan'),
(3,'Erbjud en rabatt utan att lyssna på deras problem'),
(3,'Ignorera kundens klagomål och fortsätt med ditt arbete');

-- 16 Vad innebär “kundresan” (customer journey) i kundservice?
INSERT INTO answers (questionsid, answer) VALUES
(3,'Alla interaktioner en kund har med ett företag från första kontakt till efterköp'),
(3,'Endast de köp en kund gör hos ett företag'),
(3,'Hur snabbt en kund får svar på sina frågor'),
(3,'Hur många produkter en kund köper från ett företag');

-- 17 Vilken metod hjälper bäst att förebygga missnöje innan det uppstår?
INSERT INTO answers (questionsid, answer) VALUES
(3,'Proaktiv kommunikation och regelbunden uppföljning med kunder'),
(3,'Vänta tills kunden klagar och sedan erbjuda en lösning'),
(3,'Erbjuda rabatter till alla kunder oavsett situation'),
(3,'Fokusera endast på att sälja produkter och inte på kundservice');

-- 18 När är det lämpligt att eskalera ett ärende till specialistnivå?
INSERT INTO answers (questionsid, answer) VALUES
(3,'När ärendet kräver expertkunskap som du inte besitter'),
(3,'När kunden blir arg och högljudd'),
(3,'När du har tid över och vill undvika ärendet'),
(3,'När kunden begär att prata med en chef utan anledning');

-- 19 Hur kan kunddata bäst användas i kundtjänst?
INSERT INTO answers (questionsid, answer) VALUES
(3,'För att personifiera kundupplevelsen och erbjuda skräddarsydda lösningar'),
(3,'För att sälja kundens information till tredje part'),
(3,'För att skicka oönskade marknadsföringsmeddelanden'),
(3,'För att ignorera kundens behov och fokusera på företagets mål');

-- 20 Vilken teknik kan förbättra responstiden i kundtjänst?
INSERT INTO answers (questionsid, answer) VALUES
(3,'Användning av AI-drivna chatbots för att hantera vanliga frågor'),
(3,'Att ha färre kundtjänstrepresentanter tillgängliga'),
(3,'Att ignorera kundernas frågor tills de blir arga'),
(3,'Att skicka automatiska svar som inte adresserar kundens problem');

-- 21 Vad är ett tecken på effektiv kundtjänst?
INSERT INTO answers (questionsid, answer) VALUES
(3,'Höga kundnöjdhetsbetyg och positiva recensioner'),
(3,'Långa väntetider för att få hjälp'),
(3,'Få återkommande klagomål från kunder'),
(3,'Att undvika att lösa kundernas problem snabbt');