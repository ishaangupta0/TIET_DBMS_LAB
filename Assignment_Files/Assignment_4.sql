-- Q1. Display the system date
SELECT
    SYSDATE AS "SYSTEM DATE"
FROM
    DUAL;

-- Q2. Display current day
SELECT
    TO_CHAR(SYSDATE, 'DAY') AS CURRENT_DAY
FROM
    DUAL;

-- Q3. Display current month and spell out year
SELECT
    TO_CHAR(SYSDATE, 'MONTH YYYY') AS MONTH_YEAR
FROM
    DUAL;    

-- Q4. Display spell out current date
SELECT
    TO_CHAR(SYSDATE, 'DD MONTH YYYY') AS FULL_DATE
FROM
    DUAL;

-- Q5. Check whether it is AM or PM right now
SELECT
    TO_CHAR(SYSDATE, 'AM') AS AM_PM
FROM
    DUAL;

-- Q6. Display the date of next Friday
SELECT
    NEXT_DAY(SYSDATE, 'FRIDAY') AS NEXT_FRIDAY
FROM
    DUAL;

-- Q7. Round the system date on month
SELECT
    ROUND(SYSDATE, 'MONTH') AS ROUND_MONTH
FROM
    DUAL;

-- Q8. Truncate the system date on month
SELECT
    TRUNC(SYSDATE, 'MONTH') AS TRUNC_MONTH
FROM
    DUAL;

-- Q9. Round the system date on year
SELECT
    ROUND(SYSDATE, 'YEAR') AS ROUND_YEAR
FROM
    DUAL;

-- Q10. Truncate the system date on year
SELECT
    TRUNC(SYSDATE, 'YEAR') AS TRUNC_YEAR
FROM
    DUAL;

-- Q11. Find the day after three days
SELECT
    SYSDATE + 3 AS AFTER_THREE_DAYS
FROM
    DUAL;

-- Q12. Create an EMP table (Empno number, Name Varchar2(20), date_of_joining date) 
CREATE TABLE EMPLOYEES (
    EMP_NO          NUMBER,
    EMP_NAME        VARCHAR2(20),
    DATE_OF_JOINING DATE
);

-- EXTRA. Insert 5 records into EMP table using INSERT ALL
INSERT ALL
    INTO EMPLOYEES (EMP_NO, EMP_NAME, DATE_OF_JOINING)
    VALUES (201, 'Amit', TO_DATE('06-JAN-2025', 'DD-MON-YYYY'))

    INTO EMPLOYEES (EMP_NO, EMP_NAME, DATE_OF_JOINING)
    VALUES (202, 'Neha', TO_DATE('15-FEB-2026', 'DD-MON-YYYY'))

    INTO EMPLOYEES (EMP_NO, EMP_NAME, DATE_OF_JOINING)
    VALUES (203, 'Rahul', TO_DATE('20-JAN-2026', 'DD-MON-YYYY'))

    INTO EMPLOYEES (EMP_NO, EMP_NAME, DATE_OF_JOINING)
    VALUES (204, 'Priya', TO_DATE('10-DEC-2024', 'DD-MON-YYYY'))

    INTO EMPLOYEES (EMP_NO, EMP_NAME, DATE_OF_JOINING)
    VALUES (205, 'Karan', TO_DATE('01-FEB-2026', 'DD-MON-YYYY'))
SELECT * FROM DUAL;

-- Q13. Display day of date_of_joining column
SELECT
    EMP_NAME,
    TO_CHAR(DATE_OF_JOINING, 'DAY') AS JOIN_DAY
FROM
    EMPLOYEES;

-- Q15. Display those employees who join the company this month
SELECT
    EMP_NO,
    EMP_NAME,
    TO_CHAR(DATE_OF_JOINING, 'MONTH YYYY') AS DATE_OF_JOINING
FROM
    EMPLOYEES
WHERE
    TO_CHAR(DATE_OF_JOINING, 'MM-YYYY') = TO_CHAR(SYSDATE, 'MM-YYYY');

-- Q16. Display those employees who join the company in last 30 days
SELECT
    *
FROM
    EMPLOYEES
WHERE
    DATE_OF_JOINING >= SYSDATE - 30;

-- Q17. Create a table Train having four columns (TrainNo Number (6) primary key, date of departure, time of departure, time of arrival)
CREATE TABLE TRAIN (
    TRAIN_NO        NUMBER(6) PRIMARY KEY,
    DEPARTURE_DATE DATE,
    DEPARTURE_TIME DATE,
    ARRIVAL_TIME   DATE
);

-- Q18. Insert five records into the table Train
INSERT ALL
    INTO TRAIN (TRAIN_NO, DEPARTURE_DATE, DEPARTURE_TIME, ARRIVAL_TIME)
    VALUES (101001, TO_DATE('01-FEB-2026','DD-MON-YYYY'), TO_DATE('10:30 AM','HH:MI AM'), TO_DATE('02:45 PM','HH:MI AM'))

    INTO TRAIN (TRAIN_NO, DEPARTURE_DATE, DEPARTURE_TIME, ARRIVAL_TIME)
    VALUES (101002, TO_DATE('01-FEB-2026','DD-MON-YYYY'), TO_DATE('03:15 PM','HH:MI AM'), TO_DATE('06:00 PM','HH:MI AM'))

    INTO TRAIN (TRAIN_NO, DEPARTURE_DATE, DEPARTURE_TIME, ARRIVAL_TIME)
    VALUES (101003, TO_DATE('01-FEB-2026','DD-MON-YYYY'), TO_DATE('09:00 AM','HH:MI AM'), TO_DATE('12:10 PM','HH:MI AM'))

    INTO TRAIN (TRAIN_NO, DEPARTURE_DATE, DEPARTURE_TIME, ARRIVAL_TIME)
    VALUES (101004, TO_DATE('01-FEB-2026','DD-MON-YYYY'), TO_DATE('07:45 PM','HH:MI AM'), TO_DATE('11:30 PM','HH:MI AM'))

    INTO TRAIN (TRAIN_NO, DEPARTURE_DATE, DEPARTURE_TIME, ARRIVAL_TIME)
    VALUES (101005, TO_DATE('01-FEB-2026','DD-MON-YYYY'), TO_DATE('05:20 AM','HH:MI AM'), TO_DATE('09:10 AM','HH:MI AM'))
SELECT * FROM DUAL;

-- Q19. Display all the records
SELECT
    *
FROM
    TRAIN;

-- Q20. Display the time values inserted in the columns
SELECT
    TO_CHAR(DEPARTURE_TIME, 'HH:MI AM') AS DEP_TIME,
    TO_CHAR(ARRIVAL_TIME, 'HH:MI AM') AS ARR_TIME
FROM
    TRAIN;

-- Q21. Display those trains which arrived on PM
SELECT
    *
FROM
    TRAIN
WHERE
    TO_CHAR(ARRIVAL_TIME, 'AM') = 'PM';

-- Q22. Display train number who are going to depart in next one hour
SELECT
    TRAIN_NO
FROM
    TRAIN
WHERE
    DEPARTURE_TIME BETWEEN SYSDATE AND SYSDATE + (1/24);