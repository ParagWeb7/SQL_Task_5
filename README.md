# SQL_Task_5
Task 5: SQL Joins (Inner, Left, Right, Full) Objective: Learn to combine data from multiple tables Tools :DB Browser for SQLite / MySQL Workbench Deliverables: SQL queries using all join types

Task 5: SQL Joins
Objective Learn to combine data from multiple related tables using SQL JOINs: INNER JOIN, LEFT JOIN, RIGHT JOIN, and a simulated FULL OUTER JOIN.

Tools Used
MySQL Workbench

SQL (Structured Query Language)

Tables Created

1 Schema Setup


CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    City VARCHAR(50)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductName VARCHAR(100),
    Amount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

2 Insert Sample Data

INSERT INTO Customers VALUES (1, 'Amit', 'Mumbai');
INSERT INTO Customers VALUES (2, 'Neha', 'Pune');
INSERT INTO Customers VALUES (3, 'Ravi', 'Delhi');


INSERT INTO Orders VALUES (101, 1, 'Laptop', 55000.00);
INSERT INTO Orders VALUES (102, 2, 'Headphones', 2000.00);
INSERT INTO Orders VALUES (103, 1, 'Mouse', 800.00);
INSERT INTO Orders VALUES (104, 4, 'Keyboard', 1500.00);

3 Join Queries

-- INNER JOIN
SELECT Customers.CustomerName, Orders.ProductName, Orders.Amount
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- LEFT JOIN
SELECT Customers.CustomerName, Orders.ProductName
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- RIGHT JOIN
SELECT Customers.CustomerName, Orders.ProductName
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerIDemonstrates how to fetch meaningful combined results across different entities.

Shows the practical use of INNER, LEFT, RIGHT, and FULL joins in handling real-world queries.D = Orders.CustomerID;

-- FULL JOIN (if supported)

SELECT Customers.CustomerName, Orders.ProductName
FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

Outcome:

 Learned how to combine data from multiple tables using different join types.
 Understood the difference between INNER, LEFT, RIGHT, and FULL JOIN results.

 


