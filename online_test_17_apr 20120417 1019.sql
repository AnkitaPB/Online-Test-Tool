-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.32-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema onlinetest
--

CREATE DATABASE IF NOT EXISTS onlinetest;
USE onlinetest;

--
-- Definition of table `attempt`
--

DROP TABLE IF EXISTS `attempt`;
CREATE TABLE `attempt` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `test_key` int(10) unsigned NOT NULL,
  `roll_no` varchar(45) NOT NULL,
  `student_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=267 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attempt`
--

/*!40000 ALTER TABLE `attempt` DISABLE KEYS */;
INSERT INTO `attempt` (`id`,`test_key`,`roll_no`,`student_name`) VALUES 
 (1,1,'1','naina'),
 (2,1,'1','abc'),
 (3,2,'1','abc'),
 (4,3,'1','abc'),
 (5,4,'1','abc'),
 (6,2,'1','abcd'),
 (7,6,'1','abcd'),
 (8,1,'1','abcd'),
 (9,5,'1','abcd'),
 (10,1,'12','jahsgjhsa'),
 (11,2,'12','jahsgjhsa'),
 (12,1,'34','sdbnvnbds'),
 (13,3,'34','sdbnvnbds'),
 (14,2,'45','sdsdd'),
 (15,2,'23','jhgh'),
 (16,5,'23','jhgh'),
 (17,2,'56','jghgf'),
 (18,7,'56','jghgf'),
 (19,1,'89','sdfsdf'),
 (20,1,'43','asdas'),
 (21,1,'12','asds'),
 (22,2,'12','asds'),
 (23,3,'12','asds'),
 (24,4,'12','asds'),
 (25,9,'12','asds'),
 (26,1,'1','ankita'),
 (27,2,'1','ankita'),
 (28,8,'1','ankita'),
 (29,1,'null','ankita'),
 (30,2,'null','ankita'),
 (31,3,'null','ankita'),
 (32,7,'null','ankita'),
 (33,1,'1','aaaa'),
 (34,2,'1','aaaa'),
 (35,3,'1','aaaa'),
 (36,4,'1','aaaa'),
 (37,9,'1','aaaa'),
 (38,1,'1','ss'),
 (39,2,'1','ss'),
 (40,5,'1','ss'),
 (41,18,'1','ss'),
 (42,2,'1','aaa'),
 (43,3,'1','aaa'),
 (44,29,'1','Ankita'),
 (45,30,'1','Ankita'),
 (46,19,'1','naya'),
 (47,2,'1','naya'),
 (48,1,'1','aas'),
 (49,2,'1','aas'),
 (50,1,'1','dfg'),
 (51,1,'1','aws'),
 (52,1,'12','kanchan'),
 (53,2,'12','kanchan'),
 (54,1,'1','abc'),
 (55,3,'1','abc'),
 (56,4,'1','abc'),
 (57,2,'1','abc'),
 (58,15,'1','abc'),
 (59,1,'05','Hemangi Anil Bhole'),
 (60,2,'05','Hemangi Anil Bhole'),
 (61,4,'05','Hemangi Anil Bhole'),
 (62,1,'9','Arti Chandrakant Kapade'),
 (63,2,'9','Arti Chandrakant Kapade'),
 (64,7,'05','Hemangi Anil Bhole'),
 (65,1,'02','Ansari Md. Nabi Azad S.'),
 (66,3,'9','Arti Chandrakant Kapade'),
 (67,4,'9','Arti Chandrakant Kapade'),
 (68,2,'02','Ansari Md. Nabi Azad S.'),
 (69,8,'05','Hemangi Anil Bhole'),
 (70,1,'03','gauresh'),
 (71,2,'03','gauresh'),
 (72,3,'02','Ansari Md. Nabi Azad S.'),
 (73,3,'03','gauresh'),
 (74,4,'02','Ansari Md. Nabi Azad S.'),
 (75,5,'02','Ansari Md. Nabi Azad S.'),
 (76,6,'05','Hemangi Anil Bhole'),
 (77,5,'9','Arti Chandrakant Kapade'),
 (78,9,'05','Hemangi Anil Bhole'),
 (79,6,'9','Arti Chandrakant Kapade'),
 (80,6,'02','Ansari Md. Nabi Azad S.'),
 (81,5,'03','gauresh'),
 (82,11,'05','Hemangi Anil Bhole'),
 (83,7,'9','Arti Chandrakant Kapade'),
 (84,12,'05','Hemangi Anil Bhole'),
 (85,4,'03','gauresh'),
 (86,7,'02','Ansari Md. Nabi Azad S.'),
 (87,1,'17','Nemade Chetan M.'),
 (88,6,'03','gauresh'),
 (89,8,'9','Arti Chandrakant Kapade'),
 (90,8,'02','Ansari Md. Nabi Azad S.'),
 (91,2,'17','Nemade Chetan M.'),
 (92,9,'9','Arti Chandrakant Kapade'),
 (93,14,'05','Hemangi Anil Bhole'),
 (94,7,'03','gauresh'),
 (95,9,'02','Ansari Md. Nabi Azad S.'),
 (96,10,'9','Arti Chandrakant Kapade'),
 (97,1,'10','bhushan'),
 (98,15,'05','Hemangi Anil Bhole'),
 (99,10,'02','Ansari Md. Nabi Azad S.'),
 (100,8,'03','gauresh'),
 (101,3,'17','Nemade Chetan M.'),
 (102,2,'10','bhushan'),
 (103,4,'17','Nemade Chetan M.'),
 (104,11,'9','Arti Chandrakant Kapade'),
 (105,3,'10','bhushan'),
 (106,16,'05','Hemangi Anil Bhole'),
 (107,5,'17','Nemade Chetan M.'),
 (108,4,'10','bhushan'),
 (109,11,'02','Ansari Md. Nabi Azad S.'),
 (110,5,'10','bhushan'),
 (111,12,'02','Ansari Md. Nabi Azad S.'),
 (112,12,'9','Arti Chandrakant Kapade'),
 (113,17,'05','Hemangi Anil Bhole'),
 (114,18,'05','Hemangi Anil Bhole'),
 (115,6,'17','Nemade Chetan M.'),
 (116,8,'10','bhushan'),
 (117,13,'02','Ansari Md. Nabi Azad S.'),
 (118,13,'9','Arti Chandrakant Kapade'),
 (119,20,'05','Hemangi Anil Bhole'),
 (120,10,'10','bhushan'),
 (121,21,'05','Hemangi Anil Bhole'),
 (122,14,'9','Arti Chandrakant Kapade'),
 (123,7,'17','Nemade Chetan M.'),
 (124,9,'03','gauresh'),
 (125,15,'9','Arti Chandrakant Kapade'),
 (126,14,'02','Ansari Md. Nabi Azad S.'),
 (127,22,'05','Hemangi Anil Bhole'),
 (128,11,'10','bhushan'),
 (129,10,'03','gauresh'),
 (130,23,'05','Hemangi Anil Bhole'),
 (131,1,'11','Kardame Asad Arshad'),
 (132,2,'11','Kardame Asad Arshad'),
 (133,15,'02','Ansari Md. Nabi Azad S.'),
 (134,3,'11','Kardame Asad Arshad'),
 (135,24,'05','Hemangi Anil Bhole'),
 (136,11,'03','gauresh'),
 (137,16,'9','Arti Chandrakant Kapade'),
 (138,25,'05','Hemangi Anil Bhole'),
 (139,4,'11','Kardame Asad Arshad'),
 (140,16,'02','Ansari Md. Nabi Azad S.'),
 (141,5,'11','Kardame Asad Arshad'),
 (142,17,'9','Arti Chandrakant Kapade'),
 (143,6,'11','Kardame Asad Arshad'),
 (144,17,'02','Ansari Md. Nabi Azad S.'),
 (145,26,'05','Hemangi Anil Bhole'),
 (146,18,'02','Ansari Md. Nabi Azad S.'),
 (147,18,'9','Arti Chandrakant Kapade'),
 (148,12,'03','gauresh'),
 (149,19,'02','Ansari Md. Nabi Azad S.'),
 (150,13,'10','bhushan'),
 (151,7,'11','Kardame Asad Arshad'),
 (152,28,'05','Hemangi Anil Bhole'),
 (153,20,'02','Ansari Md. Nabi Azad S.'),
 (154,29,'05','Hemangi Anil Bhole'),
 (155,30,'10','bhushan'),
 (156,21,'02','Ansari Md. Nabi Azad S.'),
 (157,19,'9','Arti Chandrakant Kapade'),
 (158,9,'17','Nemade Chetan M.'),
 (159,13,'03','gauresh'),
 (160,10,'17','Nemade Chetan M.'),
 (161,8,'11','Kardame Asad Arshad'),
 (162,26,'10','bhushan'),
 (163,30,'05','Hemangi Anil Bhole'),
 (164,22,'02','Ansari Md. Nabi Azad S.'),
 (165,3,'05','Hemangi Anil Bhole'),
 (166,25,'10','bhushan'),
 (167,14,'03','gauresh'),
 (168,23,'02','Ansari Md. Nabi Azad S.'),
 (169,9,'11','Kardame Asad Arshad'),
 (170,5,'05','Hemangi Anil Bhole'),
 (171,11,'17','Nemade Chetan M.'),
 (172,24,'02','Ansari Md. Nabi Azad S.'),
 (173,13,'05','Hemangi Anil Bhole'),
 (174,15,'03','gauresh'),
 (175,20,'9','Arti Chandrakant Kapade'),
 (176,19,'05','Hemangi Anil Bhole'),
 (177,12,'17','Nemade Chetan M.'),
 (178,25,'02','Ansari Md. Nabi Azad S.'),
 (179,26,'02','Ansari Md. Nabi Azad S.'),
 (180,11,'11','Kardame Asad Arshad'),
 (181,13,'17','Nemade Chetan M.'),
 (182,27,'05','Hemangi Anil Bhole'),
 (183,21,'9','Arti Chandrakant Kapade'),
 (184,16,'03','gauresh'),
 (185,27,'02','Ansari Md. Nabi Azad S.'),
 (186,14,'17','Nemade Chetan M.'),
 (187,10,'11','Kardame Asad Arshad'),
 (188,23,'10','bhushan'),
 (189,28,'02','Ansari Md. Nabi Azad S.'),
 (190,15,'17','Nemade Chetan M.'),
 (191,22,'9','Arti Chandrakant Kapade'),
 (192,29,'02','Ansari Md. Nabi Azad S.'),
 (193,21,'10','bhushan'),
 (194,23,'9','Arti Chandrakant Kapade'),
 (195,30,'02','Ansari Md. Nabi Azad S.'),
 (196,12,'11','Kardame Asad Arshad'),
 (197,16,'17','Nemade Chetan M.'),
 (198,20,'10','bhushan'),
 (199,24,'9','Arti Chandrakant Kapade'),
 (200,10,'05','Hemangi Anil Bhole'),
 (201,18,'10','bhushan'),
 (202,17,'17','Nemade Chetan M.'),
 (203,19,'10','bhushan'),
 (204,25,'9','Arti Chandrakant Kapade'),
 (205,17,'03','gauresh'),
 (206,17,'10','bhushan'),
 (207,18,'03','gauresh'),
 (208,16,'10','bhushan'),
 (209,18,'17','Nemade Chetan M.'),
 (210,13,'11','Kardame Asad Arshad'),
 (211,19,'03','gauresh'),
 (212,15,'10','bhushan'),
 (213,14,'10','bhushan'),
 (214,19,'17','Nemade Chetan M.'),
 (215,26,'9','Arti Chandrakant Kapade'),
 (216,12,'10','bhushan'),
 (217,20,'03','gauresh'),
 (218,27,'9','Arti Chandrakant Kapade'),
 (219,27,'03','gauresh'),
 (220,20,'17','Nemade Chetan M.'),
 (221,9,'10','bhushan'),
 (222,28,'03','gauresh'),
 (223,6,'10','bhushan'),
 (224,29,'03','gauresh'),
 (225,14,'11','Kardame Asad Arshad'),
 (226,30,'03','gauresh'),
 (227,29,'10','bhushan'),
 (228,28,'9','Arti Chandrakant Kapade'),
 (229,21,'17','Nemade Chetan M.'),
 (230,28,'10','bhushan'),
 (231,21,'03','gauresh'),
 (232,29,'9','Arti Chandrakant Kapade'),
 (233,27,'10','bhushan'),
 (234,15,'11','Kardame Asad Arshad'),
 (235,24,'10','bhushan'),
 (236,22,'17','Nemade Chetan M.'),
 (237,30,'9','Arti Chandrakant Kapade'),
 (238,22,'10','bhushan'),
 (239,23,'17','Nemade Chetan M.'),
 (240,16,'11','Kardame Asad Arshad'),
 (241,22,'03','gauresh'),
 (242,23,'03','gauresh'),
 (243,24,'17','Nemade Chetan M.'),
 (244,24,'03','gauresh'),
 (245,25,'03','gauresh'),
 (246,17,'11','Kardame Asad Arshad'),
 (247,25,'17','Nemade Chetan M.'),
 (248,18,'11','Kardame Asad Arshad'),
 (249,26,'03','gauresh'),
 (250,26,'17','Nemade Chetan M.'),
 (251,19,'11','Kardame Asad Arshad'),
 (252,27,'17','Nemade Chetan M.'),
 (253,28,'17','Nemade Chetan M.'),
 (254,20,'11','Kardame Asad Arshad'),
 (255,29,'17','Nemade Chetan M.'),
 (256,21,'11','Kardame Asad Arshad'),
 (257,30,'17','Nemade Chetan M.'),
 (258,22,'11','Kardame Asad Arshad'),
 (259,23,'11','Kardame Asad Arshad'),
 (260,24,'11','Kardame Asad Arshad'),
 (261,25,'11','Kardame Asad Arshad'),
 (262,26,'11','Kardame Asad Arshad'),
 (263,27,'11','Kardame Asad Arshad'),
 (264,28,'11','Kardame Asad Arshad'),
 (265,29,'11','Kardame Asad Arshad'),
 (266,30,'11','Kardame Asad Arshad');
/*!40000 ALTER TABLE `attempt` ENABLE KEYS */;


--
-- Definition of table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `student_key` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `student_name` varchar(45) NOT NULL,
  `subject` varchar(45) NOT NULL,
  `result` varchar(45) NOT NULL,
  `user_key` varchar(45) NOT NULL,
  `roll_no` varchar(45) NOT NULL,
  `branch` varchar(45) NOT NULL,
  PRIMARY KEY (`student_key`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` (`student_key`,`student_name`,`subject`,`result`,`user_key`,`roll_no`,`branch`) VALUES 
 (27,'Hemangi Anil Bhole','C','13','1','05','IT'),
 (29,'Arti Chandrakant Kapade','C','12','1','9','S.E.-I.T.'),
 (32,'Ansari Md. Nabi Azad S.','C','12','1','02','IT'),
 (33,'gauresh','C','13','1','03',' I.T'),
 (34,'Nemade Chetan M.','C','12','1','17','SEIT'),
 (35,'bhushan','C','12','1','10','IT'),
 (36,'Kardame Asad Arshad','C','15','1','11','SE (IT)');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;


--
-- Definition of table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `test_key` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(45) NOT NULL,
  PRIMARY KEY (`test_key`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` (`test_key`,`subject_name`) VALUES 
 (1,'C'),
 (2,'C++'),
 (3,'OMD'),
 (4,'AUP'),
 (5,'OS');
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;


--
-- Definition of table `test`
--

DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `test_key` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(45) NOT NULL,
  `question` varchar(300) NOT NULL,
  `op1` varchar(45) NOT NULL,
  `op2` varchar(45) NOT NULL,
  `op3` varchar(45) DEFAULT NULL,
  `op4` varchar(45) NOT NULL,
  `ans` varchar(45) NOT NULL,
  `mark` int(10) unsigned NOT NULL,
  `s_ans` varchar(45) NOT NULL DEFAULT 'Unattempt',
  `subject_test_key` int(10) unsigned NOT NULL,
  PRIMARY KEY (`test_key`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` (`test_key`,`subject`,`question`,`op1`,`op2`,`op3`,`op4`,`ans`,`mark`,`s_ans`,`subject_test_key`) VALUES 
 (1,'C','Who is the inventor og C?','A: Dennies Rechie','B:James Gosling','C: John Mrak','D: Smith','A',1,'A',1),
 (2,'C','Select Arithmatic Operator?','A: +','B:--','C:++','D: NOT','A',1,'A',1),
 (3,'C','Select Bitwise OPerator?','A: Left Shift','B: OR','C: AND','D: OR','A',1,'A',1),
 (4,'C','Select Comparison Operator?','A: <=','B:++','C:--','D: ||','A',1,'A',1),
 (5,'C','Select Logical Operator?','A: ||','B: <>','C: <=','D: >=','A',1,'A',1),
 (6,'C',' main()<br> \r\n     { <br>\r\n         int c=- -2; <br>\r\n          printf(\"c=%d\",c); <br>\r\n    } ','A:2','B:3','C:4','D:5','A',1,'C',1),
 (7,'C','main()  <br>\r\n     { <br>\r\n         int i=10;  <br>\r\n         i=!i>14; <br>\r\n        printf(\"i=%d\",i) ;  <br>\r\n    } <br>','A: 16','B: 0','C:  10','D: 9','B',2,'C',1),
 (8,'C','main()  <br>\r\n     { <br>\r\n        printf( \"\\nab\"); <br>\r\n        printf( \"\\bsi\") ; <br>\r\n        printf(\"\\rha\") ;  <br>\r\n    } <br>','A:  ab','B: bsi','C: hai','D: None of these','C',2,'A',1),
 (9,'C','main() <br>\r\n     { <br>\r\n         int i=5;  <br>\r\n        printf(\"%d%d%d%d%d%d\",i++,i--,++i,--i,i) ;  <br>\r\n    } <br>','A: 45545 ','B: 5545','C: 6543','D: None of these','A',2,'C',1),
 (10,'C','main() \r\n    { \r\n        printf(\"%p\",main) ; \r\n    } ','A:  infinite loop','B: Some address will be printed. ','C: compiler error','D: None of these','B',1,'B',1),
 (11,'C','#define clrscr() 100 <br>\r\n    main() <br>\r\n    { <br>\r\n         clrscr(); <br>\r\n        printf( \"%d\\n \",clrscr()) ; <br>\r\n    } <br>','A: clear screen','B: No output','C: Error','D: None of these','A',1,'C',1),
 (12,'C','#include <stdio.h> <br>\r\n    #define a 10 <br>\r\n    main() <br>\r\n    { <br>\r\n         #define a 50 <br>\r\n        printf( \"%d\",a) ; <br>\r\n    } ','A: 50','B:60','C: Error','D: None of these','A',1,'A',1),
 (13,'C',' void main() <br>\r\n         { <br>\r\n                  int i=5; <br>\r\n                  printf(\"%d\",i+++++i); <br>\r\n         } ','A: No Error','B:  Compiler Error','C: 8','D: None of these','B',1,'C',1),
 (14,'C','    main() <br>\r\n          { <br>\r\n          int i=-1; <br>\r\n          +i; <br>\r\n         printf(\"i = %d, +i = %d \\n\",i,+i); <br>\r\n          } ','A: i = -1, +i = -1 ','B: i = -1, +i = -2 ','C: i = -2, +i = -3 ','D: None of these','A',1,'A',1),
 (15,'C','#include<stdio.h>  <br>\r\n         main() <br>\r\n          { <br>\r\n            register i=5; <br>\r\n            char j[]= \"hello\"; <br>\r\n            printf(\"%s  %d\",j,i); <br>\r\n         } ','A: hello 5 ','B: hello','C: No output','D: hello 6','A',1,'A',1),
 (16,'C','main() <br>\r\n         { <br>\r\n          int i=5,j=6,z; <br>\r\n          printf(\"%d\",i+++j) ;<br> \r\n          } ','A:  9','B: 11','C:10','D:8','B',1,'C',1),
 (17,'C','main(){  <br>\r\n          unsigned int i; <br>\r\n          for(i=1;i>-2;i--) <br>\r\n                  printf(\"c aptitude\");  <br>\r\n         } ','A: Error','B: Loop does not execute','C: C aptitude','D: None of these','B',1,'A',1),
 (18,'C','void main() <br>\r\n         { <br>\r\n                  int i=i++,j=j++,k=k++ ; <br>\r\n                 printf(“%d%d%d”,i,j,k ); <br>\r\n         } ','A: Garbage value','B: no output','C: 2','D: None of these','A',1,'A',1),
 (19,'C',' void main() <br>\r\n         { <br>\r\n                  static int i=i++, j=j++, k =k++; <br>\r\n                 printf(“i = %d j = %d k = %d”, i, j, k);  <br>\r\n         } ','A: i = 1 j = 1 k = 2','B: i = 1 j = 1 k = 1 ','C: i = 1 j = 1 k = 3 ','D: None of these','B',1,'D',1),
 (20,'C ','Is the following statement a declaration/definition. Find what does it mean? \r\n         <br>        int (*x)[10]; ','A:  Definition. ','B: Declaration','C: 10 ','D: None of these','A',1,'B',1),
 (21,'C','main() <br>\r\n         { <br>\r\n                 char p[ ]=\"%d\\n\"; <br>\r\n                 p[1] = \'c\'; <br>\r\n                 printf(p,65); <br>\r\n         } ','A: 65','B: A','C: a','D: None of these','B',1,'D',1),
 (22,'C','main() <br>\r\n         { <br>\r\n         int i=5; <br>\r\n         printf(“%d”,i=++i ==6); <br>\r\n         } \r\n','A: 2','B: 3','C: 1','D: None of these','C',1,'D',1),
 (23,'C','main() <br>\r\n         { <br>\r\n                 char p[ ]=\"%d\\n\"; <br>\r\n                 p[1] = \'c\'; <br>\r\n                 printf(p,65); <br>\r\n         }','A : A','B: 65','C: 67','D: None of these','A',1,'D',1),
 (24,'C','Is the following code legal?  <br>\r\n         struct a <br>\r\n           { <br>\r\n                 int x;  <br>\r\n                  struct a b; <br> \r\n           } ','A:  Error','B:  No ','C: Yes','D: None of these','B',1,'B',1),
 (25,'C','main() <br>\r\n          { <br>\r\n         static int var = 5; <br>\r\n          printf( \"%d \",var--); <br>\r\n          if(var) <br>\r\n                  main(); <br> \r\n          } ','A: 5 4 3 2 1 ','B: 1 2 3 4 5 ','C: 5','D: None of these','A',1,'A',1),
 (26,'C','Which header file should be included to use functions like malloc() and calloc()?\r\n','A: memory.h','B: stdlib.h','C: string.h','D: dos.h','B',1,'B',1),
 (27,'C','Specify the 2 library functions to dynamically allocate memory?\r\n','A: malloc() and memalloc()','B: alloc() and memalloc()','C: malloc() and calloc()','D: memalloc() and faralloc()','B',1,'C',1),
 (28,'C','Is the following statement a declaration or definition?\r\nextern int i;\r\n','A: Declaration','B: Definition','C: Function','D: Error','A',1,'A',1),
 (29,'C','When we mention the prototype of a function?\r\n','A: Defining','B: Declaring','C: Prototyping','D: Calling','B',1,'D',1),
 (30,'C','Which of the following cannot be checked in a switch-case statement?\r\n','A: Integer','B: Float','C: enum','D: Character','B',1,'',1);
/*!40000 ALTER TABLE `test` ENABLE KEYS */;


--
-- Definition of table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_key` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `subject` varchar(45) NOT NULL,
  PRIMARY KEY (`user_key`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`user_key`,`user_name`,`password`,`subject`) VALUES 
 (1,'ankita','ankitakolhe','C'),
 (2,'archna','archnachitte','AUP'),
 (3,'nayana','zopenayana','Aptitude');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
