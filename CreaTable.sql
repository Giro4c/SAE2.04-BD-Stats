-- Script de création de base pour la sae 2.04

-- Création des tables

CREATE TABLE PROPRIO (
    IdP NUMBER(4),
    Nom VARCHAR2(15),
    Prenom VARCHAR2(15),
    CONSTRAINT PK_PROPRIO PRIMARY KEY (IdP)
)
/
CREATE TABLE BIEN (
    IdEBien NUMBER(4),
    Categorie VARCHAR2(15),
    Type VARCHAR2(15),
    IdP NUMBER(4),
    Ville VARCHAR2(15),
    Prix NUMBER(6),
    CONSTRAINT PK_BIEN PRIMARY KEY (IdEBien),
    CONSTRAINT FK_BIEN FOREIGN KEY (IdP) REFERENCES PROPRIO (IdP)
)
/
CREATE TABLE ESPACE (
    IdE NUMBER(4),
    Designation VARCHAR2(20),
    Superficie NUMBER(4),
    IdERattach NUMBER(4),
    CONSTRAINT PK_ESP PRIMARY KEY (IdE),
    CONSTRAINT FK_ESP FOREIGN KEY (IdERattach) REFERENCES ESPACE (IdE)
)
/
-- Insertions dans PROPRIO
INSERT INTO PROPRIO VALUES (4358, 'FRAZIER', 'EMMA')
/
INSERT INTO PROPRIO VALUES (945, 'MERCADO', 'LOUISE')
/
INSERT INTO PROPRIO VALUES (4775, 'BALL', 'JADE')
/
INSERT INTO PROPRIO VALUES (2867, 'SLOAN', 'LEA')
/
INSERT INTO PROPRIO VALUES (9360, 'CALDWELL', 'ROSE')
/
INSERT INTO PROPRIO VALUES (3837, 'PATTERSON', 'GABRIEL')
/
INSERT INTO PROPRIO VALUES (9803, 'JOHNSTON', 'LOUIS')
/
INSERT INTO PROPRIO VALUES (1481, 'SNYDER', 'ROMAIN')
/
INSERT INTO PROPRIO VALUES (2384, 'CERVANTES', 'JULES')
/
INSERT INTO PROPRIO VALUES (2956, 'CAIN', 'ADAM')
/
INSERT INTO PROPRIO VALUES (1237, 'PARKS', 'LUCAS')
/
INSERT INTO PROPRIO VALUES (7862, 'BRIGGS', 'LEO')
/
INSERT INTO PROPRIO VALUES (3353, 'NIXON', 'HUGO')
/
INSERT INTO PROPRIO VALUES (4212, 'HAAS', 'ARTHUR')
/
INSERT INTO PROPRIO VALUES (690, 'PITTMAN', 'NATHAN')
/
INSERT INTO PROPRIO VALUES (8591, 'SHEA', 'LIAM')
/
INSERT INTO PROPRIO VALUES (8461, 'PATTERSON', 'AARON')
/
INSERT INTO PROPRIO VALUES (7075, 'MADDOX', 'PAUL')
/
INSERT INTO PROPRIO VALUES (9320, 'MCINTYRE', 'TOM')
/
INSERT INTO PROPRIO VALUES (7250, 'SCHMIDT', 'MOHAMED')
/

-- Insertions dans BIEN
INSERT INTO BIEN VALUES (1, 'APPARTEMENT', 'STUDIO', 1, 'AIX', 45000)
/

-- Insertions dans ESPACE
INSERT INTO ESPACE VALUES (1, 'Studio', 45, NULL)
/
