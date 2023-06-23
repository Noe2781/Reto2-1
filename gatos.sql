CREATE DATABASE gatos;
USE gatos;

CREATE TABLE gatos (
    Gato INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR (50),
    Edad INT,
    Peso FLOAT,
    Le_gusta VARCHAR (50),
    Color_de_pelo VARCHAR (50),
    Color_de_ojos VARCHAR (50),
    Apodo VARCHAR (50),
    vino_acompañado VARCHAR (50)
);

INSERT INTO gatos (Nombre, Edad, Peso, Le_gusta, Color_de_pelo, Color_de_ojos, Apodo, vino_acompañado) VALUES
("Rocket", 3, 3.0, "Le gusta dormir mucho","Blanco", "Celestes", NULL, "Si" ),
("Pinto", 5, 3.5, "Le gustan los mimos", "Naranja con blanco","amarillo con verde", "Pin", NULL),
("Sunny", 2, 5.0, "Le gusta jugar con pelotitas", "Negro", "amarillentos", NULL,"Si"),
("Emelia", 2, 4.4, "Le gusta reposar donde hay sol", "Gris con negro", "amarillentos", "Emeli", "Si"),
("Nikki", 4, 4.3, "Le gusta estar junto a Ricochet", "Gris", "Verdes claros", NULL, NULL),
("Ricochet", 4, 4.7, "Le gustan los lugares altos", "Blanco con gris", "Celestes", NULL, NULL),
("Onyx",7, 3.3, "Le gusta ir donde hay comida", "Naranja", "amarillentos", NULL, NULL),
("Seiko", 2, 3.7, "Le gusta dormir junto a otros gatos", "Blanco con gris", "verdosos", NULL, "Si"),
("Nathan", 7, 4.5, "Le gusta esconderse", "Negro", "amarillentos", "Ninja nate", NULL );


UPDATE gatos SET Apodo = 'No tiene' WHERE Apodo IS NULL;

SELECT * FROM gatos;

UPDATE gatos SET vino_acompañado = 'vino solito' WHERE vino_acompañado IS NULL;





SELECT Nombre, Peso, (peso > 4) AS esta_con_dieta
FROM gatos;

ALTER TABLE gatos
ADD COLUMN esta_con_dieta BOOLEAN;

UPDATE gatos
SET esta_con_dieta = (peso > 4);

SELECT Nombre, Peso, (peso > 4) AS esta_con_dieta
FROM gatos;

SELECT Nombre, CONCAT(Peso, ' - ', (Peso > 4)) AS con_dieta
FROM gatos;

SELECT Nombre, Edad, 11 - Edad AS anios_para_jubilarse
FROM gatos;

ALTER TABLE gatos
ADD COLUMN anios_para_jubilarse INT;

UPDATE gatos
SET anios_para_jubilarse = 11 - Edad;

INSERT INTO gatos (Nombre, Edad, Peso, Le_gusta, Color_de_pelo, Color_de_ojos, Apodo, vino_acompañado)
VALUES ('Toffee', 4, 3.4, 'le gusta jugar y estar solo a veces', 'blanco con gris', 'verdosos', "Tofisito", NULL );

INSERT INTO gatos (Nombre, Edad, Peso, Le_gusta, Color_de_pelo, Color_de_ojos, Apodo, vino_acompañado)
VALUES ("Chucky", 10, 4.3, "Le gusta dormir y caminar", "Naranj con blanco", "amarillentos", NULL, NULL);

UPDATE gatos
SET esta_con_dieta = (Peso > 4),
    anios_para_jubilarse = 11 - Edad
WHERE Nombre IN ('Toffee', 'Chucky');

UPDATE gatos SET Apodo = 'No tiene' WHERE Apodo IS NULL;

SELECT * FROM gatos;

UPDATE gatos SET vino_acompañado = 'vino solito' WHERE vino_acompañado IS NULL;










