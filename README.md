# sales-trend-analysis-sql
SQL-based monthly sales trend analysis using aggregations on e-commerce transaction data.


# 💼 Data Analyst Internship - Task 6: Sales Trend Analysis Using Aggregations

## 📌 Objective
Analyze monthly revenue and order volume from the `online_sales` dataset using SQL aggregation techniques.

---

## 📊 Dataset
- **File:** `Online Sales Data.csv`
- **Table Name:** `online_sales`
- **Key Columns Used:**
  - `order_date` (DATE)
  - `total_revenue` (DECIMAL)
  - `transaction_id` (INT)

---

## 🧠 SQL Concepts Applied
- `YEAR()` and `MONTH()` extraction
- Aggregate functions: `SUM()`, `COUNT(DISTINCT)`
- Handling `NULL` values using `COALESCE()`
- `GROUP BY` and `ORDER BY` for time-based analysis

---

## 🛠️ Steps Performed
1. Created a new MySQL database and table (`sales_db.online_sales`)
2. Imported the dataset into the table
3. Wrote a query to:
   - Extract year and month from `order_date`
   - Calculate monthly revenue using `SUM(COALESCE(total_revenue, 0))`
   - Count monthly order volume using `COUNT(DISTINCT transaction_id)`
   - Group and sort the results by year and month

---

## 📈 Results

| Year | Month | Monthly Revenue | Monthly Order Volume |
|------|-------|------------------|------------------------|
| 2024 | 1     | 14548.32         | 31                     |
| 2024 | 2     | 10803.97         | 29                     |
| ...  | ...   | ...              | ...                   |

📷 *See `result_screenshot.png` for full table.*

---

🔗 Submission This repository contains:

- online_sales_query.sql – SQL script used
- Online Sales Data.csv – dataset
- result_screenshot.png – MySQL result table
- README.md – this file
