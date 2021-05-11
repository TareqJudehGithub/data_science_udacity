-- Window Functions 1




-- This SQL query statement using OVER calculates the running total_qty aggregation, without GROUP BY:
SELECT	occurred_at,
		standard_qty,
		SUM (standard_qty) OVER (ORDER BY occurred_at) AS running_total
FROM orders;

-- running total_qty at the begining of each month, but for a certain group in Date_TRUNC(), we use
-- PARTITION BY:
SELECT	DATE_TRUNC('month', occurred_at) AS month,
		standard_qty,
		SUM (standard_qty) OVER (PARTITION BY DATE_TRUNC('month', occurred_at) ORDER BY occurred_at) AS running_total
FROM orders;


-- Calculate running total_amt_usd using OVER and PARTITION BY window functions:
SELECT	occurred_at AS date,
		total_amt_usd,
		SUM (total_amt_usd) OVER (ORDER BY occurred_at) AS aggregate_total
FROM orders;

-- Same query above but for every year maybe?
SELECT	DATE_TRUNC('year', occurred_at) AS year,
		total_amt_usd,
		SUM (total_amt_usd) OVER (PARTITION BY DATE_TRUNC('year', occurred_at) ORDER BY occurred_at) AS running_total
FROM orders;