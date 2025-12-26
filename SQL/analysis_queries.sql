select * from superstore;

SELECT COUNT(*) AS total_rows FROM superstore;

SELECT * FROM superstore LIMIT 5;

#Total Sales & Profit
SELECT 
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore;

#Sales & Profit by Category
SELECT 
    Category,
    ROUND(SUM(Sales), 2) AS Sales,
    ROUND(SUM(Profit), 2) AS Profit
FROM superstore
GROUP BY Category
ORDER BY Profit DESC;

#Profit by Sub-Category (Find Loss Makers)
SELECT 
    SubCategory,
    ROUND(SUM(Profit), 2) AS Profit
FROM superstore
GROUP BY SubCategory
ORDER BY Profit ASC;

#Region-wise Performance
SELECT 
    Region,
    ROUND(SUM(Sales), 2) AS Sales,
    ROUND(SUM(Profit), 2) AS Profit
FROM superstore
GROUP BY Region
ORDER BY Profit DESC;

#Discount Impact on Profit
SELECT 
    Discount,
    COUNT(*) AS Orders,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY Discount
ORDER BY Discount;

#Top 5 Customers by Profit
SELECT 
    CustomerName,
    ROUND(SUM(Profit), 2) AS Profit
FROM superstore
GROUP BY CustomerName
ORDER BY Profit DESC
LIMIT 5;

#Year-wise Sales Trend
SELECT 
    Order_Year,
    ROUND(SUM(Sales), 2) AS Sales
FROM superstore
GROUP BY Order_Year
ORDER BY Order_Year;

#Monthly Sales Trend
SELECT 
    Order_Month,
    ROUND(SUM(Sales), 2) AS Sales
FROM superstore
GROUP BY Order_Month
ORDER BY Order_Month;

#Products with High Sales but Low Profit
SELECT 
    ProductName,
    ROUND(SUM(Sales), 2) AS Sales,
    ROUND(SUM(Profit), 2) AS Profit
FROM superstore
GROUP BY ProductName
HAVING Sales > 10000 AND Profit < 0
ORDER BY Profit;

#Average Delivery Time by Ship Mode
SELECT 
    ShipMode,
    ROUND(AVG(Delivery_Days), 1) AS Avg_Delivery_Days
FROM superstore
GROUP BY ShipMode;















