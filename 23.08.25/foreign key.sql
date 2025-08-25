
DROP DATABASE IF EXISTS shop_demo;
CREATE DATABASE shop_demo;
USE shop_demo;


CREATE TABLE Category (
    cID INT PRIMARY KEY,
    cName VARCHAR(100) NOT NULL,
    cDesc VARCHAR(255)
);


CREATE TABLE Product (
    pID INT PRIMARY KEY,
    pName VARCHAR(100) NOT NULL,
    pDesc VARCHAR(255),
    cID INT,
    FOREIGN KEY (cID) REFERENCES Category(cID)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);


INSERT INTO Category VALUES (1, 'Electronics', 'Devices and gadgets');
INSERT INTO Category VALUES (2, 'Clothing', 'Wearables and fashion');


INSERT INTO Product VALUES (101, 'Smartphone', 'Android phone', 1);
INSERT INTO Product VALUES (102, 'Laptop', 'High performance laptop', 1);
INSERT INTO Product VALUES (201, 'T-Shirt', 'Cotton T-Shirt', 2);
INSERT INTO Product VALUES (202, 'Jeans', 'Denim jeans', 2);

SELECT * FROM Category;
SELECT * FROM Product;