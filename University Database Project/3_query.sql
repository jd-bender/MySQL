1. mysql> SELECT STUDENT.SSN, STUDENT.First_Name, STUDENT.Last_Name, ENROLLS.CourseNo 
          FROM STUDENT INNER JOIN ENROLLS ON STUDENT.SSN = ENROLLS.SSN 
          WHERE CourseNo = "176";         //176=Computer Architecture

2. mysql> SELECT STUDENT.SSN, STUDENT.First_Name, STUDENT.Last_Name, ENROLLS.CourseNo, ENROLLS.SectionNo 
          FROM STUDENT INNER JOIN ENROLLS ON STUDENT.SSN = ENROLLS.SSN 
          WHERE CourseNo = "145";         //145=VLSI

4. mysql> SELECT STUDENT.SSN, STUDENT.First_Name, STUDENT.Last_Name 
          FROM STUDENT INNER JOIN TAKES ON STUDENT.SSN = TAKES.SSN 
          WHERE Result = "A";

5. mysql> SELECT EXAM.CourseNo, EXAM.SectionNo, EXAM.ExamNo, CONDUCTED_IN.RoomNo, CONDUCTED_IN.Building 
          FROM EXAM INNER JOIN CONDUCTED_IN ON EXAM.CourseNo = CONDUCTED_IN.CourseNo AND EXAM.SectionNo = CONDUCTED_IN.SectionNo AND EXAM.ExamNo = CONDUCTED_IN.ExamNo 
          WHERE Building = "Riverside Hall";

6. mysql> SELECT STUDENT.SSN, STUDENT.First_Name, STUDENT.Last_Name, ENROLLS.CourseNo, ENROLLS.SectionNo 
          FROM STUDENT INNER JOIN ENROLLS ON STUDENT.SSN = ENROLLS.SSN 
          WHERE CourseNo = "C11";

7. mysql> SELECT COURSE.Course_Name, COURSE.CourseNo, SECTION.SectionNo 
          FROM COURSE INNER JOIN SECTION ON COURSE.CourseNo = SECTION.CourseNo 
          WHERE SectionNo >= 2;

