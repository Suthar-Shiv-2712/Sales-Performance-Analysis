CREATE DATABASE pro1;
USE pro1;

SELECT * FROM sales;

#  list of total sales and total products.

SELECT Products, SUM(Sales) AS total_sales
FROM sales
GROUP BY Products
ORDER BY total_sales;

# List of total sales about top 5 products.

SELECT Products,SUM(Sales) AS total_sales
FROM sales
GROUP BY Products
ORDER BY total_sales DESC
LIMIT 5;

# list of Profit by Region.

SELECT Region,SUM(Profit) AS total_profit
FROM sales
GROUP BY Region
ORDER BY total_profit DESC;


# List of Top Profitable Regions.
SELECT Region,SUM(Profit) AS total_profit
FROM sales
GROUP BY Region
ORDER BY total_profit DESC
LIMIT 5;


# List of Top 5  lossmaking products.
SELECT 
    Products,
SUM(profit) AS total_profit
FROM sales
GROUP BY Products
HAVING SUM(profit) > 0
ORDER BY total_profit ASC
LIMIT 5;






