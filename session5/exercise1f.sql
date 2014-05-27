CREATE TABLE Boek (
isbn VARCHAR (20) PRIMARY KEY,
titel VARCHAR (300) NOT NULL,
auteur VARCHAR (300) NOT NULL
); 

CREATE TABLE Exemplaar (
isbn VARCHAR (20),
volgnummer VARCHAR (264) PRIMARY KEY,
gewicht INT ,
kast VARCHAR (10),
FOREIGN KEY (isbn) REFERENCES Boek(isbn) ON UPDATE CASCADE ON DELETE NO ACTION NOT DEFERRABLE
);

CREATE FUNCTION delete_exemplaar()
RETURNS trigger AS $delete_cascade$

BEGIN

DELETE FROM Exemplaar
 WHERE isbn = OLD.isbn;

END;

$delete_cascade$ LANGUAGE plpgsql;

CREATE TRIGGER delete_cascade
 AFTER DELETE ON boek
 FOR EACH ROW 
 EXECUTE PROCEDURE delete_exemplaar();
;