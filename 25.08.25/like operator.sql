
CREATE TABLE workers (
    eno INT PRIMARY KEY,
    ename VARCHAR(50) NOT NULL,
    eposition VARCHAR(50) NOT NULL,
    econtact VARCHAR(15),
    salary INT,
    department VARCHAR(50)
);


INSERT INTO workers (eno, ename, eposition, econtact, salary, department) VALUES
(1, 'Arjun', 'Manager', '9876543210', 120000, 'Admin'),
(2, 'Meena', 'HR', '9876500011', 80000, 'Admin'),
(3, 'Ravi', 'Developer', '9876500022', 95000, 'IT'),
(4, 'Sneha', 'Tester', '9876500033', 60000, 'IT'),
(5, 'Kiran', 'Designer', '9876500044', 70000, 'Design'),
(6, 'Priya', 'Developer', '9876500055', 110000, 'IT'),
(7, 'Vikram', 'Manager', '9876500066', 130000, 'Sales'),
(8, 'Anita', 'Sales Executive', '9876500077', 50000, 'Sales'),
(9, 'Suresh', 'Accountant', '9876500088', 75000, 'Finance'),
(10, 'Divya', 'Clerk', '9876500099', 40000, 'Finance');


SELECT * FROM workers;


DESC workers;


SELECT eno AS Employee_ID, ename AS Employee_Name FROM workers;



DELETE FROM workers WHERE eno = 10;


SELECT * FROM workers;

CREATE OR REPLACE VIEW less_than_1L AS
SELECT ename, salary
FROM workers
WHERE salary <= 100000;

SELECT * FROM less_than_1L;

CREATE OR REPLACE VIEW admin_workers AS
SELECT ename, salary
FROM workers
WHERE department = 'Admin';

SELECT * FROM admin_workers;

-- Drop views if needed
DROP VIEW IF EXISTS less_than_1L;
DROP VIEW IF EXISTS admin_workers;

-- LIKE operator examples

SELECT * FROM workers
WHERE ename LIKE 'A%';

SELECT * FROM workers
WHERE ename LIKE '%a';

SELECT * FROM workers
WHERE ename LIKE '%vi%';

SELECT * FROM workers
WHERE eposition LIKE 'Dev%';

SELECT * FROM workers
WHERE department LIKE '_____';