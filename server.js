const express = require('express');
//const mysql = require('mysql');
const mysql = require('mysql2');
const bodyParser = require('body-parser');
const cors = require('cors');

const app = express();
const port = 3000; // Choisissez le port que vous préférez

app.use(cors());
app.use(bodyParser.json());
/**const db = mysql.createConnection({
  host: 'localhost',
  user: 'latif', // Votre nom d'utilisateur MySQL
  password: 'latif2004', // Votre mot de passe MySQL
  */
const db = mysql.createConnection({
  host: '192.168.11.126',
  user: 'test', // Votre nom d'utilisateur MySQL
  password: 'MyP@ssw0rd123', // Votre mot de passe MySQL
  database: 'test', // Le nom de votre base de données
});
db.connect((err) => {
  if (err) {
    console.log('Erreur de connexion à la base de données :', err);
  } else {
    console.log('Connexion à la base de données réussie');
  }
});

app.post('/login', (req, res) => {
  const { username, password } = req.body;

  const query = 'SELECT * FROM users WHERE username = ? AND password = ?';

  db.query(query, [username, password], (err, results) => {
    if (err) {
      console.log('Erreur lors de la requête MySQL :', err);
      res.status(500).json({ error: 'Erreur interne du serveur' });
    } else {
      if (results.length > 0) {
        // Authentification réussie
        res.json({ success: true, message: 'Authentification réussie' });
      } else {
        // Nom d'utilisateur ou mot de passe incorrect
        res.status(401).json({ error: 'Nom d\'utilisateur ou mot de passe incorrect' });
      }
    }
  });
});

app.listen(port, () => {
  console.log(`Serveur écoutant sur le port ${port}`);
});
