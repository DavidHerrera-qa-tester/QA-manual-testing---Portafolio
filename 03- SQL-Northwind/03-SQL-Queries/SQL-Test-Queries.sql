USE Northwind_Portfolio;
GO

-- TC-SQL-001
SELECT * FROM Customers;
GO
-- TC-SQL-002
SELECT CustomerID, CompanyName, ContactName, Country FROM Customers WHERE CustomerID = 'ALFKI';
GO
-- TC-SQL-003
SELECT CustomerID, CompanyName, Country FROM Customers WHERE Country = 'Germany';
GO
-- TC-SQL-004
SELECT CustomerID, CompanyName, Country FROM Customers WHERE Country IN ('Germany', 'France', 'UK');
GO
-- TC-SQL-005
SELECT CustomerID, CompanyName FROM Customers WHERE CompanyName LIKE 'A%';
GO
-- TC-SQL-006
SELECT COUNT(*) AS TotalCustomers FROM Customers;
GO
-- TC-SQL-007
SELECT ProductID, ProductName, UnitPrice FROM Products WHERE UnitPrice > 50;
GO
-- TC-SQL-008
SELECT ProductID, ProductName, UnitPrice FROM Products WHERE UnitPrice BETWEEN 20 AND 50;
GO
-- TC-SQL-009
SELECT o.OrderID, c.CustomerID, c.CompanyName, o.OrderDate FROM Orders AS o INNER JOIN Customers AS c ON o.CustomerID = c.CustomerID;
GO
-- TC-SQL-010
SELECT o.OrderID, p.ProductName, od.Quantity, od.UnitPrice, od.Discount FROM Orders AS o INNER JOIN [Order Details] AS od ON o.OrderID = od.OrderID INNER JOIN Products AS p ON od.ProductID = p.ProductID;
GO
-- TC-SQL-011
SELECT o.OrderID, o.CustomerID FROM Orders AS o LEFT JOIN Customers AS c ON o.CustomerID = c.CustomerID WHERE c.CustomerID IS NULL;
GO
-- TC-SQL-012
SELECT CustomerID, COUNT(*) AS TotalOrders FROM Orders GROUP BY CustomerID ORDER BY TotalOrders DESC;
GO
-- TC-SQL-013
SELECT CustomerID, COUNT(*) AS TotalOrders FROM Orders GROUP BY CustomerID HAVING COUNT(*) > 5 ORDER BY TotalOrders DESC;
GO
-- TC-SQL-014
SELECT ProductID, ProductName, UnitPrice FROM Products WHERE UnitPrice < 0;
GO
-- TC-SQL-015
SELECT OrderID, ProductID, Quantity, UnitPrice, Discount FROM [Order Details] WHERE Quantity <= 0 OR UnitPrice < 0 OR Discount < 0 OR Discount > 1;
GO
-- TC-SQL-016
SELECT OrderID, OrderDate FROM Orders WHERE OrderDate IS NULL;
GO
-- TC-SQL-017
SELECT ProductID, ProductName, Discontinued FROM Products WHERE Discontinued = 1;
GO
-- TC-SQL-018
SELECT TOP 1 ProductID, ProductName, UnitPrice FROM Products ORDER BY UnitPrice DESC;
GO
-- TC-SQL-019
SELECT c.CustomerID, c.CompanyName, COUNT(o.OrderID) AS TotalOrders FROM Customers AS c LEFT JOIN Orders AS o ON c.CustomerID = o.CustomerID GROUP BY c.CustomerID, c.CompanyName ORDER BY TotalOrders DESC;
GO
