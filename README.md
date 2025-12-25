# 📊 Sales & Customer Analytics SQL Project

## 📌 Project Overview
**This project demonstrates end-to-end SQL skills by designing and analyzing a Sales & Customer Analytics system.
The database captures customer details, product information, orders, and order items to derive business insights using SQL.**

# 🗂️ Database Schema

The project consists of 4 relational tables:

## 1️⃣ Customers

 - Stores customer information.
 - customer_id (Primary Key)
 - name
 - city
 - signup_date

## 2️⃣ Products

- Stores product catalog details.
- product_id (Primary Key)
- product_name
- category
- price

## 3️⃣ Orders

- Stores order-level information.
- order_id (Primary Key)
- customer_id (Foreign Key)
- order_date
- total_amount

## 4️⃣ Order_Items

- Stores item-level order details.
- order_item_id (Primary Key)
- order_id (Foreign Key)
- product_id (Foreign Key)
- quantity

**📌 Each table contains 50 records to simulate real-world data.**

## 🛠️ SQL Concepts Used

- Database creation
- Table creation with primary & foreign keys
- Data insertion
- Filtering (WHERE, IN, BETWEEN)
- Aggregations (SUM, COUNT, AVG, MIN, MAX)
- GROUP BY & HAVING
- INNER JOIN, LEFT JOIN, MULTI-TABLE JOIN
- Subqueries
- Window functions 
- CASE statements
