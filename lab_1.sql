CREATE TABLE PRODUSE(ID_PRODUS INTEGER, NUME_PRODUS VARCHAR2(30);

INSERT INTO PRODUSE(ID_PRODUS,NUME_PRODUS) VALUES(1,'CEAPA');
INSERT INTO PRODUSE(ID_PRODUS,NUME_PRODUS) VALUES(2,'ROSIE');
INSERT INTO PRODUSE(ID_PRODUS,NUME_PRODUS) VALUES(3,'CASTRAVETE');

CREATE TABLE PROPRIETATI(ID_PRODUS INTEGER, PROPRIETATE VARCHAR2(20))

INSERT INTO PROPRIETATI(ID_PRODUS,PROPRIETATE) VALUES(2,'rosu');
INSERT INTO PROPRIETATI(ID_PRODUS,PROPRIETATE) VALUES(1,'alba');
INSERT INTO PROPRIETATI(ID_PRODUS,PROPRIETATE) VALUES(3,'verde');

CREATE TABLE PRETURI(PROPRIETATE VARCHAR2(20), PRET NUMERIC(4));

INSERT INTO PRETURI(PROPRIETATE, PRET) VALUES('rosu',10);
INSERT INTO PRETURI(PROPRIETATE, PRET) VALUES('alba',20);
INSERT INTO PRETURI(PROPRIETATE, PRET) VALUES('verde',30);



CREATE TABLE CATEGORIE(ID_CATEGOIRE CHAR(5), NUME_CATEGORIE VARCHAR2(20));
INSERT INTO CATEGORIE(ID_CATEGOIRE, NUME_CATEGORIE) VALUES('FRUCT','fructe');
INSERT INTO CATEGORIE(ID_CATEGOIRE, NUME_CATEGORIE) VALUES('LEGUM','legume');
INSERT INTO CATEGORIE(ID_CATEGOIRE, NUME_CATEGORIE) VALUES('CURM','curmale');

CREATE TABLE SUBCATEGORIE(ID_SUBCATEGORIE CHAR(5), ID_CATEGOIRE CHAR(5), NUME_SUBCATEGORIE VARCHAR2(20));
INSERT INTO SUBCATEGORIE(ID_SUBCATEGORIE , ID_CATEGOIRE, NUME_SUBCATEGORIE)  VALUES('fr','FRUCT','fructe vesele');
INSERT INTO SUBCATEGORIE(ID_SUBCATEGORIE , ID_CATEGOIRE, NUME_SUBCATEGORIE)  VALUES('le','LEGUM','legume triste');
INSERT INTO SUBCATEGORIE(ID_SUBCATEGORIE , ID_CATEGOIRE, NUME_SUBCATEGORIE)  VALUES('cu','CURM','curmale monotone');


CREATE TABLE CUMPARATORI(ID_CUMPARATOR CHAR(6), NUME_CUMPARATOR VARCHAR2(20));
INSERT INTO CUMPARATORI(ID_CUMPARATOR, NUME_CUMPARATOR) VALUES('11','Meme');
INSERT INTO CUMPARATORI(ID_CUMPARATOR, NUME_CUMPARATOR) VALUES('12', 'Ada');
INSERT INTO CUMPARATORI(ID_CUMPARATOR, NUME_CUMPARATOR) VALUES('13', 'Stalin');

CREATE TABLE COMENZI(ID_CUMPARATOR CHAR(6), ID_PRODUS INTEGER);
INSERT INTO COMENZI(ID_CUMPARATOR, ID_PRODUS) VALUES('11', '1');
INSERT INTO COMENZI(ID_CUMPARATOR, ID_PRODUS) VALUES('11', '2');
INSERT INTO COMENZI(ID_CUMPARATOR, ID_PRODUS) VALUES('11', '3');
INSERT INTO COMENZI(ID_CUMPARATOR, ID_PRODUS) VALUES('12', '2');
INSERT INTO COMENZI(ID_CUMPARATOR, ID_PRODUS) VALUES('13', '3');

CREATE TABLE PRODCAT(ID_PRODUS INTEGER,ID_SUBCATEGORIE CHAR(5))



select ID_CUMPARATOR from COMENZI WHERE ID_PRODUS = 3;
select ID_CUMPARATOR from COMENZI WHERE ID_PRODUS > 2;
select ID_CUMPARATOR from COMENZI WHERE ID_PRODUS > 1;

