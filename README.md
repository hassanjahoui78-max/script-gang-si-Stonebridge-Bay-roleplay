# 🏴‍☠️ qb-gangsystem - Advanced Gang, Turf & Graffiti Script

Questo è un sistema avanzato per gang per **QBCore**. Include un sistema di conquista dei territori (ghetto), dichiarazione di guerre tra gang, garage personalizzati con colori dinamici della gang, meccanici privati in `vec3` e un innovativo sistema di graffiti (Testo 3D e Immagini tramite URL usando un overlay AR).

## 📋 Requisiti (Dipendenze)
Assicurati di avere queste risorse installate e funzionanti nel tuo server:
* `qb-core`
* `qb-menu`
* `qb-input`
* `oxmysql`
* Un veicolo add-on con spawn name `g632019` (oppure modificalo nel `config.lua`).

---

## 📁 Struttura delle Cartelle
Crea una cartella principale chiamata `qb-gangsystem` dentro la tua cartella `resources` (es. `resources/[qb]/qb-gangsystem`). 
Al suo interno, crea le cartelle e posiziona i file **esattamente** in questo modo:

```text
qb-gangsystem/
│
├── fxmanifest.lua          # File di manifesto (dichiara lo script)
├── config.lua              # File di configurazione (Gangs, Ghetti in vec3, Auto)
├── install.sql             # File Database per creare le tabelle
├── README.md               # Questo file
│
├── client/                 # Cartella per i file lato client
│   └── main.lua            # Il codice Client generato in precedenza
│
├── server/                 # Cartella per i file lato server
│   └── main.lua            # Il codice Server generato in precedenza
│
└── html/                   # Cartella per l'interfaccia UI (Graffiti Immagini)
    ├── index.html          # Struttura della pagina
    ├── style.css           # Stili e posizionamento per simulare i muri
    └── script.js           # Logica per tracciare le coordinate sullo schermo

🛠️ Guida all'Installazione
Passo 1: Inserimento File
Seguendo lo schema qui sopra, incolla i codici che ti ho fornito nei rispettivi file. Assicurati che le estensioni siano corrette (es. .lua, .html, .css, .js).

Passo 2: Configurazione Database (Importante)
Apri il tuo programma di gestione database (es. HeidiSQL, PhpMyAdmin o DBeaver).
Seleziona il database del tuo server FiveM.
Apri il file install.sql ed eseguilo. Questo creerà due tabelle:
gang_territories: Per salvare chi controlla i ghetti.
gang_graffiti: Per salvare le coordinate, i testi e i link immagine dei graffiti.

Passo 3: Configurazione Veicolo
Lo script utilizza l'auto g632019.
Assicurati di avere questa mod veicolo installata sul server o inserisci una tua.
Vai in qb-core/shared/vehicles.lua e assicurati che il veicolo sia registrato lì dentro.
Se non hai questa mod e vuoi usare un'auto base di GTA (es. dubsta):
Apri config.lua e cambia Config.VehicleModel = 'g632019' in Config.VehicleModel = 'dubsta'.
Passo 4: Avvio dello script
Apri il tuo file server.cfg e aggiungi questa riga per far partire lo script (preferibilmente sotto a qb-core e qb-menu):
code Cfg

ensure qb-gangsystem

Riavvia il server o digita refresh e ensure qb-gangsystem o come l'hai chiamato tu nella console F8/TxAdmin.
🎮 Come si usa in gioco
Entrare in una Gang:
Essendo collegato a QBCore, devi essere in una gang ufficiale per usare lo script.
Usa il comando admin in chat:
/setgang [TuoID] ballas 1 (oppure families, vagos, marabunta).
Aprire il Menu Gang:
Digita in chat (o bindalo a un tasto) il comando:
/gangmenu
Da qui potrai dichiarare guerra, conquistare territori o disegnare graffiti.
Fare un Graffito (Testo o Immagine):
Apri il /gangmenu e seleziona "Fai un Graffito".
Avvicinati a un muro e guarda verso il punto esatto dove vuoi il graffito.
Scegli "Testo" o "Immagine". Se scegli immagine, incolla un URL diretto (es. un link di Imgur o Discord terminante in .png o .jpg).
Garage e Meccanico (Ghetti):
Vai nelle coordinate specificate nel config.lua (es. Grove Street o Fudge Lane).
Garage: Entra nel raggio del Marker, comparirà la scritta [E] Prendi veicolo Gang. L'auto spawnerà del colore della tua gang!
Meccanico: Vai nel cerchio rosso con l'auto, comparirà la scritta [E] Ripara Veicolo. L'auto verrà riparata istantaneamente.
