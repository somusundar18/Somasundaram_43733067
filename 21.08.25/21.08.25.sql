 show databases;
create database som;
use som;
create table ECE (
sid int,
sname varchar(30),
smarks int
);
show tables from som;
desc ece;
select *from ece;
alter table ECE;
INSERT INTO ECE (sid, sname, smarks)
VALUES
(1,'som',100),
(2,'jhon',99),
(3,'scar',98);
select * from ECE;
use som;
CREATE TABLE Employees (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT,
    dept VARCHAR(50),
    salary DECIMAL(10,2),
    country VARCHAR(50)
);

INSERT INTO Employees (id,name, age, dept, salary, country) 
VALUES
(1,'John Doe', 28, 'IT', 55000, 'USA'),
(2,'Anita Sharma', 32, 'HR', 48000, 'India'),
(3,'Ali Khan', 26, 'Finance', 60000, 'UAE'),
(4,'Maria Garcia', 30, 'Marketing', 52000, 'Spain');
select * from employees;
UPDATE Employees
SET salary = 65000
WHERE id = 1;

SELECT DISTINCT dept FROM Employees;