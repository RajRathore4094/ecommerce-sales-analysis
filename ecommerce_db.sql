-- E-commerce Sales Data Analysis

-- 1. Total Orders
SELECT COUNT(*) AS total_orders
FROM sales_data;

-- 2. Total Revenue
SELECT SUM(Total_Amount) AS total_revenue
FROM sales_data;

-- 3. Unique Customers
SELECT COUNT(DISTINCT Customer_ID) AS unique_customers
FROM sales_data;

-- 4. Top 5 Cities by Sales
SELECT City, SUM(Total_Amount) AS total_sales
FROM sales_data
GROUP BY City
ORDER BY total_sales DESC
LIMIT 5;

-- 5. Top 5 Products by Revenue
SELECT Product_Name, SUM(Total_Amount) AS revenue
FROM sales_data
GROUP BY Product_Name
ORDER BY revenue DESC
LIMIT 5;

-- 6. Category-wise Sales
SELECT Category, SUM(Total_Amount) AS total_sales
FROM sales_data
GROUP BY Category
ORDER BY total_sales DESC;

-- 7. Monthly Sales Trend
SELECT 
    MONTH(Order_Date) AS month,
    SUM(Total_Amount) AS monthly_sales
FROM sales_data
GROUP BY month
ORDER BY month;

-- 8. Payment Mode Analysis
SELECT Payment_Mode, COUNT(*) AS total_orders
FROM sales_data
GROUP BY Payment_Mode;

-- 9. Top 5 Customers by Spending
SELECT Customer_Name, SUM(Total_Amount) AS total_spent
FROM sales_data
GROUP BY Customer_Name
ORDER BY total_spent DESC
LIMIT 5;

-- 10. Average Delivery Time
SELECT AVG(Delivery_Days) AS avg_delivery_days
FROM sales_data;

-- 11. Discount Impact Analysis
SELECT 
    SUM(Discount) AS total_discount,
    SUM(Total_Amount) AS total_revenue
FROM sales_data;

-- 12. Duplicate Order Check
SELECT Order_ID, COUNT(*) AS count
FROM sales_data
GROUP BY Order_ID
HAVING COUNT(*) > 1;
