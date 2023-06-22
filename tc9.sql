DROP TABLE IF EXISTS T1;
DROP TABLE IF EXISTS T2;
DROP TABLE IF EXISTS T3;
DROP TABLE IF EXISTS T4;

/*T1*/
CREATE TABLE T1 (k1 int, A int);

INSERT INTO T1 VALUES (1,77054);
INSERT INTO T1 VALUES (2,77004);
INSERT INTO T1 VALUES (3,77204);
INSERT INTO T1 VALUES (4,77054);
INSERT INTO T1 VALUES (5,77204);
INSERT INTO T1 VALUES (6,77004);
INSERT INTO T1 VALUES (7,77004);
INSERT INTO T1 VALUES (8,77014);
INSERT INTO T1 VALUES (9,77024);
INSERT INTO T1 VALUES (10,77034);
INSERT INTO T1 VALUES (11,77044);
INSERT INTO T1 VALUES (12,77104);


/*T2*/
CREATE TABLE T2 (k2 int, k1 int, B int);


INSERT INTO T2 VALUES (1,2,12);
INSERT INTO T2 VALUES (2,3,13);
INSERT INTO T2 VALUES (3,1,11);
INSERT INTO T2 VALUES (4,1,14);
INSERT INTO T2 VALUES (5,4,12);
INSERT INTO T2 VALUES (6,3,13);
INSERT INTO T2 VALUES (7,31,131);
INSERT INTO T2 VALUES (8,13,132);
INSERT INTO T2 VALUES (9,23,131);
INSERT INTO T2 VALUES (10,31,1333);
INSERT INTO T2 VALUES (11,13,1376);
INSERT INTO T2 VALUES (12,23,132);
INSERT INTO T2 VALUES (13,32,131);
INSERT INTO T2 VALUES (14,34,132);
INSERT INTO T2 VALUES (15,35,133);
INSERT INTO T2 VALUES (16,36,135);
INSERT INTO T2 VALUES (17,37,136);
INSERT INTO T2 VALUES (18,38,138);
INSERT INTO T2 VALUES (19,30,137);
INSERT INTO T2 VALUES (20,31,135);


/*T3*/
CREATE TABLE T3 (k3 int, C int, D int);


INSERT INTO T3 VALUES (100,10,1000);
INSERT INTO T3 VALUES (200,10,1000);
INSERT INTO T3 VALUES (300,11,1000);
INSERT INTO T3 VALUES (400,10,1000);
INSERT INTO T3 VALUES (500,11,1000);


/*T4 E->l4 violates 3NF*/
CREATE TABLE T4 (k4 int, k2 int, k3 int, D int, E int);


INSERT INTO T4 VALUES (101,1,100,26,11);
INSERT INTO T4 VALUES (102,2,100,26,11);
INSERT INTO T4 VALUES (103,5,200,14,34);
INSERT INTO T4 VALUES (104,9,300,17,56);
INSERT INTO T4 VALUES (105,5,800,17,98);
INSERT INTO T4 VALUES (106,4,900,13,10);