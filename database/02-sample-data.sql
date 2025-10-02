
-- Sample data for CyCure Database - MySQL Version
-- Simple sample data matching the basic schema

-- Insert sample users; userlevel: 1=user, 2=admin
INSERT INTO users (username, password, userlevel) VALUES
('admin', 'admin123', 2),
('user', 'user123', 1);


-- Insert sample questions
INSERT INTO questions (question, questionType) VALUES
('Vilken typ av attack utnyttjar svagheter i en webbapplikations databas?',1),
('Vilken funktion har en “load balancer” i ett nätverk?',1),
('Vad innebär “sandboxing” i IT-säkerhet?',1),
('Vilken protokollkombination används oftast för säkra e-postöverföringar?', 1),
('Vilket av följande är ett exempel på multifaktorautentisering?', 1),
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

-- Insert sample answers for each question
INSERT INTO answers (categoryid, answer) VALUES
-- 1 Vilken typ av attack utnyttjar svagheter i en webbapplikations databas?
( 1,'SQL Injection'),
( 1,'Cross-Site Scripting (XSS)'),
( 1,'Denial of Service (DoS)'),
( 1,'Phishing');

-- 2 Vilken funktion har en “load balancer” i ett nätverk?
INSERT INTO answers (categoryid, answer) VALUES
( 1,'Fördelar nätverkstrafik över flera servrar'),
( 1,'Ökar hastigheten på internetanslutningen'),
( 1,'Skyddar mot skadlig programvara'),
( 1,'Övervakar nätverkssäkerhet');

-- 3 Vad innebär “sandboxing” i IT-säkerhet?
INSERT INTO answers (categoryid, answer) VALUES
( 1,'Isolering av program för att förhindra skadlig påverkan'),
(1, 'Snabba upp systemet'),
(1, 'Öka lagringskapaciteten'),
(1, 'Förbättra nätverkshastigheten');

-- 4 Vilken protokollkombination används oftast för säkra e-postöverföringar?
INSERT INTO answers (categoryid, answer) VALUES
( 1,'SMTP + TLS'),
( 1,'FTP + SSL'),
( 1,'HTTP + SSL'),
( 1,'IMAP + TLS');

-- 5 Vilket av följande är ett exempel på multifaktorautentisering?
INSERT INTO answers (categoryid, answer) VALUES
( 1,'Lösenord + SMS-kod'),
( 1,'Två olika lösenord'),
( 1,'E-postadress + Lösenord'),
( 1,'Användarnamn + Lösenord');

-- 6 Vad är skillnaden mellan symmetrisk och asymmetrisk kryptering?
INSERT INTO answers (categoryid, answer) VALUES
( 1,'Symmetrisk använder samma nyckel för kryptering och dekryptering, asymmetrisk använder ett par nycklar'),
( 1,'Symmetrisk är snabbare än asymmetrisk'),
( 1,'Asymmetrisk är säkrare än symmetrisk'),
( 1,'Symmetrisk används för små datamängder, asymmetrisk för stora datamängder');

-- 7 Vilken typ av malware kan ta kontroll över en dator och kräva betalning?
INSERT INTO answers (categoryid, answer) VALUES
( 1,'Ransomware'),
( 1,'Spyware'),
( 1,'Adware'),
( 1,'Trojan');

-- 8 Vad beskriver bäst en “API Gateway”?
INSERT INTO answers (categoryid, answer) VALUES
( 1,'En tjänst som hanterar och dirigerar API-förfrågningar'),
( 1,'En brandvägg för nätverk'),
( 1,'En databas för att lagra API-nycklar'),
( 1,'Ett verktyg för att övervaka nätverkstrafik');

-- 9 Vad innebär begreppet “patch management”?
INSERT INTO answers (categoryid, answer) VALUES
( 1,'Processen att hantera och distribuera uppdateringar för mjukvara'),
( 1,'Att skapa säkerhetskopior av data'),
( 1,'Att övervaka nätverkstrafik'),
( 1,'Att installera antivirusprogram');

-- 10 Vilken metod används ofta för att verifiera integriteten hos en fil?
INSERT INTO answers (categoryid, answer) VALUES
( 1,'Hashing'),
( 1,'Kryptering'),
( 1,'Digital signatur'),
( 1,'Backup');

-- 11 Vilken är den mest kritiska åtgärden vid en misstänkt dataläcka?
INSERT INTO answers (categoryid, answer) VALUES
( 2,'Isolera de drabbade systemen'),
( 2,'Informera alla anställda'),
( 2,'Byta alla lösenord'),
( 2,'Kontakta media');

-- 12 Vad är en “zero-day exploit”?
INSERT INTO answers (categoryid, answer) VALUES
( 2,'En sårbarhet som är okänd för programvarutillverkaren'),
( 2,'En attack som sker på en söndag'),
( 2,'En typ av malware som sprids via e-post'),
( 2,'En säkerhetsåtgärd som används för att skydda data');

-- 13 Vilket säkerhetslager fokuserar på att skydda människors beteende snarare än teknik?
INSERT INTO answers (categoryid, answer) VALUES
( 2,'Mänskligt lager'),
( 2,'Brandvägg'),
( 2,'Kryptering'),
( 2,'Antivirus');

-- 14 Vilken metod används ofta för att förebygga insiderhot?
INSERT INTO answers (categoryid, answer) VALUES
(2,'Rollbaserad åtkomstkontroll'),
(2,'Att byta nätverk varje dag'),
(2,'Använda starka lösenord'),
(2,'Installera antivirusprogram');

-- 15 Hur kan en organisation testa sin IT-säkerhet proaktivt?
INSERT INTO answers (categoryid, answer) VALUES
(2,'Genom att genomföra penetrationstester'),
(2,'Genom att byta alla lösenord regelbundet'),
(2,'Genom att installera fler brandväggar'),
(2,'Genom att utbilda anställda i IT-säkerhet');

-- 16 Vilket scenario beskriver en “man-in-the-middle”-attack?
INSERT INTO answers (categoryid, answer) VALUES
(2,'En angripare avlyssnar och eventuellt ändrar kommunikationen mellan två parter utan deras vetskap'),
(2,'En användare får ett e-postmeddelande med skadlig kod'),
(2,'En dator infekteras med ransomware'),
(2,'En webbplats blir överbelastad av trafik från många källor');

-- 17 Vilken av följande är ett exempel på en säkerhetsprincip?
INSERT INTO answers (categoryid, answer) VALUES
(2,'Principen om minsta privilegium'),
(2,'Principen om maximal åtkomst'),
(2,'Principen om öppenhet'),
(2,'Principen om snabbhet');

-- 18 Vad är syftet med principen "Separation of Duties" (SoD)?
INSERT INTO answers (categoryid, answer) VALUES
(2,'Att minska risken för bedrägeri genom att dela upp kritiska uppgifter mellan flera personer'),
(2,'Att öka hastigheten på arbetsflödet'),
(2,'Att ge alla anställda full åtkomst till alla system'),
(2,'Att minska antalet anställda i en organisation');

-- 19 Vilken åtgärd är viktigast vid social engineering-attacker?
INSERT INTO answers (categoryid, answer) VALUES
(2,'Utbilda anställda att känna igen och hantera social engineering-försök'),
(2,'Installera fler brandväggar'),
(2,'Byta alla lösenord regelbundet'),
(2,'Använda starka lösenord');

-- 20 Vad innebär en “incident response plan”?
INSERT INTO answers (categoryid, answer) VALUES
(2,'En plan för hur en organisation ska hantera och återhämta sig från säkerhetsincidenter'),
(2,'En plan för att öka försäljningen'),
(2,'En plan för att utbilda anställda i IT-säkerhet'),
(2,'En plan för att byta alla lösenord regelbundet');

-- 21 En kund är irriterad över en upprepad felaktighet. Hur hanterar du situationen bäst?
INSERT INTO answers (categoryid, answer) VALUES
(3,'Lyssna aktivt på kundens klagomål och be om ursäkt för besväret'),
(3,'Förklara att det inte är ditt fel och att de bör kontakta någon annan'),
(3,'Erbjud en rabatt utan att lyssna på deras problem'),
(3,'Ignorera kundens klagomål och fortsätt med ditt arbete');

-- 22 Vad innebär “kundresan” (customer journey) i kundservice?
INSERT INTO answers (categoryid, answer) VALUES
(3,'Alla interaktioner en kund har med ett företag från första kontakt till efterköp'),
(3,'Endast de köp en kund gör hos ett företag'),
(3,'Hur snabbt en kund får svar på sina frågor'),
(3,'Hur många produkter en kund köper från ett företag');

-- 23 Vilken metod hjälper bäst att förebygga missnöje innan det uppstår?
INSERT INTO answers (categoryid, answer) VALUES
(3,'Proaktiv kommunikation och regelbunden uppföljning med kunder'),
(3,'Vänta tills kunden klagar och sedan erbjuda en lösning'),
(3,'Erbjuda rabatter till alla kunder oavsett situation'),
(3,'Fokusera endast på att sälja produkter och inte på kundservice');

-- 24 När är det lämpligt att eskalera ett ärende till specialistnivå?
INSERT INTO answers (categoryid, answer) VALUES
(3,'När ärendet kräver expertkunskap som du inte besitter'),
(3,'När kunden blir arg och högljudd'),
(3,'När du har tid över och vill undvika ärendet'),
(3,'När kunden begär att prata med en chef utan anledning');

-- 25 Hur kan kunddata bäst användas i kundtjänst?
INSERT INTO answers (categoryid, answer) VALUES
(3,'För att personifiera kundupplevelsen och erbjuda skräddarsydda lösningar'),
(3,'För att sälja kundens information till tredje part'),
(3,'För att skicka oönskade marknadsföringsmeddelanden'),
(3,'För att ignorera kundens behov och fokusera på företagets mål');

-- 26 Vilken teknik kan förbättra responstiden i kundtjänst?
INSERT INTO answers (categoryid, answer) VALUES
(3,'Användning av AI-drivna chatbots för att hantera vanliga frågor'),
(3,'Att ha färre kundtjänstrepresentanter tillgängliga'),
(3,'Att ignorera kundernas frågor tills de blir arga'),
(3,'Att skicka automatiska svar som inte adresserar kundens problem');

-- 27 Vad är ett tecken på effektiv kundtjänst?
INSERT INTO answers (categoryid, answer) VALUES
(3,'Höga kundnöjdhetsbetyg och positiva recensioner'),
(3,'Långa väntetider för att få hjälp'),
(3,'Få återkommande klagomål från kunder'),
(3,'Att undvika att lösa kundernas problem snabbt');

-- 28 Vad är en KPI (Key Performance Indicator) inom kundtjänst?
INSERT INTO answers (categoryid, answer) VALUES
(3,'Mått som används för att utvärdera effektiviteten av kundtjänstjänsten'),
(3,'Antalet produkter sålda per dag'),
(3,'Hur många anställda som är på semester'),
(3,'Företagets totala intäkter');

-- 29 Vilken strategi används bäst för att hantera flera kundärenden samtidigt utan att tappa kvalitet?
INSERT INTO answers (categoryid, answer) VALUES
(3,'Prioritera ärenden baserat på deras brådskande natur och kundens behov'),
(3,'Hantera ärenden i den ordning de kommer in utan prioritering'),
(3,'Ignorera mindre viktiga ärenden helt och hållet'),
(3,'Fokusera endast på att lösa ärenden snabbt utan att bry sig om kvalitet');

-- 30 Hur säkerställer man att kunskapsbasen i kundtjänst förblir relevant?
INSERT INTO answers (categoryid, answer) VALUES
(3,'Regelbunden uppdatering och granskning av innehållet baserat på kundfeedback och nya produkter'),
(3,'Låta den vara oförändrad för att undvika förvirring'),
(3,'Ta bort äldre artiklar utan att lägga till nya'),
(3,'Fokusera endast på tekniska artiklar och ignorera kundserviceämnen');