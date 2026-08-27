# Project 03 — SQL Test Cases

**Database:** `Northwind_Portfolio`  
**Database engine:** Microsoft SQL Server  
**Tool:** SQL Server Management Studio (SSMS)  
**Dataset:** Northwind Sample Database  
**Test cases documented:** 19  
**TC-SQL-018:** intentionally omitted from execution, per project decision.

---

## How to use this document

Each test case contains:

- **What it validates:** the QA purpose of the query.
- **Why this test:** why the validation is useful.
- **SQL Query:** query executed in SSMS.
- **Expected Result:** what should happen.
- **Actual Result:** result observed during the current execution.
- **Status:** PASS/FAIL based on the expected behavior and observed result.
- **QA Explanation:** what a tester should understand from the case.

> **Important:** A query executing successfully does not automatically mean the test passes. A SQL test passes when the observed database state matches the expected condition.

---

# 1. Basic data retrieval and filtering

## TC-SQL-001 — Verify customers exist

**Type:** Positive / Data availability  
**Priority:** High

### What it validates
Verifies that the `Customers` table contains customer records.

### Why this test
Before performing more detailed customer validations, QA should verify that the expected dataset is actually present.

### SQL Query

```sql
SELECT *
FROM Customers;
```

### Expected Result

Customer records are returned. For this Northwind dataset, the expected number is:

**91 customers**

### Actual Result

**91 rows returned.**

### Status

**PASS**

### QA Explanation

This is a basic **data availability check**. It can detect problems such as an empty table, failed data load, or an unexpected database state.

---

## TC-SQL-002 — Verify customer by ID

**Type:** Positive / Data validation  
**Priority:** High

### What it validates
Verifies that a specific customer can be retrieved using its primary identifier.

### Why this test
Applications frequently retrieve records by ID. QA should verify that the expected record exists and can be located correctly.

### SQL Query

```sql
SELECT
    CustomerID,
    CompanyName,
    ContactName,
    Country
FROM Customers
WHERE CustomerID = 'ALFKI';
```

### Expected Result

One customer record should be returned for `ALFKI`.

### Actual Result

**1 row returned.**

### Status

**PASS**

### QA Explanation

This is a basic **record lookup test** using `WHERE`. It validates that filtering by an identifier returns the expected record.

---

## TC-SQL-003 — Verify customers from Germany

**Type:** Positive / Filtering  
**Priority:** Medium

### What it validates
Verifies that the query returns only customers whose `Country` is Germany.

### Why this test
Filters are common in applications. QA should verify that the database query returns only records satisfying the requested condition.

### SQL Query

```sql
SELECT
    CustomerID,
    CompanyName,
    Country
FROM Customers
WHERE Country = 'Germany';
```

### Expected Result

Only German customers should be returned.

### Actual Result

**11 rows returned.**

### Status

**PASS**

### QA Explanation

This demonstrates `WHERE` filtering. The important QA principle is that every returned row should satisfy the condition.

---

## TC-SQL-004 — Verify customers from selected countries

**Type:** Positive / Filtering  
**Priority:** Medium

### What it validates
Verifies filtering against multiple allowed values.

### Why this test
Tests such as country, status, category, or role filters often allow several values. `IN` provides a concise way to test a list of accepted values.

### SQL Query

```sql
SELECT
    CustomerID,
    CompanyName,
    Country
FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');
```

### Expected Result

Only customers from Germany, France, or the UK should be returned.

### Actual Result

**33 rows returned.**

### Status

**PASS**

### QA Explanation

`IN` is effectively a cleaner way to express multiple `OR` conditions. As QA, verify that no record from another country appears in the result.

---

## TC-SQL-005 — Verify company-name pattern

**Type:** Positive / Pattern validation  
**Priority:** Medium

### What it validates
Verifies that `LIKE` correctly finds company names beginning with the letter `A`.

### Why this test
Pattern searches are common in search boxes and filtering features.

### SQL Query

```sql
SELECT
    CustomerID,
    CompanyName
FROM Customers
WHERE CompanyName LIKE 'A%';
```

### Expected Result

Only company names beginning with `A` should be returned.

### Actual Result

**4 rows returned.**

### Status

**PASS**

### QA Explanation

`%` is a wildcard. `A%` means "starts with A and can have any number of characters after it."

---

# 2. Aggregations and numeric validation

## TC-SQL-006 — Verify total customer count

**Type:** Data validation / Aggregation  
**Priority:** High

### What it validates
Verifies the total number of customer records.

### Why this test
Counting records is useful for reconciling a database against application totals, migration results, or requirements.

### SQL Query

```sql
SELECT COUNT(*) AS TotalCustomers
FROM Customers;
```

### Expected Result

**91 customers**

### Actual Result

**1 row returned containing the aggregate count: 91.**

### Status

**PASS**

### QA Explanation

`COUNT(*)` returns one aggregate row containing the number of records. The phrase "1 row returned" does not mean there is only one customer; it means the aggregate query produced one result row.

---

## TC-SQL-007 — Verify products above price threshold

**Type:** Positive / Boundary validation  
**Priority:** High

### What it validates
Finds products with a `UnitPrice` greater than 50.

### Why this test
Numeric boundaries are common business rules. QA should validate that filtering operators behave correctly.

### SQL Query

```sql
SELECT
    ProductID,
    ProductName,
    UnitPrice
FROM Products
WHERE UnitPrice > 50;
```

### Expected Result

Only products with `UnitPrice > 50` should be returned.

### Actual Result

**7 rows returned.**

### Status

**PASS**

### QA Explanation

The important detail is the strict `>` operator: a product priced exactly at 50 would not be included.

---

## TC-SQL-008 — Verify products within price range

**Type:** Boundary testing  
**Priority:** Medium

### What it validates
Finds products whose price is between 20 and 50.

### Why this test
Range validation is useful for testing prices, dates, quantities, ages, scores, and other bounded values.

### SQL Query

```sql
SELECT
    ProductID,
    ProductName,
    UnitPrice
FROM Products
WHERE UnitPrice BETWEEN 20 AND 50;
```

### Expected Result

Only products with `UnitPrice` between 20 and 50, including 20 and 50, should be returned.

### Actual Result

**31 rows returned.**

### Status

**PASS**

### QA Explanation

`BETWEEN` is inclusive. That means the boundary values are included.

---

## TC-SQL-009 — Verify customer/order relationship

**Type:** Positive / Data integrity / JOIN  
**Priority:** High

### What it validates
Verifies that orders can be linked to their customers using `CustomerID`.

### Why this test
Applications frequently combine data from related tables. Broken relationships can cause missing or incorrect information in the UI/API.

### SQL Query

```sql
SELECT
    o.OrderID,
    c.CustomerID,
    c.CompanyName,
    o.OrderDate
FROM Orders AS o
INNER JOIN Customers AS c
    ON o.CustomerID = c.CustomerID;
```

### Expected Result

Orders with a valid customer relationship should be returned, with the correct customer information attached.

### Actual Result

**830 rows returned.**

### Status

**PASS**

### QA Explanation

An `INNER JOIN` returns rows where the relationship condition matches. This query demonstrates how QA can validate relational data instead of checking isolated tables.

---

## TC-SQL-010 — Verify order, detail, and product relationships

**Type:** Data integrity / Multi-table JOIN  
**Priority:** High

### What it validates
Verifies the relationship among `Orders`, `[Order Details]`, and `Products`.

### Why this test
An order is not just one record. Its details identify products, quantities, prices, and discounts. QA should verify that the relationships between these tables are intact.

### SQL Query

```sql
SELECT
    o.OrderID,
    p.ProductName,
    od.Quantity,
    od.UnitPrice,
    od.Discount
FROM Orders AS o
INNER JOIN [Order Details] AS od
    ON o.OrderID = od.OrderID
INNER JOIN Products AS p
    ON od.ProductID = p.ProductID;
```

### Expected Result

Each returned order detail should be linked to an existing order and an existing product.

### Actual Result

**2,155 rows returned.**

### Status

**PASS**

### QA Explanation

One order can contain multiple products, so the number of rows is expected to be larger than the number of orders. This is a good example of why a QA tester must understand database relationships before deciding whether a row count is correct.

---

# 3. Data integrity and invalid-data detection

## TC-SQL-011 — Detect orders without a valid customer

**Type:** Negative / Referential integrity  
**Priority:** Critical

### What it validates
Looks for orders whose `CustomerID` does not match any customer.

### Why this test
An order should not point to a customer that does not exist. This is a classic data-integrity test.

### SQL Query

```sql
SELECT
    o.OrderID,
    o.CustomerID
FROM Orders AS o
LEFT JOIN Customers AS c
    ON o.CustomerID = c.CustomerID
WHERE c.CustomerID IS NULL;
```

### Expected Result

**0 rows.**

### Actual Result

**0 rows.**

### Status

**PASS**

### QA Explanation

This is a powerful QA pattern:

> Instead of asking "show me valid data", ask "show me violations."

If the query returns anything, those rows are candidates for a data-integrity defect.

---

## TC-SQL-012 — Count orders per customer

**Type:** Aggregation / Data analysis  
**Priority:** High

### What it validates
Counts how many orders are associated with each customer.

### Why this test
The same technique can validate dashboards, customer order histories, reports, and summary values.

### SQL Query

```sql
SELECT
    CustomerID,
    COUNT(*) AS TotalOrders
FROM Orders
GROUP BY CustomerID
ORDER BY TotalOrders DESC;
```

### Expected Result

One result row should be produced for each customer ID represented in `Orders`, with the corresponding number of orders.

### Actual Result

**89 grouped rows returned.**

### Status

**PASS**

### QA Explanation

`GROUP BY` creates groups. `COUNT(*)` then counts the records inside each group. The 89 result rows represent customer IDs that have at least one order; this is not the same as the total number of customers in the database.

---

## TC-SQL-013 — Find customers with more than five orders

**Type:** Aggregation / Business-rule validation  
**Priority:** High

### What it validates
Finds customers whose total number of orders is greater than 5.

### Why this test
This demonstrates how QA can validate rules applied to aggregated data.

### SQL Query

```sql
SELECT
    CustomerID,
    COUNT(*) AS TotalOrders
FROM Orders
GROUP BY CustomerID
HAVING COUNT(*) > 5
ORDER BY TotalOrders DESC;
```

### Expected Result

Only customers with more than 5 orders should appear.

### Actual Result

**63 grouped rows returned.**

### Status

**PASS**

### QA Explanation

`WHERE` filters individual rows. `HAVING` filters groups after aggregation. This distinction is important in SQL testing and frequently appears in technical interviews.

---

## TC-SQL-014 — Detect invalid product prices

**Type:** Negative / Data integrity  
**Priority:** High

### What it validates
Searches for products with a negative price.

### Why this test
A negative product price is an invalid data condition for this dataset and should not exist.

### SQL Query

```sql
SELECT
    ProductID,
    ProductName,
    UnitPrice
FROM Products
WHERE UnitPrice < 0;
```

### Expected Result

**0 rows.**

### Actual Result

**0 rows.**

### Status

**PASS**

### QA Explanation

Negative testing can be implemented as a "violation query": if the query returns a row, QA has found a candidate defect.

---

## TC-SQL-015 — Detect invalid order-detail values

**Type:** Negative / Data integrity  
**Priority:** Critical

### What it validates
Checks for invalid quantity, price, or discount values.

### SQL Query

```sql
SELECT
    OrderID,
    ProductID,
    Quantity,
    UnitPrice,
    Discount
FROM [Order Details]
WHERE Quantity <= 0
   OR UnitPrice < 0
   OR Discount < 0
   OR Discount > 1;
```

### Expected Result

**0 rows.**

No order detail should have:
- quantity less than or equal to 0;
- negative unit price;
- negative discount;
- discount greater than 1 (100%).

### Actual Result

**0 rows.**

### Status

**PASS**

### QA Explanation

This test combines several business/data-quality rules with `OR`. A single returned row would indicate at least one violation.

---

## TC-SQL-016 — Detect orders without an order date

**Type:** Negative / Data completeness  
**Priority:** High

### What it validates
Searches for orders where `OrderDate` is missing.

### Why this test
A missing date can break sorting, reporting, filtering, or business logic.

### SQL Query

```sql
SELECT
    OrderID,
    OrderDate
FROM Orders
WHERE OrderDate IS NULL;
```

### Expected Result

**0 rows.**

### Actual Result

**0 rows.**

### Status

**PASS**

### QA Explanation

`NULL` represents absence of a value. For NULL checks, use `IS NULL` rather than `= NULL`.

---

## TC-SQL-017 — Verify discontinued products

**Type:** Data validation  
**Priority:** Medium

### What it validates
Retrieves products marked as discontinued.

### Why this test
Discontinued status can affect what products are displayed or allowed for sale.

### SQL Query

```sql
SELECT
    ProductID,
    ProductName,
    Discontinued
FROM Products
WHERE Discontinued = 1;
```

### Expected Result

Products marked with `Discontinued = 1` should be returned.

### Actual Result

**8 rows returned.**

### Status

**PASS**

### QA Explanation

This validates a boolean-like status field stored as a numeric flag in the dataset.

---

# 4. TC-SQL-018 — Not executed

This test was intentionally omitted from the project execution, as decided during the project build.

The original exercise was an average-price query:

```sql
SELECT AVG(UnitPrice) AS AveragePrice
FROM Products;
```

It is **not included in the execution summary** for this version of the project.

---

# 5. Advanced retrieval and aggregation

## TC-SQL-019 — Identify the most expensive product

**Type:** Positive / Aggregation and sorting  
**Priority:** Medium

### What it validates
Identifies the product with the highest `UnitPrice`.

### Why this test
This is a practical example of combining sorting with `TOP` to retrieve a specific boundary record.

### SQL Query

```sql
SELECT TOP 1
    ProductID,
    ProductName,
    UnitPrice
FROM Products
ORDER BY UnitPrice DESC;
```

### Expected Result

Exactly one product should be returned: the product with the highest price.

### Actual Result

**1 row returned.**

### Status

**PASS**

### QA Explanation

`ORDER BY UnitPrice DESC` puts the highest price first; `TOP 1` then returns only the first record.

---

## TC-SQL-020 — Verify all customers and their order counts

**Type:** Data integrity / LEFT JOIN / Aggregation  
**Priority:** High

### What it validates
Returns all customers and the number of orders associated with each customer, including customers with zero orders.

### Why this test
A normal `INNER JOIN` would remove customers without orders. A `LEFT JOIN` lets QA verify that no customer disappears simply because there is no matching order.

### SQL Query

```sql
SELECT
    c.CustomerID,
    c.CompanyName,
    COUNT(o.OrderID) AS TotalOrders
FROM Customers AS c
LEFT JOIN Orders AS o
    ON c.CustomerID = o.CustomerID
GROUP BY
    c.CustomerID,
    c.CompanyName
ORDER BY TotalOrders DESC;
```

### Expected Result

All customers should be represented in the result, including customers with zero orders.

### Actual Result

**91 rows returned.**

### Status

**PASS**

### QA Explanation

There are 91 customers in the dataset, so the result should contain 91 customer groups. `LEFT JOIN` is the key concept: it preserves all rows from `Customers`, even when there is no matching order.

---

# 6. Execution Summary

| ID | Result | Rows returned |
|---|---|---:|
| TC-SQL-001 | PASS | 91 |
| TC-SQL-002 | PASS | 1 |
| TC-SQL-003 | PASS | 11 |
| TC-SQL-004 | PASS | 33 |
| TC-SQL-005 | PASS | 4 |
| TC-SQL-006 | PASS | 1 aggregate row |
| TC-SQL-007 | PASS | 7 |
| TC-SQL-008 | PASS | 31 |
| TC-SQL-009 | PASS | 830 |
| TC-SQL-010 | PASS | 2,155 |
| TC-SQL-011 | PASS | 0 |
| TC-SQL-012 | PASS | 89 |
| TC-SQL-013 | PASS | 63 |
| TC-SQL-014 | PASS | 0 |
| TC-SQL-015 | PASS | 0 |
| TC-SQL-016 | PASS | 0 |
| TC-SQL-017 | PASS | 8 |
| TC-SQL-018 | NOT EXECUTED | — |
| TC-SQL-019 | PASS | 1 |
| TC-SQL-020 | PASS | 91 |

## Summary

- **Executed:** 19
- **PASS:** 19
- **FAIL:** 0
- **Not executed:** 1 (`TC-SQL-018`)
- **Confirmed SQL defects:** 0

---

# 7. Skills demonstrated

This test suite demonstrates the following SQL/QA concepts:

- `SELECT`
- `FROM`
- `WHERE`
- `AND`
- `OR`
- `IN`
- `LIKE`
- `ORDER BY`
- `TOP`
- `COUNT`
- Comparison operators: `>`, `<`, `>=`, `<=`
- `BETWEEN`
- `IS NULL`
- `INNER JOIN`
- `LEFT JOIN`
- Multi-table joins
- `GROUP BY`
- `HAVING`
- Aggregation
- Boundary validation
- Data completeness testing
- Referential integrity testing
- Invalid-data detection
- Business-rule validation
- Positive testing
- Negative testing
- Data-quality testing

---

# 8. QA takeaway

The main purpose of this project is not to demonstrate that SQL queries can be executed.

It demonstrates that SQL can be used as a **QA verification tool**:

```text
Application behavior
        ↓
Expected database state
        ↓
SQL validation query
        ↓
Actual database result
        ↓
PASS / FAIL
        ↓
Bug report when expected ≠ actual
```

That is the skill this project is intended to demonstrate in a QA portfolio.
