# CyCure101 🔒💪
En lärplattform för **säkerhetsträning** där användare i en trygg sandboxmiljö kan öva på att upptäcka och försvara sig mot digitala hot.  
Projektet är utvecklat som ett grupparbete med fullstack-teknik (Node.js + React).

---

## 🚀 Vision
Organisationer och privatpersoner utsätts dagligen för phishing, falska fakturor och social engineering.  
**CyCure101** gör cybersäkerhet **lärorikt, säkert och roligt** genom interaktiva övningar, gamification och tydlig feedback.

---

## ✨ Funktioner
- 👤 Inloggning och profil med poäng, badges och nivåer
- 📚 Moduler med teori + interaktiva övningar
- 🏆 Poängsystem & leaderboard
- 🛠 Adminpanel för att skapa/moderera övningar
- 📊 Statistik över framsteg

---

## 📦 Moduler (exempel)
1. **E-post & phishing-identifiering** – analysera fejkade mail och hitta tecken på bedrägeri
2. **Faktura-analys** – identifiera falska fält i fakturor
3. **Bildmetadata & sekretess** – förstå risker med EXIF-data
4. **Säker kod & input-validation** – hitta buggar och föreslå säkra lösningar
5. **Logg-analys & incidenthantering** – träna på att tolka anomalier i loggar

---

## 🛠️ Teknisk stack
**Frontend:** React + TailwindCSS  
**Backend:** Node.js (Express)  
**Databas:** PostgreSQL (alt. SQLite för utveckling)  
**Autentisering:** JWT (jsonwebtoken)  
**CI/CD:** GitHub Actions  
**Hosting:** Render / Heroku / Vercel

---

## 📂 Projektstruktur
bash
cycure101/
├── backend/          # Node.js/Express API
│   ├── models/       # Databasmodeller
│   ├── routes/       # API-endpoints
│   └── utils/        # Hjälpfunktioner
│
├── frontend/         # React-app
│   ├── components/   # Återanvändbara UI-komponenter
│   ├── pages/        # Sidor (quiz, dashboard, login)
│   └── assets/       # Ikoner, bilder, logotyp
│
├── README.md
└── package.json
