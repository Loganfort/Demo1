CREATE DATABASE IF NOT EXISTS netflix;

USE netflix;

CREATE TABLE pelicula (
  id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(45) DEFAULT NULL,
  des VARCHAR(700) DEFAULT NULL,
  CodGenero int null,
  Codidioma int null,
  PRIMARY KEY(id)
);

CREATE TABLE genero (
  id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE idioma (
  id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY(id)
);

DESCRIBE pelicula;
DESCRIBE genero;
DESCRIBE idioma;


INSERT INTO pelicula values 
  (1, 'THE LORD OF THE RINGS', 'La trilogía cinematográfica de El Señor de los Anillos, basada en la novela homónima del escritor británico J. R. R. Tolkien, comprende tres películas épicas de fantasía, acción y aventuras: El Señor de los Anillos: la Comunidad del Anillo (2001), El Señor de los Anillos: las dos torres (2002) y El Señor de los Anillos: el retorno del Rey (2003).',1,2),
  (2, 'RAPIDOS Y FURIOSOS', 'The Fast and the Furious es una franquicia de medios estadounidense centrada en una serie de películas de acción que se ocupan en gran medida de carreras callejeras.',1,1),
  (3, 'ASU MARE', 'una película de comedia peruana, adaptación fílmica del monólogo cómico homónimo de Carlos Alcántara',3,1);

INSERT INTO genero values 
  (1, 'Ciencia ficción'),
  (2, 'Accion'),
  (3, 'Comedia');
  
INSERT INTO idioma values 
  (1, 'Portugues'),
  (2, 'Castellano'),
  (3, 'Ingles');
    

SELECT * FROM pelicula;
SELECT * FROM genero;
SELECT * FROM idioma;