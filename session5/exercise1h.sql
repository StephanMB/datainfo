ALTER TABLE Exemplaar 
 ADD CONSTRAINT less_than_2 
 CHECK (gewicht < 2000)
;