-- Q1. Get employee no and employee name who works in dept no 10 ?
SELECT
    EMP_NO,
    EMP_NAME
FROM
    EMPLOYEES
WHERE
    DEPT_NO = 10;

-- Q2. Display the employee names of those clerks whose salary > 2000 ?
SELECT
    EMP_NAME
FROM
    EMPLOYEES
WHERE
        JOB = 'CLERK'
    AND SALARY > 2000;

-- Q3. Display name and job of Salesperson & Clerks ?
SELECT
    EMP_NAME,
    JOB
FROM
    EMPLOYEES
WHERE
    JOB = 'SALESPERSON'
    OR JOB = 'CLERK'
ORDER BY
    JOB;

-- Q4. Display all details of employees whose salary between 2000 and 3000 ?
SELECT
    *
FROM
    EMPLOYEES
WHERE
        SALARY >= 2000
    AND SALARY <= 3000
ORDER BY
    SALARY;

-- Q5. Display all details of employees whose dept no is 10, 20, or 30
SELECT *
FROM
	EMPLOYEES
WHERE
	DEPT_NO IN (10 , 20, 30)
ORDER BY DEPT_NO;

-- Q6. Display employee names whose commission is NULL
SELECT
    EMP_NAME
FROM
    EMPLOYEES
WHERE
    COMMISSION IS NULL;

-- Q7. Display dept no and salary in ascending order of dept no and descending order of salary
SELECT
    DEPT_NO,
    SALARY
FROM
    EMPLOYEES
ORDER BY
    DEPT_NO ASC,
    SALARY DESC;

-- Q8. Display employee names having exactly two 'A's in their name
SELECT
    EMP_NAME
FROM
    EMPLOYEES
WHERE
    LENGTH(UPPER(EMP_NAME)) - LENGTH(REPLACE(
        UPPER(EMP_NAME),
        'A',
        ''
    )) = 2
ORDER BY
    EMP_NAME;

-- Q9. Display employee names whose name's second letter is 'B'
SELECT 
	EMP_NAME
FROM
	EMPLOYEES
WHERE
	UPPER(EMP_NAME) LIKE '_B%'
ORDER BY EMP_NAME;

-- Q10. Display employee names starting or ending with 'A'
SELECT
    EMP_NAME
FROM
    EMPLOYEES
WHERE
    UPPER(EMP_NAME) LIKE 'A%'
    OR UPPER(EMP_NAME) LIKE '%A'
ORDER BY
    EMP_NAME;

-- Q11. Display max, min, and avg salary for dept no 10
SELECT
    DEPT_NO,
    MAX(SALARY) AS MAX_SALARY,
    MIN(SALARY) AS MIN_SALARY,
    AVG(SALARY) AS AVG_SALARY
FROM
    EMPLOYEES
WHERE
    DEPT_NO = 10
GROUP BY
    DEPT_NO;

-- Q12. Display total number of employees in dept no 20
SELECT
    DEPT_NO,
    COUNT(*) AS TOTAL_EMPLOYEES
FROM
    EMPLOYEES
WHERE
    DEPT_NO = 20
GROUP BY
    DEPT_NO;

-- Q13. Display total salary paid to clerks
SELECT
    JOB,
    SUM(SALARY) AS TOTAL_SALARY_PAID
FROM
    EMPLOYEES
WHERE
    JOB = 'CLERK'
GROUP BY
    JOB;

-- Q14. Display system date
SELECT
    SYSDATE AS "SYSTEM DATE"
FROM
    DUAL;

-- Q15. Display result of (12*12)/13
SELECT
    ( 12 * 12 ) / 13 AS RESULT
FROM
    DUAL;

-- Q16. Display all details of employee named 'RAJ'
SELECT
    *
FROM
    EMPLOYEES
WHERE
    UPPER(EMP_NAME) = 'RAJ';

-- Q17 (EXTRA). Create table EMPLOYEES
CREATE TABLE EMPLOYEES (
    EMP_NO     NUMBER,
    EMP_NAME   VARCHAR2(100),
    JOB        VARCHAR2(50),
    SALARY     DECIMAL(10, 2),
    COMMISSION DECIMAL(10, 2),
    DEPT_NO    NUMBER
);

-- Q18 (EXTRA). Insert sample records into EMPLOYEES
INSERT ALL
    INTO employees (emp_no, emp_name, job, salary, commission, dept_no)
    VALUES (1, 'AMIT', 'SOFTWARE ENGINEER', 3000.20, NULL, 10)

    INTO employees (emp_no, emp_name, job, salary, commission, dept_no)
    VALUES (2, 'ABHINAV', 'CLERK', 2000.43, 200.10, 30)

    INTO employees (emp_no, emp_name, job, salary, commission, dept_no)
    VALUES (3, 'RAJ', 'SALESPERSON', 2500.90, NULL, 10)

    INTO employees (emp_no, emp_name, job, salary, commission, dept_no)
    VALUES (4, 'BHAVYA', 'PRODUCT MANAGER', 5000.10, 500.20, 20)

    INTO employees (emp_no, emp_name, job, salary, commission, dept_no)
    VALUES (5, 'MANYA', 'CLERK', 1200.40, NULL, 30)
SELECT * FROM dual;

-- Q19 (EXTRA). Display all records from EMPLOYEES
SELECT
    *
FROM
    EMPLOYEES;

-- Q20 (EXTRA). Drop table EMPLOYEES
DROP TABLE EMPLOYEES;