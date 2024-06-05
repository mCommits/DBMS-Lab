-- 5 June 2024 - Wed

-- Create emp table
CREATE TABLE emp(
    id NUMBER,
    name VARCHAR2(30),
    salary NUMBER(5)
);

-- Insert dummy data into emp table
INSERT INTO emp VALUES (1, 'John', 3000);
INSERT INTO emp VALUES (2, 'Alice', 4000);
INSERT INTO emp VALUES (3, 'Bob', 3500);
INSERT INTO emp VALUES (4, 'Emma', 4500);
INSERT INTO emp VALUES (5, 'Michael', 5000);

-- Add primary key constraint to emp table
ALTER TABLE emp
ADD CONSTRAINT pk_emp_id PRIMARY KEY (id); 
-- This constraint will execute only if there's no two duplicate IDs inserted already.

-- Query to find the maximum name alphabetically
SELECT MAX(name) FROM emp;
-- Query to find the maximum salary
SELECT MAX(salary) FROM emp;

-- Create dept table
CREATE TABLE dept(
    dId NUMBER,
    id NUMBER,
    dName VARCHAR2(30),
    CONSTRAINT fk_dept_emp FOREIGN KEY (id) REFERENCES emp(id)
);

-- Insert dummy data into dept table
INSERT INTO dept VALUES (1, 1, 'HR');
INSERT INTO dept VALUES (2, 2, 'Finance');
INSERT INTO dept VALUES (3, 3, 'IT');
INSERT INTO dept VALUES (4, 4, 'Marketing');
INSERT INTO dept VALUES (4, 5, 'Marketing');

-- Query to display the second highest salary using nested queries
SELECT MAX(salary) FROM emp WHERE salary < (SELECT MAX(salary) FROM emp);

-- Query to display the number of employees department-wise
SELECT COUNT(id) FROM dept
GROUP BY dId, dName;

-- Query to display the number of employees department-wise along with dept name.
SELECT d.dId, d.dName, COUNT(e.id) AS num_employees
FROM dept d
LEFT JOIN emp e ON d.id = e.id
GROUP BY d.dId, d.dName;

/* Query to display employees' names, department names, and salaries where the salary is 
higher than the average salary of their department they work in.*/
SELECT e.name, d.dName AS dept_name, e.salary
FROM emp e
JOIN dept d ON e.id = d.id
WHERE e.salary > (
    SELECT AVG(e2.salary)
    FROM emp e2
    WHERE e2.id = e.id
)
ORDER BY d.dName, e.name;

-- Query to display employee information including name and department they work in
SELECT emp.name || ' is working in ' || dept.dName AS info
FROM dept INNER JOIN emp ON emp.id = dept.id;
