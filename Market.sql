CREATE DATABASE Market;

USE Market;

DROP TABLE Products;
DROP TABLE Brands;

CREATE TABLE Products (
	Id INT IDENTITY PRIMARY KEY,
	Name NVARCHAR(20),
	Price REAL,
);

CREATE TABLE Brands (
	Id INT IDENTITY PRIMARY KEY,
	Name NVARCHAR(20),
);

ALTER TABLE Products
ADD BrandId INT FOREIGN KEY REFERENCES Brands(ID);

INSERT INTO Brands (Name)
VALUES
('Brand 1'),
('Brand 2'),
('Brand 3'),
('Brand 4'),
('Brand 5'),
('Brand 6'),
('Brand 7');

SELECT * FROM Brands;

INSERT INTO Products (Name, Price, BrandId)
VALUES
('Pro 1', 2.0, 1),
('Product 2', 4.0, 2),
('Pro 3', 6.0, 3),
('Product 4', 8.0, 4),
('Pro 5', 10.0, 5),
('Product 6', 12.0, 6),
('Pro 7', 14.0, 7),
('Product 8', 13.0, 7),
('Pro 9', 11.0, 6),
('Product 10', 9.0, 5),
('Product 11', 7.0, 4),
('Pro 12', 5.0, 3),
('Product 13', 3.0, 2),
('Pro 14', 1.0, 1);

SELECT * FROM Products;

SELECT * FROM Products WHERE Price > 10;

SELECT AVG(Price) FROM Products;

SELECT * FROM Products WHERE Price < (SELECT AVG(Price) FROM Products);

SELECT * FROM Products WHERE LEN(Name) > 5;