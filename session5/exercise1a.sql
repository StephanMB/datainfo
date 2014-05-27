﻿CREATE TABLE Boek (
isbn VARCHAR (20) PRIMARY KEY,
titel VARCHAR (300) NOT NULL,
auteur VARCHAR (300) NOT NULL,
); 

CREATE TABLE Exemplaar (
isbn VARCHAR (20),
volgnummer VARCHAR (264) PRIMARY KEY,
gewicht INT (10),
kast VARCHAR (10),
FOREIGNKEY (isbn) REFERENCES Boek(isbn) ON UPDATE CASCADE ON DELETE CASCADE 
);