# 📦 Inventory and Stock Management System using PostgreSQL

## 1. Project Overview

The **Inventory and Stock Management System** is an MBA academic project developed using PostgreSQL. The project focuses on managing products, suppliers, warehouses, stock movements and inventory levels through a relational database.

The system helps businesses maintain accurate inventory records, monitor stock availability, identify products that need restocking and analyse stock movements.

This project uses SQL queries to support inventory monitoring and operational decision-making.

## 2. Project Objectives

The main objectives of this project are:

- To develop a structured inventory management database.
- To maintain product, supplier and warehouse information.
- To record stock-in and stock-out transactions.
- To calculate available inventory levels.
- To identify low-stock and out-of-stock products.
- To perform data cleaning and validation.
- To maintain data accuracy using database constraints.
- To generate useful business insights through SQL queries.

## 3. Technologies Used

| Technology | Purpose |
|---|---|
| PostgreSQL | Relational database management |
| pgAdmin 4 | SQL query execution and database management |
| SQL | Data storage, retrieval and analysis |
| CSV | Dataset storage and management |
| GitHub | Project version control and sharing |

## 4. Database Structure

The project consists of five main tables:

| Table Name | Description | Records |
|---|---|---:|
| Categories | Stores product category information | 10 |
| Suppliers | Stores supplier information | 15 |
| Warehouses | Stores warehouse information | 3 |
| Products | Stores product details and pricing | 100 |
| Stock Transactions | Stores stock-in and stock-out records | 200 |
| **Total** | | **328** |

### Database Relationships

The database follows a relational structure:

- One category can have multiple products.
- One supplier can supply multiple products.
- One product can have multiple stock transactions.
- One warehouse can have multiple stock transactions.

Primary keys and foreign keys are used to maintain relationships between tables.

## 5. Dataset Description

The project uses a hypothetical inventory dataset containing:

- 100 products.
- 10 product categories.
- 15 suppliers.
- 3 warehouses.
- 200 stock transactions.

The dataset contains product details, supplier information, warehouse details, stock quantities, transaction dates and pricing information.

All financial values are represented in Indian Rupees (INR).

## 6. SQL Concepts Implemented

The following SQL concepts are demonstrated:

- CREATE TABLE
- INSERT INTO
- SELECT
- WHERE
- ORDER BY
- GROUP BY
- HAVING
- Aggregate Functions
- JOIN Operations
- Subqueries
- UPDATE and DELETE
- Views
- Primary Key and Foreign Key Constraints
- CHECK Constraints
- Data Cleaning
- Transaction Management (COMMIT and ROLLBACK)

A total of 25 SQL queries are included for inventory analysis and database operations.

## 7. Key Project Features

### Inventory Monitoring
Tracks available stock quantities using stock-in and stock-out transactions.

### Low-Stock Identification
Identifies products whose available quantities fall below their reorder levels.

### Supplier Management
Maintains supplier details and connects suppliers with products.

### Warehouse Management
Maintains warehouse information and tracks stock movements across locations.

### Data Cleaning
Demonstrates how duplicate records, missing values, inconsistent names and invalid quantities can be identified and corrected.

### Data Integrity
Uses database constraints to prevent invalid transactions and maintain accurate records.

## 8. Project Folder Structure

```text
Inventory-Stock-Management-System/
│
├── Inventory_Management.sql
├── SQL_Queries.sql
├── Data_Cleaning.sql
├── Integrity_Tests.sql
│
├── categories.csv
├── suppliers.csv
├── warehouses.csv
├── products.csv
├── stock_transactions.csv
│
├── ER_Diagram.png
│
├── Project_Report.pdf
├── Project_Report.docx
│
├── Project_Presentation.pptx
├── Viva_Questions.docx
│
└── README.md
```

## 9. How to Run the Project

Follow these steps to execute the project using PostgreSQL and pgAdmin 4.

### Step 1: Install PostgreSQL

Install PostgreSQL and pgAdmin 4 on your computer.

### Step 2: Create a Database

Open pgAdmin 4 and create a new database named:

`inventory_db`

### Step 3: Execute the Main SQL File

Open Query Tool and execute:

`Inventory_Management.sql`

This script creates the five database tables and inserts the project data.

### Step 4: Execute SQL Queries

Open:

`SQL_Queries.sql`

Execute the queries individually to perform inventory analysis and retrieve business information.

### Step 5: Perform Data Cleaning

Open:

`Data_Cleaning.sql`

Execute the sections individually to identify and correct data-quality issues.

### Step 6: Perform Integrity Testing

Open:

`Integrity_Tests.sql`

Execute the tests individually to verify primary key, foreign key and other database constraints.

**Note:** Some integrity tests are intentionally designed to produce errors. These errors demonstrate that the database correctly rejects invalid data.

## 10. Expected Business Benefits

The system supports better inventory management by:

- Reducing the possibility of stock shortages.
- Helping identify products requiring replenishment.
- Improving inventory visibility.
- Supporting warehouse-level stock monitoring.
- Maintaining accurate stock transaction records.
- Supporting operational planning and decision-making.

## 11. Project Team

This project was developed as part of the MBA academic curriculum.

| S. No. | Team Member | Roll Number |
|---|---|---|
| 1 | Ishan Mishra | 25SOM2039000359 |
| 2 | Parvathi | 25SOM2039000253 |
| 3 | Sreekanth H | 25SOM2039000224 |
| 4 | Abhirup Chakraborty | 25SOM2039002506 |

## 12. Project Deliverables

The repository includes:

- PostgreSQL database creation script.
- SQL analysis queries.
- Data-cleaning script.
- Database integrity testing script.
- CSV datasets.
- Entity Relationship (ER) Diagram.
- Project Report.
- Project Presentation.
- Viva Questions and Answers.

## 13. Conclusion

The Inventory and Stock Management System demonstrates how PostgreSQL can be used to develop a structured database for inventory and warehouse operations.

Through SQL queries, data cleaning techniques and database constraints, the project provides a practical understanding of inventory monitoring, stock management and operational decision-making.

The project also demonstrates the application of database management concepts to real-world business and supply chain operations.

---

**Project Domain:** Operations Management and Inventory Management

**Database:** PostgreSQL

**Developed By:** MBA Students
