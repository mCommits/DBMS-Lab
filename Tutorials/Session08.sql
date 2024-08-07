/* 15 May 2024 - Wed */

CREATE TABLE client_master (
    Client_No VARCHAR2(6) CONSTRAINT pk_client PRIMARY KEY CHECK (Client_No LIKE 'C%'),
    Name VARCHAR2(20) NOT NULL,
    CITY VARCHAR2(20) CHECK (CITY IN ('Delhi', 'Mumbai', 'Chennai')),
    Pincode NUMBER(6),
    State VARCHAR2(20),
    BALDUE NUMBER(10, 2),
    Email VARCHAR2(30) CONSTRAINT uk_email UNIQUE
);

INSERT INTO CLIENT_MASTER VALUES ('C00001', 'Pankaj Sharma', 'Delhi', 400054, 'Delhi', 15000, 'pk@gmail.com');
INSERT INTO CLIENT_MASTER VALUES ('C00002', 'Yogesh Sharma', 'Delhi', 780001, 'Delhi', 0, 'ys@gmail.com');
INSERT INTO CLIENT_MASTER VALUES ('C00003', 'Aditya Singh', 'Mumbai', 400057, 'Maharashtra', 5000, 'as@gmail.com');
INSERT INTO CLIENT_MASTER VALUES ('C00004', 'Ashwini', 'Chennai', 560001, 'Tamil Nadu', 0, 'aj@gmail.com');
INSERT INTO CLIENT_MASTER VALUES ('C00005', 'Neha Sharma', 'Mumbai', 40060, 'Maharashtra', 2000, 'ns@gmail.com');
INSERT INTO CLIENT_MASTER VALUES ('C00006', 'Divya Gupta', 'Chennai', 560050, 'Tamil Nadu', 0, NULL);


-- NVL AND NVL2 FUNCTION (NVL stands for "Null Value.".
SELECT EMAIL, NVL(EMAIL, 'NOT AVAILABLE') FROM CLIENT_MASTER;
SELECT EMAIL, NVL2(EMAIL, 'AVAILABLE', 'NOT AVAILABLE') FROM CLIENT_MASTER;
-- SELECT BALDUE, NVL(BALDUE, 'YEAH') FROM CLIENT_MASTER; -- WONT WORK BCZ OF DATA TYPE

SELECT USER FROM DUAL;  WORKS ON SERVER

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
INSERT INTO EMPLOYEE VALUES (2, 'SUMAN', 'VERMA', 'MCA', NULL, TO_DATE('2006-10-17', 'YYYY-MM-DD'), 'NULL', 'Y');
INSERT INTO EMPLOYEE VALUES (3, 'AKASH', 'SINGH', 'CS', 20000, TO_DATE('2005-01-15', 'YYYY-MM-DD'), 'KANPUR', 'Y');
INSERT INTO EMPLOYEE VALUES (4, 'SAGAR', 'KUMAR', 'IT', NULL, TO_DATE('2019-02-12', 'YYYY-MM-DD'), 'GHAZIABAD', NULL);
INSERT INTO EMPLOYEE (ID, F_NAME, L_NAME, DEPT, SALARY, DOJ, ADDRESS)
VALUES (5, 'ROHAN', 'SHARMA', 'CS', 21000, TO_DATE('2005-09-18', 'YYYY-MM-DD'), 'GHAZIABAD');
INSERT INTO EMPLOYEE VALUES (6, 'ROBIN', 'SINGH', 'IT', 18000, TO_DATE('2021-10-22', 'YYYY-MM-DD'), 'MEERUT', 'N');
INSERT INTO EMPLOYEE (ID, F_NAME, L_NAME, DEPT, SALARY, DOJ, ADDRESS)
VALUES (7, 'AKASH', 'RANJAN', 'CS', 22000, TO_DATE('2019-11-14', 'YYYY-MM-DD'), 'GHAZIABAD');

SELECT ID, F_NAME, DEPT,
CASE DEPT
	WHEN 'MCA' THEN SALARY * 10
	WHEN 'CS' THEN SALARY * 8.5
	ELSE SALARY * 8
END NEW_SALARY
FROM EMPLOYEE;

SELECT ID, F_NAME, DEPT,
CASE DEPT
	WHEN 'MCA' THEN NVL2(SALARY, SALARY*8, 0)
	WHEN 'CS' THEN SALARY * 8.5
	ELSE NVL2(SALARY, SALARY*8, 0)
END NEW_SALARY
FROM EMPLOYEE;

SELECT ID, F_NAME, DEPT,
CASE DEPT
	WHEN 'MCA' OR THEN NVL2(SALARY, SALARY*8, 0)
	WHEN 'CS' THEN SALARY * 8.5
	ELSE NVL2(SALARY, SALARY*8, 0)
END NEW_SALARY
FROM EMPLOYEE;



SELECT *
FROM EMPLOYEE
ORDER BY; -- SORTS BY 1ST COLUMN OF TABLE SCHEMA

SELECT ID, NAME
FROM EMPLOYEE
ORDER BY 1; -- SORTS BY 1ST COLUMN i.e., ID

SELECT F_NAME, ID
FROM EMPLOYEE
ORDER BY 1; -- SORTS BY 1ST COLUMN i.e., F_NAME

SELECT F_NAME, ID
FROM EMPLOYEE
ORDER BY 4; -- ERROR BCZ NO COLUMN IS 4

SELECT F_NAME, ID
FROM EMPLOYEE
ORDER BY 1,2;
