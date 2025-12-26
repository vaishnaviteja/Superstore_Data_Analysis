-- 1️. Category Performance View
-- Show total sales and profit by category
CREATE OR REPLACE VIEW category_performance AS
SELECT 
    Category,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY Category;

-- 2️. Sub-Category Performance View
-- Identify sub-categories and their profit/loss
CREATE OR REPLACE VIEW subcategory_performance AS
SELECT 
    SubCategory,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY SubCategory;

-- 3️. Region Performance View
-- Analyze regional sales & profit
CREATE OR REPLACE VIEW region_performance AS
SELECT 
    Region,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY Region;

-- 4️. Discount Impact View
-- See how discounts affect profit
CREATE OR REPLACE VIEW discount_impact AS
SELECT 
    Discount,
    COUNT(*) AS Total_Orders,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY Discount;

-- 5️. Customer Profitability View
-- Find high-value customers
CREATE OR REPLACE VIEW customer_profitability AS
SELECT 
    CustomerName,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY CustomerName;

-- 6️. Delivery Analysis View
-- Average delivery time by shipping mode
CREATE OR REPLACE VIEW delivery_analysis AS
SELECT 
    ShipMode,
    ROUND(AVG(Delivery_Days), 1) AS Avg_Delivery_Days
FROM superstore
GROUP BY ShipMode;


-- Example Queries to Test Views

-- Category Performance
SELECT * FROM category_performance;

-- Subcategory Loss Makers
SELECT * FROM subcategory_performance WHERE Total_Profit < 0;

-- Region Performance
SELECT * FROM region_performance ORDER BY Total_Profit DESC;

-- Discount Impact
SELECT * FROM discount_impact ORDER BY Discount;

-- Top 10 Customers by Profit
SELECT * FROM customer_profitability ORDER BY Total_Profit DESC LIMIT 10;

-- Delivery Analysis
SELECT * FROM delivery_analysis;
