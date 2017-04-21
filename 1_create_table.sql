mysql> CREATE TABLE COURSE (CourseNo varchar(20), Course_Name varchar(20), Department varchar(20));
Query OK, 0 rows affected (0.05 sec)

mysql> CREATE TABLE SECTION (CourseNo varchar(20), SectionNo int);
Query OK, 0 rows affected (0.04 sec)

mysql> CREATE TABLE ENROLLS (SSN int, SectionNo int, CourseNo varchar(20));
Query OK, 0 rows affected (0.03 sec)

mysql> CREATE TABLE STUDENT (SSN int, First_Name varchar(20), Last_Name varchar(20), Street varchar(20), City varchar(20), Zip int);
Query OK, 0 rows affected (0.02 sec)

mysql> CREATE TABLE TAKES (SSN int, CourseNo varchar(20), SectionNo int, ExamNo int, Result varchar(20));
Query OK, 0 rows affected (0.03 sec)

mysql> CREATE TABLE EXAM (CourseNo varchar(20), SectionNo int, ExamNo int);
Query OK, 0 rows affected (0.02 sec)

mysql> CREATE TABLE CONDUCTED_IN (RoomNo int, Building varchar(20), CourseNo varchar(20), SectionNo int, ExamNo int);
Query OK, 0 rows affected (0.03 sec)

mysql> CREATE TABLE CLASS_ROOM (RoomNo int, Building varchar(20), Capacity int);
Query OK, 0 rows affected (0.01 sec)

mysql> ALTER TABLE COURSE ADD PRIMARY KEY (CourseNo);
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE SECTION ADD FOREIGN KEY (CourseNo) REFERENCES COURSE(CourseNo);
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE SECTION ADD UNIQUE KEY (CourseNo, SectionNo);
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE ENROLLS ADD FOREIGN KEY (CourseNo, SectionNo) REFERENCES SECTION(CourseNo, SectionNo);
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE STUDENT ADD PRIMARY KEY (SSN);
Query OK, 0 rows affected (0.07 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE ENROLLS ADD FOREIGN KEY (SSN) REFERENCES STUDENT(SSN);
Query OK, 0 rows affected (0.08 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE TAKES ADD FOREIGN KEY (SSN) REFERENCES STUDENT(SSN);
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE EXAM ADD UNIQUE KEY (CourseNo, SectionNo, ExamNo);
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE TAKES ADD FOREIGN KEY (CourseNo, SectionNo, ExamNo) REFERENCES EXAM(CourseNo, SectionNo, ExamNo);
Query OK, 0 rows affected (0.08 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE CONDUCTED_IN ADD FOREIGN KEY (CourseNo, SectionNo, ExamNo) REFERENCES EXAM(CourseNo, SectionNo, ExamNo);
Query OK, 0 rows affected (0.08 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE CLASS_ROOM ADD UNIQUE KEY (RoomNo, Building);
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE CONDUCTED_IN ADD FOREIGN KEY (RoomNo, Building) REFERENCES CLASS_ROOM(RoomNo, Building);
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0
