# Project 03 — SQL Database Testing | Northwind

## Project Overview

This project demonstrates the use of SQL for Quality Assurance and database testing using the Northwind sample database in Microsoft SQL Server.

The project focuses on data validation, filtering, aggregation, relational integrity, JOINs, boundary checks and detection of invalid data.

## Environment

| Item | Value |
|---|---|
| Database | `Northwind_Portfolio` |
| Engine | Microsoft SQL Server |
| Tool | SQL Server Management Studio (SSMS) |
| Dataset | Northwind Sample Database |
| Planned test cases | 20 |
| Executed | 19 |
| Passed | 19 |
| Failed | 0 |
| Not executed | TC-SQL-018 |
| Confirmed SQL defects | 0 |

## Structure

```text
project-03-sql-testing/
├── README.md
├── 01-Test-Plan/
├── 02-Test-Cases/
├── 03-SQL-Queries/
├── 04-Bug-Reports/
├── 05-Test-Execution/
└── 06-Evidence/
```

## Skills Demonstrated

- SELECT / FROM / WHERE
- AND / OR / IN / LIKE
- ORDER BY / TOP
- COUNT and aggregation
- Comparison operators
- BETWEEN
- IS NULL
- INNER JOIN
- LEFT JOIN
- Multi-table JOINs
- GROUP BY / HAVING
- Positive and negative testing
- Boundary testing
- Data-quality and referential-integrity validation

## QA Approach

The key idea is to use SQL as a verification tool:

```text
Expected database state
        ↓
SQL validation query
        ↓
Actual result
        ↓
PASS / FAIL
        ↓
Bug report when expected ≠ actual
```
