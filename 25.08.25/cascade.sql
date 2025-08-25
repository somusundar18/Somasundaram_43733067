use som;


CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) UNIQUE
);


CREATE TABLE Staffs (
    staff_id INT PRIMARY KEY,
    staff_name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


INSERT INTO Departments VALUES (1, 'IT'), (2, 'HR');

INSERT INTO Staffs VALUES (201, 'Somu', 1),
                          (202, 'Arun', 1),
                          (203, 'Kumar', 2);

SELECT * FROM Staffs;


DELETE FROM Departments WHERE dept_id = 2;
SELECT * FROM Staffs;


UPDATE Departments SET dept_id = 10 WHERE dept_id = 1;
SELECT * FROM Staffs;
