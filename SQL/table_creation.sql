-- Create the database
CREATE DATABASE IF NOT EXISTS superstore_db;
USE superstore_db;

-- Create the main superstore table
CREATE TABLE IF NOT EXISTS superstore (
    RowID INT,
    OrderID VARCHAR(50),
    OrderDate DATE,
    ShipDate DATE,
    ShipMode VARCHAR(50),
    CustomerID VARCHAR(50),
    CustomerName VARCHAR(100),
    Segment VARCHAR(50),
    Country VARCHAR(50),
    City VARCHAR(50),
    State VARCHAR(50),
    PostalCode VARCHAR(20),
    Region VARCHAR(50),
    ProductID VARCHAR(50),
    Category VARCHAR(50),
    SubCategory VARCHAR(50),
    ProductName VARCHAR(100),
    Sales FLOAT,
    Quantity INT,
    Discount FLOAT,
    Profit FLOAT,
    Profit_Margin FLOAT,
    Delivery_Days INT,
    Order_Year INT,
    Order_Month INT
);

-- check table structure
DESCRIBE superstore;
