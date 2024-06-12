-- Creating table
CREATE TABLE orders (
    ord_no NUMBER,
    purch_amt NUMBER,
    ord_date DATE,
    customer_id NUMBER,
    salesman_id NUMBER
);

-- Inserting dummy data.
INSERT INTO orders VALUES (70001, 150.5, TO_DATE('2012-10-05', 'YYYY-MM-DD'), 3005, 5002);
INSERT INTO orders VALUES (70009, 270.65, TO_DATE('2012-09-10', 'YYYY-MM-DD'), 3001, 5005);
INSERT INTO orders VALUES (70002, 65.26, TO_DATE('2012-10-05', 'YYYY-MM-DD'), 3002, 5001);
INSERT INTO orders VALUES (70004, 110.5, TO_DATE('2012-08-17', 'YYYY-MM-DD'), 3009, 5003);
INSERT INTO orders VALUES (70007, 948.5, TO_DATE('2012-09-10', 'YYYY-MM-DD'), 3005, 5002);
INSERT INTO orders VALUES (70005, 2400.6, TO_DATE('2012-07-27', 'YYYY-MM-DD'), 3007, 5001);
INSERT INTO orders VALUES (70008, 5760.0, TO_DATE('2012-09-10', 'YYYY-MM-DD'), 3002, 5001);
INSERT INTO orders VALUES (70010, 1983.43, TO_DATE('2012-10-10', 'YYYY-MM-DD'), 3004, 5006);
INSERT INTO orders VALUES (70003, 2480.4, TO_DATE('2012-10-10', 'YYYY-MM-DD'), 3009, 5003);
INSERT INTO orders VALUES (70012, 250.45, TO_DATE('2012-06-27', 'YYYY-MM-DD'), 3008, 5002);
INSERT INTO orders VALUES (70011, 75.29, TO_DATE('2012-08-17', 'YYYY-MM-DD'), 3003, 5007);
INSERT INTO orders VALUES (70013, 3045.6, TO_DATE('2012-04-25', 'YYYY-MM-DD'), 3002, 5001);

-- 1. write a SQL query to calculate total purchase amount of all orders. Return total purchase amount.
SELECT SUM(purch_amt) AS Total_Purchase_Amount from orders;

-- 2. write a SQL query to calculate average purchase amount of all orders. Return average purchase amount.
SELECT AVG(purch_amt) as Average_Purchase_Amount from orders;

-- 3. write a SQL query to find the number of salespeople.
SELECT COUNT(DISTINCT salesman_id) AS No_Of_Salespeople from orders;

-- 4. write a SQL query to find the maximum purchase amount.
SELECT MAX(purch_amt) AS Max_Purchase_Amount from orders;

-- 5. write a SQL query to find the minimum purchase amount. 
SELECT MIN(purch_amt) AS Max_Purchase_Amount from orders;

-- 6. write a SQL query to find the highest purchase amount ordered by each customer. Return customer ID, maximum purchase amount. 
SELECT customer_id, MAX(purch_amt) AS Maximum_Purchase_Amount from orders GROUP BY customer_id;

-- 7. write a SQL query to find the highest purchase amount ordered by each customer on a particular date. Return, order date and highest purchase amount. 
SELECT ord_date, MAX(purch_amt) AS Maximum_Purchase_Amount from orders WHERE ord_date = '2012-08-17' GROUP BY ord_date;

-- 8. write a SQL query to find the highest purchase amount on '2012-08-17' by each salesperson. Return salesperson ID, purchase amount. 
SELECT salesman_id, MAX(purch_amt) AS Maximum_Purchase_Amount from orders WHERE ord_date = '2012-08-17' GROUP BY salesman_id;

-- 9. write a SQL query to find highest order (purchase) amount by each customer in a particular order date. Filter the result by highest order (purchase) amount above 2000.00. Return customer id, order date and maximum purchase amount. 
SELECT customer_id, ord_date, MAX(purch_amt) AS Maximum_Purchase_Amount from orders GROUP BY customer_id, ord_date HAVING MAX(purch_amt) > 2000.00;

-- 10. write a SQL query to find the maximum order (purchase) amount in the range 2000, 6000 (Begin and end values are included.) by combination of each customer and order date. Return customer id, order date and maximum purchase amount. 
SELECT customer_id, ord_date, MAX(purch_amt) AS Maximum_Purchase_Amount from orders WHERE purch_amt BETWEEN 2000 AND 6000 GROUP BY customer_id, ord_date;

-- 11. write a SQL query to find the maximum order (purchase) amount by each customer. The customer ID should be in the range 3002 and 3007(Begin and end values are included.). Return customer id and maximum purchase amount. 
SELECT customer_id, MAX(purch_amt) AS Maximum_Purchase_Amount from orders WHERE customer_id BETWEEN 3002 AND 3007 GROUP BY customer_id;

-- 12. write a SQL query to count all the orders generated on '2012-08-17'. Return number of orders.
SELECT COUNT(*) AS Orders_On_170812 from orders
WHERE ord_date = TO_DATE('2012-08-17', 'YYYY-MM-DD');

-- 13. 
