-- create an empty database. Name of the database: 
SET storage_engine=InnoDB;
SET FOREIGN_KEY_CHECKS=1;
CREATE DATABASE IF NOT EXISTS campionatoCiclistico;
USE campionatoCiclistico;

-- use campionatoCiclistico;
DROP TABLE IF EXISTS CICLISTA;
DROP TABLE IF EXISTS SQUADRA;
DROP TABLE IF EXISTS TAPPA;
DROP TABLE IF EXISTS CLASSIFICA_INDIVIDUALE;

-- create tables
CREATE TABLE CICLISTA (
    CodC CHAR(20),
    Nome CHAR(50) NOT NULL,
    Cognome CHAR(50) NOT NULL,
    Nazionalita CHAR(50) NOT NULL,
    CodS CHAR(20) NOT NULL,
    AnnoNascita DATE NOT NULL,
    PRIMARY KEY(CodC)
);

CREATE TABLE SQUADRA (
    CodS CHAR(20),
    NomeS CHAR(50),
    SedeLegale CHAR(50) NULL,
    AnnoFondazione CHAR(50) NULL,
    CONSTRAINT chk_AnnoFondazione CHECK (AnnoFondazione>=1900 and AnnoFondazione<=2000),
    PRIMARY KEY(CodS)
);

CREATE TABLE TAPPA (
    Edizione CHAR(20),
    CodT CHAR(50),
    CittaPartenza CHAR(50) NOT NULL,
    CittaArrivo CHAR(50) NOT NULL,
    Lunghezza INT NOT NULL,
    Dislivello INT NOT NULL,
    GradoDifficolta SMALLINT NOT NULL,
    CONSTRAINT chk_GradoDifficolta CHECK (GradoDifficolta>=1 and GradoDifficolta<=10),
    PRIMARY KEY(Edizione,CodT)
);

CREATE TABLE CLASSIFICA_INDIVIDUALE (
    CodC CHAR(20),
    CodT CHAR(50),
    Edizione CHAR(50),
    Posizione INT NULL,
    PRIMARY KEY(CodC,CodT,Edizione)
);

