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


INSERT INTO Customers VALUES (1, 'Amit', 'Mumbai');
INSERT INTO Customers VALUES (2, 'Neha', 'Pune');
INSERT INTO Customers VALUES (3, 'Ravi', 'Delhi');

INSERT INTO Orders VALUES (101, 1, 'Laptop', 55000.00);
INSERT INTO Orders VALUES (102, 2, 'Headphones', 2000.00);
INSERT INTO Orders VALUES (103, 1, 'Mouse', 800.00);
INSERT INTO Orders VALUES (104, 4, 'Keyboard', 1500.00);


SELECT Customers.CustomerName, Orders.ProductName, Orders.Amount
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

SELECT Customers.CustomerName, Orders.ProductName
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;


SELECT Customers.CustomerName, Orders.ProductName
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

SELECT Customers.CustomerName, Orders.ProductName
FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
