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


/*T2*/
CREATE TABLE T2 (k2 int, B int);


INSERT INTO T2 VALUES (1,12);
INSERT INTO T2 VALUES (2,13);
INSERT INTO T2 VALUES (3,11);
INSERT INTO T2 VALUES (4,11);
INSERT INTO T2 VALUES (5,12);
INSERT INTO T2 VALUES (6,13);


/*T3*/
CREATE TABLE T3 (k3 int, C int);


INSERT INTO T3 VALUES (100,10);
INSERT INTO T3 VALUES (200,10);
INSERT INTO T3 VALUES (300,11);
INSERT INTO T3 VALUES (400,10);
INSERT INTO T3 VALUES (500,11);
INSERT INTO T3 VALUES (600,13);


/*T4 */
CREATE TABLE T4 (k4 int, k1 int, k2 int, k3 int, D int, E int, F int, G int, H int, I int, J int, K int, L int);

INSERT INTO T4 VALUES (1,5,2,100,20,39,50,1323,1110,3109,303,66,41);
INSERT INTO T4 VALUES (2,6,3,200,12,17,73,1124,1080,3109,305,67,109);
INSERT INTO T4 VALUES (3,2,5,300,11,27,51,1150,1091,3101,306,110,52);
INSERT INTO T4 VALUES (4,4,4,500,18,36,73,1156,1092,3112,306,74,55);
INSERT INTO T4 VALUES (5,6,3,100,18,27,80,1342,1106,3106,309,90,49);
INSERT INTO T4 VALUES (6,6,3,100,11,31,62,1200,1028,3106,311,52,25);
INSERT INTO T4 VALUES (7,1,2,200,14,39,56,1126,1019,3114,306,74,70);
INSERT INTO T4 VALUES (8,6,3,100,12,4,77,1258,1085,3109,308,22,68);
INSERT INTO T4 VALUES (9,3,1,400,16,6,74,1194,1052,3110,304,101,79);
INSERT INTO T4 VALUES (10,2,1,100,12,16,54,1249,1140,3112,314,86,93);
INSERT INTO T4 VALUES (11,4,1,500,15,17,59,1325,1048,3106,303,52,12);
INSERT INTO T4 VALUES (12,6,5,100,14,3,57,1330,1087,3113,304,7,30);
INSERT INTO T4 VALUES (13,4,5,200,19,17,68,1141,1045,3109,301,14,32);
INSERT INTO T4 VALUES (14,1,1,100,16,1,56,1329,1055,3105,301,78,94);
INSERT INTO T4 VALUES (15,5,2,300,18,35,51,1181,1021,3102,313,39,92);
INSERT INTO T4 VALUES (16,4,5,100,15,35,60,1189,1089,3106,314,88,78);
INSERT INTO T4 VALUES (17,1,2,200,10,37,70,1281,1073,3103,306,18,88);
INSERT INTO T4 VALUES (18,2,6,200,17,5,68,1172,1056,3111,305,73,66);
INSERT INTO T4 VALUES (19,6,3,200,15,6,53,1107,1096,3103,310,67,103);
INSERT INTO T4 VALUES (20,3,1,300,14,16,67,1398,1037,3101,311,83,104);
INSERT INTO T4 VALUES (21,2,2,100,20,17,74,1316,1108,3101,314,83,64);
INSERT INTO T4 VALUES (22,1,5,400,20,25,66,1136,1139,3104,305,94,103);
INSERT INTO T4 VALUES (23,3,3,100,10,38,74,1357,1059,3114,302,89,58);
INSERT INTO T4 VALUES (24,5,6,100,17,14,72,1296,1042,3106,303,45,93);
INSERT INTO T4 VALUES (25,5,4,500,11,23,68,1280,1090,3114,308,109,31);
INSERT INTO T4 VALUES (26,2,2,100,10,40,63,1352,1017,3113,307,105,79);
INSERT INTO T4 VALUES (27,6,6,600,14,14,74,1264,1044,3104,312,97,113);
INSERT INTO T4 VALUES (28,6,3,100,14,38,79,1327,1049,3107,301,28,54);
INSERT INTO T4 VALUES (29,6,5,400,15,2,71,1120,1082,3103,303,51,79);
INSERT INTO T4 VALUES (30,5,1,400,12,17,54,1332,1032,3102,311,83,114);
INSERT INTO T4 VALUES (31,1,3,600,19,33,64,1127,1118,3108,308,54,84);
INSERT INTO T4 VALUES (32,3,4,600,10,9,55,1222,1074,3109,308,19,108);
INSERT INTO T4 VALUES (33,4,3,500,11,39,62,1282,1122,3108,302,103,29);
INSERT INTO T4 VALUES (34,6,4,500,13,19,62,1219,1084,3107,311,64,107);
INSERT INTO T4 VALUES (35,1,2,500,10,13,66,1242,1110,3101,311,12,86);
INSERT INTO T4 VALUES (36,2,6,100,17,40,79,1366,1094,3103,306,46,81);
INSERT INTO T4 VALUES (37,6,5,100,14,2,65,1261,1043,3109,303,89,74);
INSERT INTO T4 VALUES (38,3,6,100,20,36,72,1234,1135,3103,304,60,100);
INSERT INTO T4 VALUES (39,3,6,300,11,39,50,1257,1063,3109,314,89,28);
INSERT INTO T4 VALUES (40,4,1,300,12,38,53,1274,1120,3104,307,55,71);
INSERT INTO T4 VALUES (41,6,3,300,12,23,56,1218,1025,3109,307,79,81);
INSERT INTO T4 VALUES (42,4,1,100,20,39,71,1119,1140,3110,301,19,97);
INSERT INTO T4 VALUES (43,1,5,100,10,13,64,1374,1111,3102,308,64,65);
INSERT INTO T4 VALUES (44,6,3,200,18,30,77,1317,1083,3107,304,80,98);
INSERT INTO T4 VALUES (45,4,2,200,12,15,51,1361,1092,3104,302,41,110);
INSERT INTO T4 VALUES (46,2,2,200,16,21,66,1214,1125,3101,310,66,105);
INSERT INTO T4 VALUES (47,3,5,100,10,25,52,1119,1052,3106,303,68,90);
INSERT INTO T4 VALUES (48,2,5,400,13,36,69,1336,1049,3102,309,27,79);
INSERT INTO T4 VALUES (49,3,2,400,14,32,70,1194,1138,3113,303,80,40);
INSERT INTO T4 VALUES (50,1,6,400,11,40,55,1107,1017,3106,311,88,29);
INSERT INTO T4 VALUES (51,1,5,100,13,25,50,1298,1127,3102,314,78,83);
INSERT INTO T4 VALUES (52,2,5,100,14,29,76,1357,1131,3112,312,1,24);
INSERT INTO T4 VALUES (53,3,5,100,16,19,61,1111,1090,3102,309,53,89);
INSERT INTO T4 VALUES (54,6,1,100,14,17,57,1307,1010,3109,314,6,69);
INSERT INTO T4 VALUES (55,3,4,600,11,39,68,1108,1066,3107,311,42,73);
INSERT INTO T4 VALUES (56,5,6,600,14,22,67,1116,1101,3111,309,46,15);
INSERT INTO T4 VALUES (57,6,3,300,20,22,63,1229,1110,3110,308,36,23);
INSERT INTO T4 VALUES (58,2,4,300,10,5,77,1394,1113,3101,305,36,107);
INSERT INTO T4 VALUES (59,6,5,100,19,21,59,1207,1097,3103,311,26,80);
INSERT INTO T4 VALUES (60,4,4,200,18,30,71,1266,1110,3107,309,14,54);
INSERT INTO T4 VALUES (61,6,4,200,12,21,76,1192,1064,3103,311,56,44);
INSERT INTO T4 VALUES (62,3,1,100,14,18,64,1379,1112,3109,308,84,85);
INSERT INTO T4 VALUES (63,4,2,100,17,15,62,1210,1070,3106,306,94,15);
INSERT INTO T4 VALUES (64,3,2,100,16,18,61,1274,1052,3114,310,88,102);
INSERT INTO T4 VALUES (65,2,2,100,16,9,50,1275,1066,3102,311,98,78);
INSERT INTO T4 VALUES (66,3,3,100,18,12,68,1307,1053,3107,309,40,51);
INSERT INTO T4 VALUES (67,4,4,100,18,19,76,1106,1070,3103,308,6,100);
INSERT INTO T4 VALUES (68,2,2,300,16,24,58,1224,1126,3101,309,29,83);
INSERT INTO T4 VALUES (69,4,1,400,15,4,66,1241,1070,3108,310,2,27);
INSERT INTO T4 VALUES (70,4,3,400,20,3,57,1137,1038,3110,304,88,110);
INSERT INTO T4 VALUES (71,6,4,300,12,18,54,1307,1042,3101,306,100,21);
INSERT INTO T4 VALUES (72,4,3,400,10,15,71,1131,1034,3103,304,27,98);
INSERT INTO T4 VALUES (73,6,2,500,17,14,66,1154,1104,3103,312,48,85);
INSERT INTO T4 VALUES (74,6,2,600,16,22,66,1267,1031,3101,309,99,73);
INSERT INTO T4 VALUES (75,4,5,200,19,14,69,1144,1117,3109,313,41,11);
INSERT INTO T4 VALUES (76,5,5,100,14,16,53,1360,1082,3106,309,101,110);
INSERT INTO T4 VALUES (77,4,5,100,12,29,76,1181,1020,3103,310,71,63);
INSERT INTO T4 VALUES (78,3,5,300,17,14,70,1338,1059,3101,302,13,25);
INSERT INTO T4 VALUES (79,6,3,200,18,23,54,1209,1109,3107,308,2,47);
INSERT INTO T4 VALUES (80,4,1,100,16,8,58,1235,1055,3107,310,83,28);
INSERT INTO T4 VALUES (81,2,4,100,18,19,52,1206,1087,3113,312,70,94);
INSERT INTO T4 VALUES (82,6,1,100,17,33,52,1293,1103,3113,308,50,101);
INSERT INTO T4 VALUES (83,4,3,100,17,26,75,1119,1089,3102,306,76,91);
INSERT INTO T4 VALUES (84,5,2,300,17,11,67,1158,1106,3104,301,103,42);
INSERT INTO T4 VALUES (85,5,3,400,20,10,52,1171,1025,3103,303,53,103);
INSERT INTO T4 VALUES (86,4,6,500,13,21,66,1250,1066,3106,306,95,63);
INSERT INTO T4 VALUES (87,3,3,600,18,4,58,1204,1090,3103,307,65,93);
INSERT INTO T4 VALUES (88,3,5,600,20,13,67,1164,1103,3111,305,12,81);
INSERT INTO T4 VALUES (89,1,3,500,18,11,73,1265,1110,3103,304,6,110);
INSERT INTO T4 VALUES (90,3,4,400,14,30,71,1185,1029,3103,305,24,99);
INSERT INTO T4 VALUES (91,6,6,100,14,21,80,1337,1140,3106,301,72,66);
INSERT INTO T4 VALUES (92,3,1,100,18,6,71,1233,1113,3104,314,104,55);
INSERT INTO T4 VALUES (93,6,2,100,16,23,73,1244,1049,3107,313,3,34);
INSERT INTO T4 VALUES (94,3,6,300,12,9,61,1140,1036,3111,310,29,85);
INSERT INTO T4 VALUES (95,5,4,400,12,31,52,1290,1024,3113,309,34,52);
INSERT INTO T4 VALUES (96,2,2,200,16,33,54,1180,1054,3103,313,78,100);
INSERT INTO T4 VALUES (97,3,1,100,12,22,71,1309,1068,3104,310,57,89);
INSERT INTO T4 VALUES (98,6,1,100,14,24,73,1150,1052,3105,314,24,70);
INSERT INTO T4 VALUES (99,4,6,100,14,20,78,1206,1120,3110,301,92,61);
INSERT INTO T4 VALUES (100,5,1,100,10,24,75,1200,1119,3101,306,112,46);

