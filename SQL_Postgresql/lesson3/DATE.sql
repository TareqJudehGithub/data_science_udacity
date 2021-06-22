-- DATE

-- Filter by date
SELECT 
		occurred_at,
		SUM (standard_qty) AS standard_qty_sum
FROM orders
GROUP BY 1
ORDER BY occurred_at;


-- DATE_TRUNC
SELECT
		DATE_TRUNC('day', occurred_at) AS day,
		SUM (standard_qty) AS standard_qty_sum 
FROM orders
GROUP BY 1
ORDER BY 1;

-- Filter time by year 
SELECT
		occurred_at,
		DATE_TRUNC('year', occurred_at) AS year
FROM web_events
GROUP BY 1
ORDER BY year;

-- Filter time by day
SELECT
		occurred_at,
		DATE_TRUNC('day', occurred_at) AS day
FROM web_events
GROUP BY 1
ORDER BY day;

--DATE_PART

-- Which day of the week, is the day with most sales?
SELECT 
		DATE_PART('dow', occurred_at) AS day_of_week,
		SUM (total) AS total_qty
FROM orders
GROUP BY 1
ORDER BY 2 DESC;


SELECT 
		DATE_PART('dow', occurred_at) AS day,
		SUM (total) AS total_sales
FROM orders
GROUP BY 1
ORDER BY day DESC;

/*
'dow' stands for 'Day of the week', and return a value from 0 to 6, where 0 is Sunday, and
6 is Saturday
*/

-- Which month has most sales?
SELECT
		DATE_PART('month', occurred_at) AS month,
		SUM (standard_qty)
FROM orders
GROUP BY 1
ORDER BY 2 DESC;

-- total quantity for each account every month:
SELECT	id,
		account_id,
		DATE_TRUNC('month', occurred_at) AS month,
		SUM (total) AS total
FROM orders
GROUP BY 1, 2, 3
ORDER BY month;


-- total sales for day:
SELECT	DATE_TRUNC('day', occurred_at) AS day,
		SUM (total_amt_usd) AS total_sales
FROM orders
GROUP BY 1
ORDER BY 1;




 
 
