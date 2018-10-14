# LilypondScores

[![Build Status](https://travis-ci.org/GuillaumeNury/LilypondScores.svg?branch=master)](https://travis-ci.org/GuillaumeNury/LilypondScores)

## Rendu

Les PDF générés par Lilypond ce trouve [sur ce site](https://guillaumenury.github.io/LilypondScores/).

## Pré-requis

- [Python 2.3](https://www.python.org/downloads/)
- [Node.js](https://nodejs.org/en/)
- [Lilypond](http://lilypond.org/download.fr.html)

## Installation

- Installer les dépendances : `npm install`
- Copier le fichier `config.model.js` vers `config.js`
- Dans `config.js`, vérifier la propriété `binPath` : elle doit pointer vers l'exécutable fourni par Lilypond

## Utilisation

- Lancer `npm run start <nom du fichier ily>` : chaque modification sur un fichier `.ily` lancera la compilation du fichier.

  **Attention !** Pour pouvoir être compilé, le fichier doit impérativement avoir le commentaire suivant comme première ligne :
  ```
  % LilypondScores
  ```

  Si c'est un brouillon :
  ```
  % LilypondScores:draft
  ```

- Ouvrir l'image correspondante qui se trouve dans le dossier `dist`

_Pour générer les PDF, utiliser `npm run release`._

## Liens utiles

- [Blog de Simon Froger](https://simonfroger.wordpress.com/lilypond/caisse-claire-ecossaise/) : écriture des fla/ra/triolets/etc...
- [Documentation de Lilypond](http://lilypond.org/doc/v2.18/Documentation/notation/index.fr.html)
- [Extension VS Code pour Lilypond](https://marketplace.visualstudio.com/items?itemName=truefire.lilypond)
