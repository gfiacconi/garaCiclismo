SET storage_engine=InnoDB;
SET FOREIGN_KEY_CHECKS=1; 
USE campionatoCiclistico;

INSERT INTO CICLISTA (CodC, Nome, Cognome, Nazionalita, CodS, AnnoNascita)
VALUES ('ID1','PIPPO', 'PLUTO', 'ITALIANA', '01','1999/03/03');

INSERT INTO SQUADRA (CodS, NomeS, AnnoFondazione, SedeLegale)
VALUES ('01','DISNEY','1901', NULL);
INSERT INTO SQUADRA (CodS, NomeS, AnnoFondazione, SedeLegale)
VALUES ('02','DISNEY', '1901','ITALIA');
INSERT INTO SQUADRA (CodS, NomeS, AnnoFondazione, SedeLegale)
VALUES ('03','DISNEY','1901', 'ITALIA');

INSERT INTO TAPPA (Edizione, CodT, CittaPartenza, CittaArrivo, Lunghezza, Dislivello, GradoDifficolta)
VALUES ('1','01', 'ROMA', 'FIRENZE', '273000', '200', '9');
INSERT INTO TAPPA (Edizione, CodT, CittaPartenza, CittaArrivo, Lunghezza, Dislivello, GradoDifficolta)
VALUES ('1','02', 'FIRENZE', 'TORINO', '433000', '200', '2');

INSERT INTO CLASSIFICA_INDIVIDUALE (CodC, CodT, Edizione, Posizione)
VALUES ('ID1', '01', '1', '1');


