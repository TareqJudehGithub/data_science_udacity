/*
Window functions
     Window functions allow us to compare one row to another, without using any
     joins.
*/

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