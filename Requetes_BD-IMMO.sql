-- Partie 2 : Interrogation et Mise à jour de la BD IMMO

select idp, count(distinct categorie)
from bien
group by idp
order by idp asc;

select idebien, categorie, type, ide, designation
from bien
join espace
on idebien = ide
order by idebien asc;

-- Q1 :

SELECT CATEGORIE, COUNT(*)
FROM BIEN
GROUP BY CATEGORIE;

SELECT TYPE, COUNT(*)
FROM BIEN
GROUP BY TYPE;

-- Q2 :

SELECT IDE, LPAD('-', 2*LEVEL, ' ') || DESIGNATION
FROM ESPACE
WHERE IDE != 945
CONNECT BY PRIOR IDE = IDERATTACH
START WITH IDE = 945;

-- Q3 :

-- Formulation avec opérateurs ensemblistes
SELECT *
FROM PROPRIO
MINUS
SELECT *
FROM PROPRIO
WHERE IDP IN (
    SELECT IDP
    FROM BIEN
    WHERE VILLE='MARSEILLE');
    
-- Formulation avec jointure externe
SELECT PROPRIO.IDP, NOM, PRENOM
FROM PROPRIO
LEFT OUTER JOIN BIEN
ON PROPRIO.IDP = BIEN.IDP
AND BIEN.VILLE = 'MARSEILLE'
WHERE IDEBIEN IS NULL;

-- Q4 :

SELECT VILLE, COUNT(*)
FROM BIEN
GROUP BY VILLE
HAVING COUNT(*) <= 10;

-- Q5 :

SELECT *
FROM (
    SELECT IDEBIEN, CATEGORIE, TYPE, PRIX, (PRIX - MIN_PRIX_BIEN) ECART_AVEC_MIN_BIEN
    FROM BIEN, (
        SELECT MIN(PRIX) MIN_PRIX_BIEN
        FROM BIEN)
    WHERE PRIX > MIN_PRIX_BIEN
    UNION
    SELECT IDEBIEN, CATEGORIE, TYPE, PRIX, (PRIX - MIN_PRIX_BIEN) ECART_AVEC_MIN_BIEN
    FROM BIEN, (
        SELECT MIN(PRIX) MIN_PRIX_BIEN
        FROM BIEN)
    WHERE PRIX <= MIN_PRIX_BIEN)
ORDER BY ECART_AVEC_MIN_BIEN ASC;

-- Q6 :

SELECT IDEBIEN, CATEGORIE, TYPE, PRIX, (PRIX - MIN_PRIX_CAT) ECART_AVEC_MIN_BIEN
FROM BIEN, (
    SELECT CATEGORIE, MIN(PRIX) MIN_PRIX_CAT
    FROM BIEN
    GROUP BY CATEGORIE) MIN_CAT
WHERE BIEN.CATEGORIE = MIN_CAT.CATEGORIE
AND PRIX > MIN_PRIX_CAT
UNION
SELECT IDEBIEN, CATEGORIE, TYPE, PRIX, (PRIX - MIN_PRIX_CAT) ECART_AVEC_MIN_BIEN
FROM BIEN, (
    SELECT CATEGORIE, MIN(PRIX) MIN_PRIX_CAT
    FROM BIEN
    GROUP BY CATEGORIE) MIN_CAT
WHERE BIEN.CATEGORIE = MIN_CAT.CATEGORIE
AND PRIX <= MIN_PRIX_CAT;

-- Q7 :

SELECT BIEN.IDP, NOM, PRENOM, COUNT(IDEBIEN)
FROM BIEN
JOIN PROPRIO
ON BIEN.IDP = PROPRIO.IDP
AND PROPRIO.IDP IN (
    SELECT IDP
    FROM BIEN
    WHERE TYPE='STUDIO'
    GROUP BY IDP
    HAVING COUNT(*) >= 2)
GROUP BY BIEN.IDP, NOM, PRENOM;

-- Q8 :

SELECT IDP, NOM, PRENOM
FROM PROPRIO P
RIGHT OUTER JOIN BIEN B
ON P.IDP=B.IDP
AND B.CATEGORIE IN (
    SELECT CATEGORIE
    FROM BIEN
    WHERE BIEN.IDP = P.IDP)
WHERE IDEBIEN IS NULL;

-- Q9 :

CREATE VIEW MAX_SUPERFICIE_TERRASSE AS
SELECT MAX(SUPERFICIE) MAX_SUP
FROM ESPACE
WHERE DESIGNATION='TERRASSE';

SELECT IDEBIEN
FROM BIEN
WHERE IDEBIEN IN (
    SELECT IDE
    FROM ESPACE
    WHERE IDERATTACH IS NULL
    CONNECT BY IDE = PRIOR IDERATTACH
    START WITH IDE IN (
        SELECT IDE
        FROM ESPACE, MAX_SUPERFICIE_TERRASSE
        WHERE DESIGNATION = 'TERRASSE'
        AND SUPERFICIE = MAX_SUP));

-- Q10 :

SELECT IDP
FROM BIEN 
WHERE CATEGORIE IN (
    SELECT CATEGORIE
    FROM BIEN
    WHERE IDP = 105)
AND IDP != 105;

-- Q11 :

CREATE VIEW MIN_PRIX_CATEGORIE AS
SELECT CATEGORIE, MIN(PRIX) MIN_PRIX
FROM BIEN
GROUP BY CATEGORIE;

SELECT IDEBIEN, CATEGORIE, TYPE, PRIX, (PRIX - MIN_PRIX) ECART_AVEC_MIN_BIEN
FROM BIEN, MIN_PRIX_CATEGORIE
WHERE BIEN.CATEGORIE = MIN_PRIX_CATEGORIE.CATEGORIE
AND PRIX > MIN_PRIX
UNION
SELECT IDEBIEN, CATEGORIE, TYPE, PRIX, (PRIX - MIN_PRIX) ECART_AVEC_MIN_BIEN
FROM BIEN, MIN_PRIX_CATEGORIE
WHERE BIEN.CATEGORIE = MIN_PRIX_CATEGORIE.CATEGORIE
AND PRIX <= MIN_PRIX;

