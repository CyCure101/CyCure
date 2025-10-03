INSERT INTO users (username, password, userlevel) VALUES
('admin', 'admin123', 2),
('user', 'user123', 1);

-- Questions
INSERT INTO questions (question, questionType) VALUES
('Vilken typ av attack utnyttjar svagheter i en webbapplikations databas?',1),
('Vilken funktion har en “load balancer” i ett nätverk?',1),
('Vad innebär “sandboxing” i IT-säkerhet?',1),
('Vilken protokollkombination används oftast för säkra e-postöverföringar?',1),
('Vilket av följande är ett exempel på multifaktorautentisering?',1),
('Vad är skillnaden mellan symmetrisk och asymmetrisk kryptering?',1),
('Vilken typ av malware kan ta kontroll över en dator och kräva betalning?',1),
('Vad beskriver bäst en “API Gateway”?',1),
('Vad innebär begreppet “patch management”?',1),
('Vilken metod används ofta för att verifiera integriteten hos en fil?',1),
('Vilken är den mest kritiska åtgärden vid en misstänkt dataläcka?',2),
('Vad är en “zero-day exploit”?',2),
('Vilket säkerhetslager fokuserar på att skydda människors beteende snarare än teknik?',2),
('Vilken metod används ofta för att förebygga insiderhot?',2),
('Hur kan en organisation testa sin IT-säkerhet proaktivt?',2),
('Vilket scenario beskriver en “man-in-the-middle”-attack?',2),
('Vilken av följande är ett exempel på en säkerhetsprincip?',2),
('Vad är syftet med principen "Separation of Duties" (SoD)?',2),
('Vilken åtgärd är viktigast vid social engineering-attacker?',2),
('Vad innebär en “incident response plan”?',2),
('En kund är irriterad över en upprepad felaktighet. Hur hanterar du situationen bäst?',3),
('Vad innebär “kundresan” (customer journey) i kundservice?',3),
('Vilken metod hjälper bäst att förebygga missnöje innan det uppstår?',3),
('När är det lämpligt att eskalera ett ärende till specialistnivå?',3),
('Hur kan kunddata bäst användas i kundtjänst?',3),
('Vilken teknik kan förbättra responstiden i kundtjänst?',3),
('Vad är ett tecken på effektiv kundtjänst?',3),
('Vad är en KPI (Key Performance Indicator) inom kundtjänst?',3),
('Vilken strategi används bäst för att hantera flera kundärenden samtidigt utan att tappa kvalitet?',3),
('Hur säkerställer man att kunskapsbasen i kundtjänst förblir relevant?',3);

-- ===============================
-- Answers
-- ===============================

-- 1
INSERT INTO answers (questionsid, answer, isCorrect) VALUES
(1,'SQL Injection',1),
(1,'Cross-Site Scripting (XSS)',0),
(1,'Denial of Service (DoS)',0),
(1,'Phishing',0);

-- 2
INSERT INTO answers (questionsid, answer, isCorrect) VALUES
(2,'Fördelar nätverkstrafik över flera servrar',1),
(2,'Ökar hastigheten på internetanslutningen',0),
(2,'Skyddar mot skadlig programvara',0),
(2,'Övervakar nätverkssäkerhet',0);

-- 3
INSERT INTO answers (questionsid, answer, isCorrect) VALUES
(3,'Isolering av program för att förhindra skadlig påverkan',1),
(3,'Snabba upp systemet',0),
(3,'Öka lagringskapaciteten',0),
(3,'Förbättra nätverkshastigheten',0);

-- 4
INSERT INTO answers (questionsid, answer, isCorrect) VALUES
(4,'SMTP + TLS',1),
(4,'FTP + SSL',0),
(4,'HTTP + SSL',0),
(4,'IMAP + TLS',0);

-- 5
INSERT INTO answers (questionsid, answer, isCorrect) VALUES
(5,'Lösenord + SMS-kod',1),
(5,'Två olika lösenord',0),
(5,'E-postadress + Lösenord',0),
(5,'Användarnamn + Lösenord',0);

-- 6
INSERT INTO answers (questionsid, answer, isCorrect) VALUES
(6,'Symmetrisk använder samma nyckel för kryptering och dekryptering, asymmetrisk använder ett par nycklar',1),
(6,'Symmetrisk är snabbare än asymmetrisk',0),
(6,'Asymmetrisk är säkrare än symmetrisk',0),
(6,'Symmetrisk används för små datamängder, asymmetrisk för stora datamängder',0);

-- 7
INSERT INTO answers (questionsid, answer, isCorrect) VALUES
(7,'Ransomware',1),
(7,'Spyware',0),
(7,'Adware',0),
(7,'Trojan',0);

-- 8
INSERT INTO answers (questionsid, answer, isCorrect) VALUES
(8,'En tjänst som hanterar och dirigerar API-förfrågningar',1),
(8,'En brandvägg för nätverk',0),
(8,'En databas för att lagra API-nycklar',0),
(8,'Ett verktyg för att övervaka nätverkstrafik',0);

-- 9
INSERT INTO answers (questionsid, answer, isCorrect) VALUES
(9,'Processen att hantera och distribuera uppdateringar för mjukvara',1),
(9,'Att skapa säkerhetskopior av data',0),
(9,'Att övervaka nätverkstrafik',0),
(9,'Att installera antivirusprogram',0);

-- 10
INSERT INTO answers (questionsid, answer, isCorrect) VALUES
(10,'Hashing',1),
(10,'Kryptering',0),
(10,'Digital signatur',0),
(10,'Backup',0);

-- 11
INSERT INTO answers (questionsid, answer, isCorrect) VALUES
(11,'Isolera de drabbade systemen',1),
(11,'Informera alla anställda',0),
(11,'Byta alla lösenord',0),
(11,'Kontakta media',0);

-- 12
INSERT INTO answers (questionsid, answer, isCorrect) VALUES
(12,'En sårbarhet som är okänd för programvarutillverkaren',1),
(12,'En attack som sker på en söndag',0),
(12,'En typ av malware som sprids via e-post',0),
(12,'En säkerhetsåtgärd som används för att skydda data',0);

-- 13
INSERT INTO answers (questionsid, answer, isCorrect) VALUES
(13,'Mänskligt lager',1),
(13,'Brandvägg',0),
(13,'Kryptering',0),
(13,'Antivirus',0);

-- 14
INSERT INTO answers (questionsid, answer, isCorrect) VALUES
(14,'Rollbaserad åtkomstkontroll',1),
(14,'Att byta nätverk varje dag',0),
(14,'Använda starka lösenord',0),
(14,'Installera antivirusprogram',0);

-- 15
INSERT INTO answers (questionsid, answer, isCorrect) VALUES
(15,'Genom att genomföra penetrationstester',1),
(15,'Genom att byta alla lösenord regelbundet',0),
(15,'Genom att installera fler brandväggar',0),
(15,'Genom att utbilda anställda i IT-säkerhet',0);

-- 16
INSERT INTO answers (questionsid, answer, isCorrect) VALUES
(16,'En angripare avlyssnar och eventuellt ändrar kommunikationen mellan två parter utan deras vetskap',1),
(16,'En användare får ett e-postmeddelande med skadlig kod',0),
(16,'En dator infekteras med ransomware',0),
(16,'En webbplats blir överbelastad av trafik från många källor',0);

-- 17
INSERT INTO answers (questionsid, answer, isCorrect) VALUES
(17,'Principen om minsta privilegium',1),
(17,'Principen om maximal åtkomst',0),
(17,'Principen om öppenhet',0),
(17,'Principen om snabbhet',0);

-- 18
INSERT INTO answers (questionsid, answer, isCorrect) VALUES
(18,'Att minska risken för bedrägeri genom att dela upp kritiska uppgifter mellan flera personer',1),
(18,'Att öka hastigheten på arbetsflödet',0),
(18,'Att ge alla anställda full åtkomst till alla system',0),
(18,'Att minska antalet anställda i en organisation',0);

-- 19
INSERT INTO answers (questionsid, answer, isCorrect) VALUES
(19,'Utbilda anställda att känna igen och hantera social engineering-försök',1),
(19,'Installera fler brandväggar',0),
(19,'Byta alla lösenord regelbundet',0),
(19,'Använda starka lösenord',0);

-- 20
INSERT INTO answers (questionsid, answer, isCorrect) VALUES
(20,'En plan för hur en organisation ska hantera och återhämta sig från säkerhetsincidenter',1),
(20,'En plan för att öka försäljningen',0),
(20,'En plan för att utbilda anställda i IT-säkerhet',0),
(20,'En plan för att byta alla lösenord regelbundet',0);

-- 21
INSERT INTO answers (questionsid, answer, isCorrect) VALUES
(21,'Lyssna aktivt på kundens klagomål och be om ursäkt för besväret',1),
(21,'Förklara att det inte är ditt fel och att de bör kontakta någon annan',0),
(21,'Erbjuda en rabatt utan att lyssna på deras problem',0),
(21,'Ignorera kundens klagomål och fortsätt med ditt arbete',0);

-- 22
INSERT INTO answers (questionsid, answer, isCorrect) VALUES
(22,'Alla interaktioner en kund har med ett företag från första kontakt till efterköp',1),
(22,'Endast de köp en kund gör hos ett företag',0),
(22,'Hur snabbt en kund får svar på sina frågor',0),
(22,'Hur många produkter en kund köper från ett företag',0);

-- 23
INSERT INTO answers (questionsid, answer, isCorrect) VALUES
(23,'Proaktiv kommunikation och regelbunden uppföljning med kunder',1),
(23,'Vänta tills kunden klagar och sedan erbjuda en lösning',0),
(23,'Erbjuda rabatter till alla kunder oavsett situation',0),
(23,'Fokusera endast på att sälja produkter och inte på kundservice',0);

-- 24
INSERT INTO answers (questionsid, answer, isCorrect) VALUES
(24,'När ärendet kräver expertkunskap som du inte besitter',1),
(24,'När kunden blir arg och högljudd',0),
(24,'När du har tid över och vill undvika ärendet',0),
(24,'När kunden begär att prata med en chef utan anledning',0);

-- 25
INSERT INTO answers (questionsid, answer, isCorrect) VALUES
(25,'För att personifiera kundupplevelsen och erbjuda skräddarsydda lösningar',1),
(25,'För att sälja kundens information till tredje part',0),
(25,'För att skicka oönskade marknadsföringsmeddelanden',0),
(25,'För att ignorera kundens behov och fokusera på företagets mål',0);

-- 26
INSERT INTO answers (questionsid, answer, isCorrect) VALUES
(26,'Användning av AI-drivna chatbots för att hantera vanliga frågor',1),
(26,'Att ha färre kundtjänstrepresentanter tillgängliga',0),
(26,'Att ignorera kundernas frågor tills de blir arga',0),
(26,'Att skicka automatiska svar som inte adresserar kundens problem',0);

-- 27
INSERT INTO answers (questionsid, answer, isCorrect) VALUES
(27,'Höga kundnöjdhetsbetyg och positiva recensioner',1),
(27,'Långa väntetider för att få hjälp',0),
(27,'Få återkommande klagomål från kunder',0),
(27,'Att undvika att lösa kundernas problem snabbt',0);

-- 28
INSERT INTO answers (questionsid, answer, isCorrect) VALUES
(28,'Mått som används för att utvärdera effektiviteten av kundtjänstjänsten',1),
(28,'Antalet produkter sålda per dag',0),
(28,'Hur många anställda som är på semester',0),
(28,'Företagets totala intäkter',0);

-- 29
INSERT INTO answers (questionsid, answer, isCorrect) VALUES
(29,'Prioritera ärenden baserat på deras brådskande natur och kundens behov',1),
(29,'Hantera ärenden i den ordning de kommer in utan prioritering',0),
(29,'Ignorera mindre viktiga ärenden helt och hållet',0),
(29,'Fokusera endast på att lösa ärenden snabbt utan att bry sig om kvalitet',0);

-- 30
INSERT INTO answers (questionsid, answer, isCorrect) VALUES
(30,'Regelbunden uppdatering och granskning av innehållet baserat på kundfeedback och nya produkter',1),
(30,'Låta den vara oförändrad för att undvika förvirring',0),
(30,'Ta bort äldre artiklar utan att lägga till nya',0),
(30,'Fokusera endast på tekniska artiklar och ignorera kundserviceämnen',0);

