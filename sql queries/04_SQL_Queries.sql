CREATE TABLE ecommerce (
    InvoiceNo VARCHAR(20),
    StockCode VARCHAR(20),
    Description TEXT,
    Quantity INT,
    InvoiceDate TIMESTAMP,
    UnitPrice FLOAT,
    CustomerID FLOAT,
    Country VARCHAR(50),
    Revenue FLOAT
);

SELECT
    CustomerID,
    COUNT(DISTINCT InvoiceNo) AS total_orders,
    SUM(Revenue) AS total_revenue,
    SUM(Quantity) AS total_quantity,
    MIN(InvoiceDate) AS first_purchase_date,
    MAX(InvoiceDate) AS last_purchase_date
FROM ecommerce
GROUP BY CustomerID;

SELECT COUNT(*) FROM ecommerce;

SELECT
    CustomerID,
    COUNT(DISTINCT InvoiceNo) AS total_orders,
    SUM(Revenue) AS total_revenue,
    SUM(Quantity) AS total_quantity,
    MIN(InvoiceDate) AS first_purchase_date,
    MAX(InvoiceDate) AS last_purchase_date
FROM ecommerce
GROUP BY CustomerID
ORDER BY total_revenue DESC;

CREATE TABLE customer_summary AS
SELECT
    CustomerID,
    COUNT(DISTINCT InvoiceNo) AS total_orders,
    SUM(Revenue) AS total_revenue,
    SUM(Quantity) AS total_quantity,
    MIN(InvoiceDate) AS first_purchase_date,
    MAX(InvoiceDate) AS last_purchase_date
FROM ecommerce
GROUP BY CustomerID;

SELECT COUNT(*) FROM customer_summary;

WITH customer_data AS (
    SELECT
        CustomerID,
        COUNT(DISTINCT InvoiceNo) AS total_orders,
        SUM(Revenue) AS total_revenue
    FROM ecommerce
    GROUP BY CustomerID
)
SELECT *
FROM customer_data
WHERE total_revenue>10000;

SELECT
    CustomerID,
    SUM(Revenue) AS total_revenue,
    RANK() OVER (ORDER BY SUM(Revenue) DESC) AS revenue_rank
FROM ecommerce
GROUP BY CustomerID;

CREATE TABLE customer_country AS
SELECT DISTINCT
    CustomerID,
    Country
FROM ecommerce;

SELECT * FROM customer_country LIMIT 10;

SELECT
    cs.CustomerID,
    cs.total_orders,
    cs.total_revenue,
    cc.Country
FROM customer_summary cs
LEFT JOIN customer_country cc
ON cs.CustomerID = cc.CustomerID;

SELECT
    cc.Country,
    SUM(cs.total_revenue) AS country_revenue
FROM customer_summary cs
LEFT JOIN customer_country cc
ON cs.CustomerID = cc.CustomerID
GROUP BY cc.Country
ORDER BY country_revenue DESC;

