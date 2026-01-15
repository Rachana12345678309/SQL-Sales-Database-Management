# SQL Sales and Customer Relationship Management

This project demonstrates the core principles of Relational Database Management Systems (RDBMS). It involves the creation of a schema to track sales performance and customer interactions, utilizing constraints, set operators, and multi-table joins.

## Overview

The database is designed to manage two primary entities: **Salesmen** and **Customers**. The project focuses on establishing a link between these entities to analyze purchase patterns and commission structures.



## Database Schema

### 1. Salesman Table
Contains professional details of the sales force:
- `SalesmanId`: Unique identifier.
- `Name`: Full name of the salesman.
- `Commission`: Percentage/Amount earned on sales.
- `City`: Base location.
- `Age`: Demographics.

### 2. Customer Table
Tracks individual client transactions:
- `CustomerId`: Unique identifier.
- `CustomerName`: Name of the client.
- `PurchaseAmount`: Total value of the transaction.
- `SalesmanId`: Foreign key linking back to the Salesman.

## Key SQL Implementations

### Data Integrity & Constraints
The project implements schema modifications to ensure data quality:
- **Foreign Key Constraints:** Establishing a formal link between `Customer` and `Salesman` tables to maintain referential integrity.
- **Null Constraints:** Ensuring critical fields like `CustomerName` are never empty.

### Querying & Data Retrieval
- **Pattern Matching:** Using the `LIKE` operator to filter names based on specific characters (e.g., names ending with 'N').
- **Logical Filtering:** Combining multiple conditions using `AND` and `WHERE` clauses for high-value purchase analysis.

### Set Operators
Demonstration of vertical data combining:
- **UNION:** Merging results from both tables to retrieve a unique list of IDs.
- **INTERSECT:** Finding common identifiers between the sales force and the customer base.



### Advanced Joins
The script performs complex joins to generate a master report including:
- `OrderDate`, `Salesman Name`, `Customer Name`, and `Commission`.
- Filtering for specific purchase ranges (e.g., $500 to $1500).



## Tech Stack
- **Language:** T-SQL / SQL
- **Environment:** MS SQL Server / MySQL Workbench

## How to Use

1. **Setup Database:**
   Run the following command to initialize the environment:
   ```sql
   CREATE DATABASE assignments;
   USE assignments;

2. **Run Script:** Execute the Assignment 1 - Sales records.sql file in your SQL editor to create tables, insert sample data, and run the analytical queries.

3. **Verify Results:** Check the output of the final JOIN query to see the consolidated sales report.
