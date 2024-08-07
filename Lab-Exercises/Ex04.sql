CREATE TABLE EMPLOYEE (
    ID INT,
    F_NAME VARCHAR(50),
    L_NAME VARCHAR(50),
    DEPT VARCHAR(50),
    SALARY NUMBER(5),
    DOJ DATE,
    ADDRESS VARCHAR(100),
    Married CHAR(1)
);

INSERT INTO EMPLOYEE VALUES (1, 'VINAY', 'KUMAR', 'MCA', 25000.00, TO_DATE('2001-09-27', 'YYYY-MM-DD'), 'GHAZIABAD', 'Y');

INSERT INTO EMPLOYEE VALUES (2, 'SUMAN', 'VERMA', 'MCA', 15000, TO_DATE('2006-10-17', 'YYYY-MM-DD'), 'MEERUT', 'Y');

INSERT INTO EMPLOYEE VALUES (3, 'AKASH', 'SINGH', 'CS', 20000, TO_DATE('2005-01-15', 'YYYY-MM-DD'), 'KANPUR', 'Y');

INSERT INTO EMPLOYEE VALUES (4, 'SAGAR', 'KUMAR', 'IT', 20000, TO_DATE('2019-02-12', 'YYYY-MM-DD'), 'GHAZIABAD', 'N');

INSERT INTO EMPLOYEE (ID, F_NAME, L_NAME, DEPT, SALARY, DOJ, ADDRESS)
VALUES (5, 'ROHAN', 'SHARMA', 'CS', 21000, TO_DATE('2005-09-18', 'YYYY-MM-DD'), 'GHAZIABAD');

INSERT INTO EMPLOYEE VALUES (6, 'ROBIN', 'SINGH', 'IT', 18000, TO_DATE('2021-10-22', 'YYYY-MM-DD'), 'MEERUT', 'N');

INSERT INTO EMPLOYEE (ID, F_NAME, L_NAME, DEPT, SALARY, DOJ, ADDRESS)
VALUES (7, 'AKASH', 'RANJAN', 'CS', 22000, TO_DATE('2019-11-14', 'YYYY-MM-DD'), 'GHAZIABAD');

-- Q1
SELECT * FROM EMPLOYEE
WHERE ADDRESS = 'GHAZIABAD';

-- Q2
SELECT UNIQUE DEPT FROM EMPLOYEE;

-- Q3
SELECT ID, CONCAT(F_NAME, L_NAME) AS FULL_NAME, DEPT FROM EMPLOYEE;
-- FOR SPACE BETWEEN FIRST AND LAST NAME USE PIPE:
SELECT ID, F_NAME || ' ' || L_NAME AS FULL_NAME, DEPT FROM EMPLOYEE;

-- Q4
SELECT F_NAME || ' is working in ' || DEPT || ' Department' FROM EMPLOYEE;

-- Q5
SELECT * FROM EMPLOYEE
WHERE DOJ > TO_DATE('15-01-2005', 'DD-MM-YYYY');

-- Q6
UPDATE EMPLOYEE
SET SALARY = 25000
WHERE ID = 2;

-- Q7 
SELECT ID, f_name, 12*SALARY AS "Annual Salary" from employee;

-- Q8 
SELECT id, f_name, (salary + 300) AS gross_salary from employee;
-- Below query won't work because Oracle doesn't allow using * with other columns, however MySQL allows.
-- SELECT *, (basic_salary + 300) AS gross_salary  from employee;

-- Q9
SELECT * FROM EMPLOYEE
WHERE SALARY BETWEEN 15000 AND 30000;

-- Q10
SELECT * FROM EMPLOYEE
WHERE DOJ BETWEEN TO_DATE('27-09-2001', 'DD-MM-YYYY') AND TO_DATE('12-02-2019','DD-MM-YYYY');

-- Q11
SELECT * FROM EMPLOYEE
WHERE DEPT IN ('MCA', 'CS');

-- Q12
SELECT * FROM EMPLOYEE
WHERE DEPT NOT IN ('MCA');

-- Q13
SELECT * FROM EMPLOYEE
WHERE F_NAME LIKE 'R%';

-- Q14
SELECT * FROM EMPLOYEE
WHERE F_NAME LIKE 'RO%';

-- Q15
SELECT * FROM EMPLOYEE
WHERE LENGTH(F_NAME) = 5 AND F_NAME LIKE 'R%';

-- 16
SELECT * FROM EMPLOYEE
WHERE F_NAME LIKE '_O%';

-- 17
SELECT * FROM EMPLOYEE
WHERE MARRIED = 'Y';

-- 18
SELECT * FROM EMPLOYEE
WHERE MARRIED = 'N';

-- 19
SELECT * FROM EMPLOYEE
WHERE MARRIED IS NULL;

-- 20
SELECT * FROM EMPLOYEE
WHERE DEPT IN ('MCA') AND MARRIED = 'Y';
