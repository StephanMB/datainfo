CREATE TABLE Bestelling (
id SERIAL PRIMARY KEY,
isbn VARCHAR (20) NOT NULL,
aantal INT NOT NULL
); 



CREATE FUNCTION bestelling_update()
RETURNS trigger AS $bestelling_update$

BEGIN

INSERT INTO Bestelling
 VALUES (NEW.isbn, 0);

END;

$bestelling_update$ LANGUAGE plpgsql;

CREATE TRIGGER bestelling_update
 AFTER UPDATE ON boek
 FOR EACH ROW 
 EXECUTE PROCEDURE delete_exemplaar();
;