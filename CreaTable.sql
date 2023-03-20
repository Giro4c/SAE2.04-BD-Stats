-- Script de création de base pour la sae 2.04

DROP TABLE ESPACE
/
DROP TABLE PROPRIO
/
DROP TABLE BIEN
/

-- Création des tables

CREATE TABLE PROPRIO (
    IdP NUMBER(4),
    Nom VARCHAR2(15),
    Prenom VARCHAR2(15),
    CONSTRAINT PK_PROPRIO PRIMARY KEY (IdP)
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
CREATE TABLE BIEN (
    IdEBien NUMBER(4),
    Categorie VARCHAR2(15),
    Type VARCHAR2(15),
    IdP NUMBER(4),
    Ville VARCHAR2(15),
    Prix NUMBER(6),
    CONSTRAINT PK_BIEN PRIMARY KEY (IdEBien),
    CONSTRAINT FK1_BIEN FOREIGN KEY (IdEBien) REFERENCES ESPACE (IdE),
    CONSTRAINT FK2_BIEN FOREIGN KEY (IdP) REFERENCES PROPRIO (IdP)
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

-- Insertions dans ESPACE
INSERT INTO ESPACE VALUES (1, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (2, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (3, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (4, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (5, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (6, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (7, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (8, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (9, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (10, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (11, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (12, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (13, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (14, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (15, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (16, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (17, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (18, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (19, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (20, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (21, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (22, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (23, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (24, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (25, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (26, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (27, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (28, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (29, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (30, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (31, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (32, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (33, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (34, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (35, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (36, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (37, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (38, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (39, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (40, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (41, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (42, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (43, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (44, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (45, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (46, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (47, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (48, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (49, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (50, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (51, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (52, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (53, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (54, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (55, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (56, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (57, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (58, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (59, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (60, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (61, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (62, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (63, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (64, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (65, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (66, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (67, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (68, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (69, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (70, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (71, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (72, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (73, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (74, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (75, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (76, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (77, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (78, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (79, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (80, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (81, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (82, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (83, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (84, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (85, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (86, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (87, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (88, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (89, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (90, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (91, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (92, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (93, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (94, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (95, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (96, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (97, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (98, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (99, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (100, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (101, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (102, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (103, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (104, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (105, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (106, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (107, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (108, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (109, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (110, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (111, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (112, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (113, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (114, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (115, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (116, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (117, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (118, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (119, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (120, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (121, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (122, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (123, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (124, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (125, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (126, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (127, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (128, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (129, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (130, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (131, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (132, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (133, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (134, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (135, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (136, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (137, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (138, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (139, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (140, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (141, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (142, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (143, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (144, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (145, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (146, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (147, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (148, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (149, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (150, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (151, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (152, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (153, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (154, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (155, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (156, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (157, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (158, 'Studio', 45, NULL)
/
INSERT INTO ESPACE VALUES (159, 'Studio', 45, NULL)
/

-- Insertions dans BIEN
INSERT INTO BIEN VALUES (1, 'APPARTEMENT', 'T2', 1, 'AIX-EN-PROVENCE', 225000)
/
