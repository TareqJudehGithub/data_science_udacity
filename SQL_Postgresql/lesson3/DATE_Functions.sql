-- Quiz: DATE Functions

-- Q1.	Find the sales in terms of total dollars for all orders in each year, 
--		ordered from greatest to least.
SELECT 
		DATE_PART('year', occurred_at) AS year,
		SUM (total_amt_usd) AS ANUAL_sales
FROM orders
GROUP BY 1
ORDER BY ANUAL_sales DESC;


--Q2.	Which month did Parch & Posey have the greatest sales in terms of total dollars?
SELECT 
	DATE_PART('month', occurred_at) AS month,
SUM (total_amt_usd) AS sales_amount
FROM orders
WHERE occurred_at BETWEEN '2014-01-01' AND '2017-01-01'
GROUP BY 1
ORDER BY sales_amount DESC;


--Q3.	Which year did Parch & Posey have the greatest sales in terms of total number of orders?
SELECT 
		DATE_PART('year', occurred_at) AS year,
		SUM (total) AS total_orders
FROM orders
GROUP BY 1
ORDER BY total_orders DESC;


--Q4.	Which month did Parch & Posey have the greatest sales in terms of total number of orders? 
SELECT
		DATE_PART('month', occurred_at) AS month,
		COUNT (total) AS total_orders
FROM orders
WHERE occurred_at BETWEEN '2014-01-01' AND '2017-01-01'
GROUP BY 1
ORDER BY total_orders DESC;


--Q5.	In which month of which year did Walmart spend the most on gloss paper in terms of dollars?
SELECT 
		acc.id,
		acc.name,
		DATE_TRUNC('month', ord.occurred_at) AS date,
		SUM (ord.gloss_amt_usd) AS gloss_sales
FROM orders AS ord
JOIN accounts AS acc
ON ord.account_id = acc.id
WHERE acc.name = 'Walmart'
GROUP BY 1, 2, 3
ORDER BY gloss_sales DESC
LIMIT 1;



















