# SQL Test Cases — Project 03

Database: `Northwind_Portfolio`  
Tool: SQL Server Management Studio (SSMS)

## TC-SQL-001 — Verify customers exist
**Type:** Positive / Data availability  
**Priority:** High  
**Validates:** Customer data is available.

```sql
SELECT * FROM Customers;
```
**Expected:** 91 customer records.  
**Actual:** 91 rows returned.  
**Status:** PASS  
**QA:** Basic data-load/data-availability check.

## TC-SQL-002 — Verify customer by ID
**Type:** Positive / Data validation  
**Priority:** High

```sql
SELECT CustomerID, CompanyName, ContactName, Country
FROM Customers
WHERE CustomerID = 'ALFKI';
```
**Expected:** One record for `ALFKI`.  
**Actual:** 1 row returned.  
**Status:** PASS  
**QA:** Validates record lookup by identifier.

## TC-SQL-003 — Verify customers from Germany
**Type:** Positive / Filtering  
**Priority:** Medium

```sql
SELECT CustomerID, CompanyName, Country
FROM Customers
WHERE Country = 'Germany';
```
**Expected:** Only German customers.  
**Actual:** 11 rows returned.  
**Status:** PASS  
**QA:** Validates a basic filter condition.

## TC-SQL-004 — Verify customers from selected countries
**Type:** Positive / Filtering  
**Priority:** Medium

```sql
SELECT CustomerID, CompanyName, Country
FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');
```
**Expected:** Only Germany, France or UK.  
**Actual:** 33 rows returned.  
**Status:** PASS  
**QA:** Demonstrates multi-value filtering with `IN`.

## TC-SQL-005 — Verify company-name pattern
**Type:** Positive / Pattern validation  
**Priority:** Medium

```sql
SELECT CustomerID, CompanyName
FROM Customers
WHERE CompanyName LIKE 'A%';
```
**Expected:** Only company names beginning with A.  
**Actual:** 4 rows returned.  
**Status:** PASS  
**QA:** Demonstrates wildcard/pattern validation.

## TC-SQL-006 — Verify total customer count
**Type:** Aggregation / Data validation  
**Priority:** High

```sql
SELECT COUNT(*) AS TotalCustomers
FROM Customers;
```
**Expected:** 91.  
**Actual:** Aggregate count = 91.  
**Status:** PASS  
**QA:** Useful for reconciliation and migration checks.

## TC-SQL-007 — Verify products above price threshold
**Type:** Boundary / Numeric validation  
**Priority:** High

```sql
SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE UnitPrice > 50;
```
**Expected:** Only prices > 50.  
**Actual:** 7 rows returned.  
**Status:** PASS  
**QA:** Validates strict greater-than behavior.

## TC-SQL-008 — Verify products within price range
**Type:** Boundary testing  
**Priority:** Medium

```sql
SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE UnitPrice BETWEEN 20 AND 50;
```
**Expected:** Prices 20–50 inclusive.  
**Actual:** 31 rows returned.  
**Status:** PASS  
**QA:** Validates inclusive boundaries.

## TC-SQL-009 — Verify customer/order relationship
**Type:** Data integrity / JOIN  
**Priority:** High

```sql
SELECT o.OrderID, c.CustomerID, c.CompanyName, o.OrderDate
FROM Orders AS o
INNER JOIN Customers AS c
    ON o.CustomerID = c.CustomerID;
```
**Expected:** Orders are associated with valid customers.  
**Actual:** 830 rows returned.  
**Status:** PASS  
**QA:** Demonstrates relational validation with `INNER JOIN`.

## TC-SQL-010 — Verify order/detail/product relationships
**Type:** Data integrity / Multi-table JOIN  
**Priority:** High

```sql
SELECT o.OrderID, p.ProductName, od.Quantity, od.UnitPrice, od.Discount
FROM Orders AS o
INNER JOIN [Order Details] AS od
    ON o.OrderID = od.OrderID
INNER JOIN Products AS p
    ON od.ProductID = p.ProductID;
```
**Expected:** Every order detail links to an existing order and product.  
**Actual:** 2,155 rows returned.  
**Status:** PASS  
**QA:** Multiple rows per order are expected because an order can contain multiple products.

## TC-SQL-011 — Detect orders without a valid customer
**Type:** Negative / Referential integrity  
**Priority:** Critical

```sql
SELECT o.OrderID, o.CustomerID
FROM Orders AS o
LEFT JOIN Customers AS c
    ON o.CustomerID = c.CustomerID
WHERE c.CustomerID IS NULL;
```
**Expected:** 0 rows.  
**Actual:** 0 rows.  
**Status:** PASS  
**QA:** A violation query; any returned row is a candidate integrity defect.

## TC-SQL-012 — Count orders per customer
**Type:** Aggregation  
**Priority:** High

```sql
SELECT CustomerID, COUNT(*) AS TotalOrders
FROM Orders
GROUP BY CustomerID
ORDER BY TotalOrders DESC;
```
**Expected:** One group per customer represented in Orders.  
**Actual:** 89 grouped rows returned.  
**Status:** PASS  
**QA:** `GROUP BY` creates groups and `COUNT` counts rows within each group.

## TC-SQL-013 — Find customers with more than five orders
**Type:** Aggregation / Business-rule validation  
**Priority:** High

```sql
SELECT CustomerID, COUNT(*) AS TotalOrders
FROM Orders
GROUP BY CustomerID
HAVING COUNT(*) > 5
ORDER BY TotalOrders DESC;
```
**Expected:** Only customers with >5 orders.  
**Actual:** 63 grouped rows returned.  
**Status:** PASS  
**QA:** Demonstrates `HAVING` for filtering aggregated groups.

## TC-SQL-014 — Detect invalid product prices
**Type:** Negative / Data integrity  
**Priority:** High

```sql
SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE UnitPrice < 0;
```
**Expected:** 0 rows.  
**Actual:** 0 rows.  
**Status:** PASS  
**QA:** Searches for invalid database states instead of valid ones.

## TC-SQL-015 — Detect invalid order-detail values
**Type:** Negative / Data integrity  
**Priority:** Critical

```sql
SELECT OrderID, ProductID, Quantity, UnitPrice, Discount
FROM [Order Details]
WHERE Quantity <= 0
   OR UnitPrice < 0
   OR Discount < 0
   OR Discount > 1;
```
**Expected:** 0 rows.  
**Actual:** 0 rows.  
**Status:** PASS  
**QA:** Combines multiple data-quality rules with `OR`.

## TC-SQL-016 — Detect orders without an order date
**Type:** Negative / Data completeness  
**Priority:** High

```sql
SELECT OrderID, OrderDate
FROM Orders
WHERE OrderDate IS NULL;
```
**Expected:** 0 rows.  
**Actual:** 0 rows.  
**Status:** PASS  
**QA:** Demonstrates NULL validation using `IS NULL`.

## TC-SQL-017 — Verify discontinued products
**Type:** Data validation  
**Priority:** Medium

```sql
SELECT ProductID, ProductName, Discontinued
FROM Products
WHERE Discontinued = 1;
```
**Expected:** Discontinued products are returned.  
**Actual:** 8 rows returned.  
**Status:** PASS  
**QA:** Validates status-flag data.

## TC-SQL-018 — Not executed
The average-price query was intentionally excluded from the final execution.

```sql
SELECT AVG(UnitPrice) AS AveragePrice
FROM Products;
```

**Status:** NOT EXECUTED

## TC-SQL-019 — Identify the most expensive product
**Type:** Boundary / Sorting  
**Priority:** Medium

```sql
SELECT TOP 1 ProductID, ProductName, UnitPrice
FROM Products
ORDER BY UnitPrice DESC;
```
**Expected:** Exactly one highest-priced product.  
**Actual:** 1 row returned.  
**Status:** PASS  
**QA:** Combines `TOP 1` with descending sort.

## TC-SQL-020 — Verify all customers and their order counts
**Type:** Data integrity / LEFT JOIN / Aggregation  
**Priority:** High

```sql
SELECT c.CustomerID, c.CompanyName, COUNT(o.OrderID) AS TotalOrders
FROM Customers AS c
LEFT JOIN Orders AS o
    ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.CompanyName
ORDER BY TotalOrders DESC;
```
**Expected:** All 91 customers represented, including customers with zero orders.  
**Actual:** 91 rows returned.  
**Status:** PASS  
**QA:** `LEFT JOIN` preserves customers without matching orders.

---

## Execution summary

- Planned: 20
- Executed: 19
- PASS: 19
- FAIL: 0
- Not executed: TC-SQL-018
- Confirmed defects: 0
