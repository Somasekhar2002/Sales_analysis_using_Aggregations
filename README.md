TASK 6: Sales Trend Analysis Using Aggregations
-----------------------------------------------

📘 Objective:
Analyze monthly revenue and order volume using SQL aggregate functions such as 
EXTRACT(), SUM(), and COUNT() to understand sales trends over time.

🧰 Tools Used:
- MySQL Workbench
- Dataset: online_sales_dataset.csv

📊 Dataset Information:
Table Name: online_sales
Columns Used:
- order_id (INT)
- order_date (DATE)
- amount (DECIMAL)
- product_id (VARCHAR)
- customer_id (VARCHAR)
- region (VARCHAR)
- category (VARCHAR)
- payment_method (VARCHAR)
- quantity (INT)

🧠 Steps Performed:
1. Imported the online_sales_dataset.csv file into MySQL Workbench.
2. Ensured the order_date column was in DATE format (YYYY-MM-DD).
3. Executed SQL queries to:
   - Extract year and month using EXTRACT()
   - Calculate total monthly revenue using SUM(amount)
   - Calculate monthly order volume using COUNT(DISTINCT order_id)
   - Group results by year and month
   - Sort data using ORDER BY
4. Limited results for specific periods (e.g., 2024) using WHERE clauses.
5. Exported query results as monthly_sales_summary.csv.
6. Captured screenshots of the dataset and query output for submission.
