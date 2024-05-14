CREATE TABLE CLIENTS (
    CLIENTNO VARCHAR2(10),
    NAME VARCHAR2(50),
    CITY VARCHAR2(50),
    PINCODE VARCHAR2(10),
    STATE VARCHAR2(30),
    BALDUE NUMBER
);

INSERT INTO CLIENTS (CLIENTNO, NAME, CITY, PINCODE, STATE, BALDUE) VALUES ('C00001', 'Ivan Bayross', 'Mumbai', '400054', 'Maharashtra', 15000);
INSERT INTO CLIENTS (CLIENTNO, NAME, CITY, PINCODE, STATE, BALDUE) VALUES ('C00002', 'Mamta Mazumdar', 'Madras', '780001', 'Tamil Nadu', 0);
INSERT INTO CLIENTS (CLIENTNO, NAME, CITY, PINCODE, STATE, BALDUE) VALUES ('C00003', 'Chhaya Bankar', 'Mumbai', '400057', 'Maharashtra', 5000);
INSERT INTO CLIENTS (CLIENTNO, NAME, CITY, PINCODE, STATE, BALDUE) VALUES ('C00004', 'Ashwini Joshi', 'Bangalore', '560001', 'Karnataka', 0);
INSERT INTO CLIENTS (CLIENTNO, NAME, CITY, PINCODE, STATE, BALDUE) VALUES ('C00005', 'Hansel Colaco', 'Mumbai', '400060', 'Maharashtra', 2000);
INSERT INTO CLIENTS (CLIENTNO, NAME, CITY, PINCODE, STATE, BALDUE) VALUES ('C00006', 'Deepak Sharma', 'Mangalore', '560050', 'Karnataka', 0);

select * from clients
where baldue >= 15000;

SELECT * FROM clients 
WHERE name LIKE 'M%';

SELECT * FROM clients
WHERE state = 'Maharashtra' OR state = 'Karnataka';
-- or 
SELECT * FROM clients
WHERE state IN ('Maharashtra', 'Karnataka');

UPDATE clients
SET city = 'Bangalore'
WHERE clientno = 'C00005';

UPDATE clients
SET BALDUE = 1000
WHERE clientno = 'C00001';

Delete from clients;
-- or
truncate table clients;

Delete from CLIENTS 
where state = 'Tamil Nadu';
