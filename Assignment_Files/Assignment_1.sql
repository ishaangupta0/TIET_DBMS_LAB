-- Q1. Create table Student (Rno, Name, DOB, Gender, Class, College, City, Marks)
CREATE TABLE STUDENTS (
    ROLL_NO NUMBER,
    NAME    VARCHAR2(100),
    DOB     DATE,
    GENDER  VARCHAR2(50),
    CLASS   VARCHAR2(50),
    COLLEGE VARCHAR2(50),
    CITY    VARCHAR2(50),
    MARKS   NUMBER
);

-- Q2. Insert 5 records in student table
INSERT ALL
     INTO students (ROLL_NO, NAME, DOB, GENDER, CLASS, COLLEGE, CITY, MARKS)
     VALUES (1, 'USER_1', DATE '2005-01-10', 'MALE', 'CSE', 'TIET', 'PATIALA', 40)

     INTO students (ROLL_NO, NAME, DOB, GENDER, CLASS, COLLEGE, CITY, MARKS)
     VALUES (2, 'USER_2', DATE '2005-02-05', 'MALE', 'CSE', 'TIET', 'NABHA', 30)

     INTO students (ROLL_NO, NAME, DOB, GENDER, CLASS, COLLEGE, CITY, MARKS)
     VALUES (9, 'USER_3', DATE '2006-03-08', 'FEMALE', 'MECH', 'TIET', 'PATIALA', 50)

     INTO students (ROLL_NO, NAME, DOB, GENDER, CLASS, COLLEGE, CITY, MARKS)
     VALUES (4, 'USER_4', DATE '2004-04-01', 'FEMALE', 'CIVIL', 'TIET', 'LUDHIANA', 20)
       
     INTO students (ROLL_NO, NAME, DOB, GENDER, CLASS, COLLEGE, CITY, MARKS)
     VALUES (5, 'USER_5', DATE '2006-05-17', 'MALE', 'ARCH', 'TIET', 'AMRITSAR', 10)
SELECT * FROM dual;

-- Q3. Display the information of all the students
SELECT
    *
FROM
    STUDENTS;

-- Q4. Display the detail structure of student table
DESC STUDENTS;

-- Q5. Display Rno, Name and Class information of 'Patiala' students.
SELECT
    ROLL_NO,
    NAME,
    CLASS
FROM
    STUDENTS
WHERE
    CITY = 'PATIALA';

-- Q6. Display information on ascending order of marks
SELECT
    *
FROM
    STUDENTS
ORDER BY
    MARKS;

-- Q7. Change the marks of Rno 5 to 89.
UPDATE STUDENTS
SET
    MARKS = 89
WHERE
    ROLL_NO = 5;

-- Q8. Change the name and city of Rno 9.
UPDATE STUDENTS
SET
    NAME = 'TEST',
    CITY = 'AMRITSAR'
WHERE
    ROLL_NO = 9;

-- Q9. Delete the information of 'Amritsar' city records
DELETE FROM STUDENTS
WHERE
    CITY = 'AMRITSAR';

-- Q10. Delete the records of student where marks < 30.
DELETE FROM STUDENTS
WHERE
    MARKS < 30;

-- Q11 (EXTRA). Add email and phone columns to students table.
ALTER TABLE STUDENTS ADD (
    EMAIL VARCHAR(50),
    PHONE VARCHAR(20)
);
    
-- Q12 (EXTRA). Modify the structure of student table to set NOT NULL constraints
ALTER TABLE STUDENTS MODIFY (
    ROLL_NO NUMBER NOT NULL,
    NAME VARCHAR2(100) NOT NULL
);

-- Q13 (EXTRA). Display first 3 records from student table.
SELECT
    *
FROM
    STUDENTS
FETCH FIRST 3 ROWS ONLY;

-- Q14 (EXTRA). Truncate table students, deletes only rows.
TRUNCATE TABLE STUDENTS;

-- Q15 (EXTRA). Drop table students, delete entire table.
DROP TABLE STUDENTS;