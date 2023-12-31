DROP TABLE IF EXISTS T1;
DROP TABLE IF EXISTS T2;
DROP TABLE IF EXISTS T3;
DROP TABLE IF EXISTS T4;

/*T1*/
CREATE TABLE T1 (id1 int, deptid int, zip int);

INSERT INTO T1 VALUES (1,1,77054);
INSERT INTO T1 VALUES (2,2,77004);
INSERT INTO T1 VALUES (3,3,77204);
INSERT INTO T1 VALUES (4,1,77054);
INSERT INTO T1 VALUES (5,3,77204);
INSERT INTO T1 VALUES (6,2,77004);


/*T2*/
CREATE TABLE T2 (id2 int, id1 int, grade int);


INSERT INTO T2 VALUES (1,2,92);
INSERT INTO T2 VALUES (2,3,93);
INSERT INTO T2 VALUES (3,1,91);
INSERT INTO T2 VALUES (4,1,91);
INSERT INTO T2 VALUES (5,4,94);
INSERT INTO T2 VALUES (6,3,92);


/*T3*/
CREATE TABLE T3 (id3 int, std int);


INSERT INTO T3 VALUES (100,10);
INSERT INTO T3 VALUES (200,10);
INSERT INTO T3 VALUES (300,11);
INSERT INTO T3 VALUES (400,10);
INSERT INTO T3 VALUES (500,11);


/*T4*/
CREATE TABLE T4 (id4 int, id2 int, id3 int, freq int);


INSERT INTO T4 VALUES (101,1,1,26);
INSERT INTO T4 VALUES (102,2,1,26);
INSERT INTO T4 VALUES (103,5,2,14);
INSERT INTO T4 VALUES (104,9,3,17);
INSERT INTO T4 VALUES (105,5,3,17);
INSERT INTO T4 VALUES (106,4,5,13);