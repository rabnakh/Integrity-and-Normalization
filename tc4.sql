DROP TABLE IF EXISTS T1;
DROP TABLE IF EXISTS T2;
DROP TABLE IF EXISTS T3;

/*T1*/
CREATE TABLE T1 (k1 int,k2 int, A int, B int);

INSERT INTO T1 VALUES (1,1,10,23);
INSERT INTO T1 VALUES (2,2,10,345);
INSERT INTO T1 VALUES (3,1,10,545);
INSERT INTO T1 VALUES (4,5,10,234);
INSERT INTO T1 VALUES (5,4,10,112);


/*T2*/
CREATE TABLE T2 (k2 int, C int);


INSERT INTO T2 VALUES (1,129);
INSERT INTO T2 VALUES (2,49);
INSERT INTO T2 VALUES (3,3299);
INSERT INTO T2 VALUES (4,435);
INSERT INTO T2 VALUES (5,129);
INSERT INTO T2 VALUES (6,99);


/*T3*/
CREATE TABLE T3 (k3 int, k2 int, D int);


INSERT INTO T3 VALUES (100,1,456);
INSERT INTO T3 VALUES (200,1,889);
INSERT INTO T3 VALUES (300,4,123);
INSERT INTO T3 VALUES (400,9,456);
INSERT INTO T3 VALUES (500,2,123);
INSERT INTO T3 VALUES (600,3,123);
