SELECT Distinct City from Customers 
UNION 
SELECT Distinct City from Suppliers;

SELECT City from Customers 
UNION 
SELECT City from Suppliers;

SELECT City from Customers 
WHERE Country = 'Germany' 
UNION 
SELECT City from Suppliers
WHERE Country = 'Germany';

SELECT CustomerName, SupplierName
FROM Customers INNER JOIN Suppliers
ON Customers.City = Suppliers.City;

SELECT Country 
FROM Suppliers
MINUS
SELECT Country
FROM Customers;
