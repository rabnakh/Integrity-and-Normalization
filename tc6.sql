DROP TABLE IF EXISTS T1;
DROP TABLE IF EXISTS T2;
DROP TABLE IF EXISTS T3;
DROP TABLE IF EXISTS T4;

/*T1*/
CREATE TABLE T1 (k1 int, k2 int, A int, B int);

INSERT INTO T1 VALUES (1,10,87,108);
INSERT INTO T1 VALUES (2,20,64,12);
INSERT INTO T1 VALUES (3,30,31,12);
INSERT INTO T1 VALUES (4,40,82,7);
INSERT INTO T1 VALUES (5,40,31,65);


/*T2*/
CREATE TABLE T2 (k2 int, k3 int, C int);


INSERT INTO T2 VALUES (10,100,1111);
INSERT INTO T2 VALUES (20,300,111);
INSERT INTO T2 VALUES (30,400,1111);
INSERT INTO T2 VALUES (40,200,222);
INSERT INTO T2 VALUES (50,600,333);
INSERT INTO T2 VALUES (60,100,222);


/*T3*/
CREATE TABLE T3 (k3 int, D int);


INSERT INTO T3 VALUES (100,88);
INSERT INTO T3 VALUES (200,888);
INSERT INTO T3 VALUES (300,8888);
INSERT INTO T3 VALUES (400,88);
INSERT INTO T3 VALUES (500,89);
INSERT INTO T3 VALUES (600,8888);

/*T4*/
CREATE TABLE T4 (k4 int, k3 int, E int);

INSERT INTO T4 VALUES (1,500,77);
INSERT INTO T4 VALUES (2,500,77);
INSERT INTO T4 VALUES (3,700,77);
INSERT INTO T4 VALUES (4,400,77);
INSERT INTO T4 VALUES (5,600,77);
INSERT INTO T4 VALUES (6,500,77);
