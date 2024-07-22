1. Create a view for those salespeople who belong to the city of New York:
SQL

CREATE VIEW NewYorkSalespeople AS
SELECT * FROM salespeople
WHERE city = 'New York';

2. Find the salesperson and customer who reside in the same city:
SQL

SELECT s.name AS Salesman, c.name AS Customer, s.city
FROM salespeople s, customers c
WHERE s.city = c.city;

3. Find salespeople who received commissions of more than 12 percent from the company:
SQL

SELECT c.name AS CustomerName, c.city AS CustomerCity, s.name AS Salesman, s.commission
FROM customers c, salespeople s
WHERE c.salesman_id = s.salesman_id AND s.commission > 0.12;

4. Display all the customers whose ID is 2001 below the salesperson ID of Nail Knite:
SQL

SELECT * FROM customers
WHERE customer_id = 2001 AND salesman_id < (
    SELECT salesman_id FROM salespeople WHERE name = 'Nail Knite'
);

5. Count the number of customers with grades above the average in New York City:
SQL

SELECT grade, COUNT(customer_id) AS CustomerCount
FROM customers
WHERE city = 'New York' AND grade > (
    SELECT AVG(grade) FROM customers
)
GROUP BY grade;

6. Find salespeople who had more than one customer:
SQL

SELECT s.salesman_id, s.name
FROM salespeople s, customers c
WHERE s.salesman_id = c.salesman_id
GROUP BY s.salesman_id, s.name
HAVING COUNT(c.customer_id) > 1;

7. Determine the number of customers who received at least one grade for their activity:
SQL

SELECT grade, COUNT(customer_id) AS CustomerCount
FROM customers
WHERE city = 'York City' AND grade IS NOT NULL
GROUP BY grade;

8. Find the highest grade of the customers in each city:
SQL

SELECT city, MAX(grade) AS MaxGrade
FROM customers
GROUP BY city;

9. Retrieve the details of the salespeople whose names begin with any letter between ‘A’ and ‘L’ (not inclusive):
SQL

SELECT salesman_id, name, city, commission
FROM salespeople
WHERE name BETWEEN 'B' AND 'K';

10. PL/SQL program to arrange the number of two variables:
SQL

DECLARE
    num_small NUMBER;
    num_large NUMBER;
BEGIN
    IF :variable1 > :variable2 THEN
        num_large := :variable1;
        num_small := :variable2;
    ELSE
        num_large := :variable2;
        num_small := :variable1;
    END IF;
    DBMS_OUTPUT.PUT_LINE('Small Number: ' || num_small);
    DBMS_OUTPUT.PUT_LINE('Large Number: ' || num_large);
END;

11. PL/SQL program to display the description against a grade:
SQL

DECLARE
    grade CHAR(1);
    description VARCHAR2(20);
BEGIN
    grade := :grade;
    CASE grade
        WHEN 'A' THEN description := 'Outstanding';
        WHEN 'B' THEN description := 'Very Good';
        WHEN 'C' THEN description := 'Good';
        WHEN 'D' THEN description := 'Poor';
        ELSE description := 'Unknown';
    END CASE;
    DBMS_OUTPUT.PUT_LINE('Grade: ' || grade || ' - ' || description);
END;