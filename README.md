# 🎯 Projektbeschreibung – Kivitendo Game

## 🧩 Überblick
**Kivitendo Game** ist ein interaktives, webbasiertes Lernspiel zur spielerischen Vermittlung von kaufmännischem Wissen rund um **Warenwirtschaft**, **Finanzbuchhaltung**, **Linux-Grundlagen** und **Perl-Programmierung** – mit direktem Bezug zur **Kivitendo-ERP-Software**.

Das Projekt verbindet **Business-Know-how mit technischer Bildung** und richtet sich an Auszubildende, Mitarbeitende sowie ERP-Interessierte.

## 💡 Ziele
- Spielerisch Wissen im Bereich ERP & IT vermitteln  
- Verständnis für zentrale Begriffe aus der Kivitendo-Welt fördern  
- Motivation durch Gamification (Punkte, Animationen, Fortschritt)  
- Mobil & Desktopfähig, auch für Schulungen einsetzbar

## 🛠️ Tech-Stack
- **Frontend**: HTML5, CSS3, JavaScript, GSAP (für Animationen)  
- **Backend**: [Dancer2](https://perldancer.org/) Web-Framework (Perl)  
- **Fragen-Daten**: JSON-Datei (UTF-8), später optional via SQLite oder DB  
- **Hosting**: Lokaler Server via `plackup`, erweiterbar für Domain-Betrieb

## 📱 Features
- Zufällige Multiple-Choice-Fragen mit sofortiger Bewertung  
- Punkte-System mit lokalem Speicher (`localStorage`)  
- Responsive Design für mobile Geräte  
- Animierte UI mit **GSAP** für ein modernes Spielerlebnis  
- Erweiterbar um neue Fragen, Kategorien, Benutzerverwaltung etc.

## 📁 Projektstruktur
```
Kivitendo-Game/
├── public/           # Frontend-Dateien (index.html, kivi.svg, css, js)
├── lib/              # Perl-Modul (Dancer2 App)
├── views/            # Templates (optional)
├── db/               # SQLite-Datenbank (optional)
├── questions.json    # Fragen im JSON-Format
├── app.psgi          # PSGI-Startdatei
└── bin/              # Startskript
```

## 🔮 Nächste Schritte (optional)
- Authentifizierung & Benutzerprofile  
- Highscore-Tabelle  
- Admin-Panel zum Verwalten der Fragen  
- Kategorie-Auswahl, Timer & Sounds

### 📂 Verzeichnis:

```bash
cd ~/Kivitendo-Game/Kivitendo::Game
```

## 🚀 Projektstart (lokal)
- Starten Sie das Game mit dem Befehl: 
```
plackup bin/app.psgi
```

## 🖥️ Browser-Zugriff:
```
http://localhost:5000/
```

