
CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    SupplierID INT
);

-- Create the Suppliers table
CREATE TABLE Supplier (
    SupplierID INT PRIMARY KEY,
    SupplierName VARCHAR(50)
);
-- Insert data into Suppliers
INSERT INTO Supplier (SupplierID, SupplierName) VALUES
(1, 'Vediocon'),
(2, 'Bajaj'),
(3, 'Wipro');

-- Insert data into Products
INSERT INTO Product (ProductID, ProductName, SupplierID) VALUES
(101, 'Mobile', 1),
(102, 'Laptop', 1),
(103, 'TV', 2),
(104, 'AC', NULL); -- Product with no associated supplier

/*Inner Join*/
SELECT Product.ProductID, Product.ProductName, Supplier.SupplierName
FROM Product
INNER JOIN Supplier
ON Product.SupplierID = Supplier.SupplierID;

/*Left Joins*/
SELECT Product.ProductID, Product.ProductName, Supplier.SupplierName
FROM Product
LEFT JOIN Supplier
ON Product.SupplierID = Supplier.SupplierID;

/*Right join*/
SELECT Supplier.SupplierID, Supplier.SupplierName, Product.ProductName
FROM Supplier
RIGHT JOIN Product
ON Supplier.SupplierID = Product.SupplierID;

/*Outer Join*/
SELECT Product.ProductID, Product.ProductName, Supplier.SupplierName
FROM Product
FULL OUTER JOIN Supplier
ON Product.SupplierID = Supplier.SupplierID;

/*Cross join*/
SELECT Product.ProductID, Product.ProductName, Supplier.SupplierName
FROM Product
CROSS JOIN Supplier;