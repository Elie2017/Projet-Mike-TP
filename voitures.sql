CREATE DATABASE IF NOT EXISTS MikeMonRoi;

USE MikeMonRoi;

CREATE TABLE modeleDeVoiture (
  id_voitures INT(3) NOT NULL AUTO_INCREMENT, -- intéger : un entier, un chiffre
  marque VARCHAR(20) NOT NULL,
  modele VARCHAR(20) NOT NULL, -- varchar : chaine de caractèreres
  annee YEAR NOT NULL,
  couleur ENUM('black','white', 'blue', 'mike') NOT NULL, -- enumération
  image VARCHAR(250) NOT NULL,
  PRIMARY KEY (id_voitures)
) ENGINE=InnoDB ;
-- InnoDB est un moteur de stockage pour les systèmes de gestion de base de données MySQL
-- Dans une base de données relationnelle, une clé primaire est la donnée qui permet d'identifier de manière unique un enregistrement dans une table

INSERT INTO modeleDeVoiture (id_voitures, marque, modele, annee, couleur, image) VALUES
( 1, 'Volkswagen', 'Coccinell', '1977', 'blue', 'http://photos.lesanciennes.com/cache/b/4/b4d999b8f6f9a73901255c552a1a0a02.jpg'),
( 2, 'MGB', 'Limited Edition 18CC', '1980', 'black', 'http://1.cdn.lesanciennes.com/cache/5/d/5d6a394435ce300cf81e840d7860cd33.jpg'),
( 3, 'Renault', 'Alpine GT4', '1965', 'blue', 'http://photos.lesanciennes.com/cache/f/9/f97373d80f6975d1e9a34b518cd19046.jpg'),
( 4, 'Sigma', 'Cabriolet', '1912', 'blue', 'http://1.cdn.lesanciennes.com/cache/0/b/0bfaf774494cc651450478e465bb8464.jpg'),
( 5, 'Austin', 'Mini British Open', '1992', 'mike', 'http://1.cdn.lesanciennes.com/cache/0/a/0aafb379b406de25d26c6e6a1c4a44c3.jpg');

