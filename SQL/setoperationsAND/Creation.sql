CREATE TABLE Customers(
	CustomerID number(4) PRIMARY KEY,
	CustomerName varchar(25),
	ContactName varchar(25),
	Address varchar(30),
	City varchar(15),
	PostalCode number(5),
	Country varchar(10));

CREATE TABLE Suppliers(
	SupplierID number(4) PRIMARY KEY,
	SupplierName varchar(40),
	ContactName varchar(25),
	Address varchar(30),
	City varchar(15),
	PostalCode number(5),
	Country varchar(10));

INSERT ALL
INTO Customers VALUES(1,'Alfreds Futter', 'Maria Anders', 'Obere Str, 57', 'Berlin', 12209, 'Germany')
INTO Customers VALUES(2,'Ana Helados', 'Ana Trujillo', 'Avda. Construction 2222', 'Mexico D.F.', 05021, 'Mexico')
INTO Customers VALUES(3,'Antonio Moreno', 'Antonio Moreno', 'Mataderos 2312', 'Mexico D.F.', 05023, 'Mexico')
INTO Suppliers VALUES(1,'Exotic Liquid','Charlotte Cooper','49 Gilbert St.', 'Berlin', 12209, 'Germany')
INTO Suppliers VALUES(2, 'New Orleans Cajun Delights','Shelley Burke','P. O. Box 78934','Mexico D.F.',05023,'Mexico')
INTO Suppliers VALUES(3, 'Grandma Kellys Homestead','Regina Murphy', '707 Oxford Rd.','Ann Arbor',48104,'USA')
SELECT * FROM DUAL;
