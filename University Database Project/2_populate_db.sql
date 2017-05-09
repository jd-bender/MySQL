mysql> INSERT INTO COURSE (CourseNo, Course_Name, Department) VALUES ("134", "Database Systems", "Computer Science");
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO COURSE (CourseNo, Course_Name, Department) VALUES ("176", "Computer Architecture", "Computer Science");
Query OK, 1 row affected, 1 warning (0.00 sec)

mysql> INSERT INTO COURSE (CourseNo, Course_Name, Department) VALUES ("145", "VLSI", "Computer Science");
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO COURSE (CourseNo, Course_Name, Department) VALUES ("C11", "Intro to Programming", "Computer Science");
Query OK, 1 row affected (0.00 sec)

mysql> SELECT*FROM COURSE;
+----------+----------------------+------------------+
| CourseNo | Course_Name          | Department       |
+----------+----------------------+------------------+
| 134      | Database Systems     | Computer Science |
| 145      | VLSI                 | Computer Science |
| 176      | Computer Architectur | Computer Science |
| C11      | Intro to Programming | Computer Science |
+----------+----------------------+------------------+
4 rows in set (0.00 sec)


mysql> INSERT INTO SECTION (CourseNo, SectionNo) VALUES ("134", 1);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO SECTION (CourseNo, SectionNo) VALUES ("134", 2);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO SECTION (CourseNo, SectionNo) VALUES ("134", 3);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO SECTION (CourseNo, SectionNo) VALUES ("145", 1);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO SECTION (CourseNo, SectionNo) VALUES ("145", 2);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO SECTION (CourseNo, SectionNo) VALUES ("176", 1);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO SECTION (CourseNo, SectionNo) VALUES ("176", 2);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO SECTION (CourseNo, SectionNo) VALUES ("176", 3);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO SECTION (CourseNo, SectionNo) VALUES ("176", 4);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO SECTION (CourseNo, SectionNo) VALUES ("C11", 1);
Query OK, 1 row affected (0.00 sec)

mysql> SELECT*FROM SECTION;
+----------+-----------+
| CourseNo | SectionNo |
+----------+-----------+
| 134      |         1 |
| 134      |         2 |
| 134      |         3 |
| 145      |         1 |
| 145      |         2 |
| 176      |         1 |
| 176      |         2 |
| 176      |         3 |
| 176      |         4 |
| C11      |         1 |
+----------+-----------+
10 rows in set (0.00 sec)


mysql> INSERT INTO STUDENT (SSN, First_Name, Last_Name, Street, City, Zip) VALUES (234341234, "Jake", "Bender", "6000 J Street", "Sacramento", 95826);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO STUDENT (SSN, First_Name, Last_Name, Street, City, Zip) VALUES (234341111, "Bob", "Barker", "123 Sesame Street", "Denver", 45365);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO STUDENT (SSN, First_Name, Last_Name, Street, City, Zip) VALUES (234342222, "William", "Turner", "475 Last Road", "Cartegena", 60007);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO STUDENT (SSN, First_Name, Last_Name, Street, City, Zip) VALUES (234343333, "Jack", "Sparrow", "666 DJ Locker", "Bottom of the ocean", 67777);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO STUDENT (SSN, First_Name, Last_Name, Street, City, Zip) VALUES (234344444, "Donald", "Duck", "456 Quack Street", "Disney Castle", 68888);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO STUDENT (SSN, First_Name, Last_Name, Street, City, Zip) VALUES (234345555, "Bilbo", "Baggins", "827 Hobbit Lane", "Hobbiton", 69999);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO STUDENT (SSN, First_Name, Last_Name, Street, City, Zip) VALUES (234346666, "Luke", "Skywalker", "234 Cantina Blvd", "Tattooine", 68684);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT*FROM STUDENT;
+-----------+------------+-----------+-------------------+---------------------+-------                                                                                          +
| SSN       | First_Name | Last_Name | Street            | City                | Zip                                                                                             |
+-----------+------------+-----------+-------------------+---------------------+-------                                                                                          +
|  23434444 | Donald     | Duck      | 456 Quack Street  | Disney Castle       | 68888                                                                                           |
|  23434555 | Donald     | Duck      | 456 Quack Street  | Disney Castle       | 68888                                                                                           |
| 234341111 | Bob        | Barker    | 123 Sesame Street | Denver              | 45365                                                                                           |
| 234341234 | Jake       | Bender    | 6000 J Street     | Sacramento          | 95826                                                                                           |
| 234342222 | William    | Turner    | 475 Last Road     | Cartegena           | 60007                                                                                           |
| 234343333 | Jack       | Sparrow   | 666 DJ Locker     | Bottom of the ocean | 67777                                                                                           |
| 234345558 | Bilbo      | Baggins   | 827 Hobbit Lane   | Hobbiton            | 69999                                                                                           |
| 234346666 | Luke       | Skywalker | 234 Cantina Blvd  | Tattooine           | 68684                                                                                           |
+-----------+------------+-----------+-------------------+---------------------+-------                                                                                          +
8 rows in set (0.00 sec)


mysql> INSERT INTO ENROLLS (SSN, SectionNo, CourseNo) VALUES (234341111, 1, 134);
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO ENROLLS (SSN, SectionNo, CourseNo) VALUES (234341234, 1, 134);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO ENROLLS (SSN, SectionNo, CourseNo) VALUES (234341234, 2, 145);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO ENROLLS (SSN, SectionNo, CourseNo) VALUES (234343333, 1, 176);
Query OK, 1 row affected (0.00 sec)
	
mysql> INSERT INTO ENROLLS (SSN, SectionNo, CourseNo) VALUES (234346666, 1, 176);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ENROLLS (SSN, SectionNo, CourseNo) VALUES (234345558, 1, 145);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO ENROLLS (SSN, SectionNo, CourseNo) VALUES (234345558, 1, "C11");
Query OK, 1 row affected (0.00 sec)

mysql> SELECT*FROM ENROLLS;
+-----------+-----------+----------+
| SSN       | SectionNo | CourseNo |
+-----------+-----------+----------+
| 234341111 |         1 | 134      |
| 234341234 |         1 | 134      |
| 234341234 |         2 | 145      |
| 234343333 |         1 | 176      |
| 234346666 |         1 | 176      |
| 234345558 |         1 | 145      |
| 234345558 |         1 | C11      |
+-----------+-----------+----------+
7 rows in set (0.00 sec)


mysql> INSERT INTO EXAM (CourseNo, SectionNo, ExamNo) VALUES (134, 1, 1);
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO EXAM (CourseNo, SectionNo, ExamNo) VALUES (145, 2, 1);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO EXAM (CourseNo, SectionNo, ExamNo) VALUES (176, 1, 1);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO EXAM (CourseNo, SectionNo, ExamNo) VALUES ("C11", 1, 1);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO EXAM (CourseNo, SectionNo, ExamNo) VALUES (176, 1, 2);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO EXAM (CourseNo, SectionNo, ExamNo) VALUES (145, 1, 1);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO EXAM (CourseNo, SectionNo, ExamNo) VALUES (134, 2, 1);
Query OK, 1 row affected (0.00 sec)

mysql> SELECT*FROM EXAM;
+----------+-----------+--------+
| CourseNo | SectionNo | ExamNo |
+----------+-----------+--------+
| 134      |         1 |      1 |
| 134      |         2 |      1 |
| 145      |         1 |      1 |
| 145      |         2 |      1 |
| 176      |         1 |      1 |
| 176      |         1 |      2 |
| C11      |         1 |      1 |
+----------+-----------+--------+
7 rows in set (0.00 sec)


mysql> INSERT INTO TAKES (SSN, CourseNo, SectionNo, ExamNo, Result) VALUES (234341111, 134, 1, 1, "A");
Query OK, 1 row affected (0.03 sec)

mysql> INSERT INTO TAKES (SSN, CourseNo, SectionNo, ExamNo, Result) VALUES (234341111, 145, 2, 1, "A");
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO TAKES (SSN, CourseNo, SectionNo, ExamNo, Result) VALUES (234341234, 134, 1, 1, "C");
Query OK, 1 row affected (0.00 sec)

mysql> SELECT*FROM TAKES;
+-----------+----------+-----------+--------+--------+
| SSN       | CourseNo | SectionNo | ExamNo | Result |
+-----------+----------+-----------+--------+--------+
| 234341111 | 134      |         1 |      1 | A      |
| 234341111 | 145      |         2 |      1 | A      |
| 234341234 | 134      |         1 |      1 | C      |
+-----------+----------+-----------+--------+--------+
3 rows in set (0.00 sec)


mysql> INSERT INTO CLASS_ROOM (RoomNo, Building, Capacity) VALUES (1006, "Riverside Hall", 45);
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO CLASS_ROOM (RoomNo, Building, Capacity) VALUES (1008, "Amador Hall", 60);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO CLASS_ROOM (RoomNo, Building, Capacity) VALUES (1002, "Brighton Hall", 55);
Query OK, 1 row affected (0.00 sec)

mysql> SELECT*FROM CLASS_ROOM;
+--------+----------------+----------+
| RoomNo | Building       | Capacity |
+--------+----------------+----------+
|   1006 | Riverside Hall |       45 |
|   1008 | Amador Hall    |       60 |
|   1002 | Brighton Hall  |       55 |
+--------+----------------+----------+
3 rows in set (0.00 sec)


mysql> INSERT INTO CONDUCTED_IN (RoomNo, Building, CourseNo, SectionNo, ExamNo) VALUES (1006, "Riverside Hall", 134, 1, 1);
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO CONDUCTED_IN (RoomNo, Building, CourseNo, SectionNo, ExamNo) VALUES (1008, "Amador Hall", 145, 1, 1);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO CONDUCTED_IN (RoomNo, Building, CourseNo, SectionNo, ExamNo) VALUES (1002, "Brighton Hall", "C11", 1, 1);
Query OK, 1 row affected (0.00 sec)

mysql> SELECT*FROM CONDUCTED_IN;
+--------+----------------+----------+-----------+--------+
| RoomNo | Building       | CourseNo | SectionNo | ExamNo |
+--------+----------------+----------+-----------+--------+
|   1006 | Riverside Hall | 134      |         1 |      1 |
|   1008 | Amador Hall    | 145      |         1 |      1 |
|   1002 | Brighton Hall  | C11      |         1 |      1 |
+--------+----------------+----------+-----------+--------+
3 rows in set (0.00 sec)
