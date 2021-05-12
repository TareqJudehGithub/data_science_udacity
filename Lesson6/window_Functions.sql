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


-- OVER: total quantity running (aggregating) monthly report:
SELECT	
		DATE_TRUNC ('month', occurred_at) AS month,
		total AS total,
		SUM (total) OVER (PARTITION BY DATE_TRUNC ('month', occurred_at) ORDER BY occurred_at) AS running_total
FROM orders;


-- OVER: total_amt_usd (total sales) aggregating daily report:
SELECT	DATE_TRUNC('day', occurred_at) AS day,
		total_amt_usd,
		SUM (total_amt_usd) OVER (PARTITION BY DATE_TRUNC('day', occurred_at) ORDER BY occurred_at) AS daily_sales
FROM orders;

/*  

Aggregates in Window Functions with and without ORDER BY
The ORDER BY clause is one of two clauses integral to window functions. 
The ORDER and PARTITION define what is referred to as the “window”—the ordered 
subset of data over which calculations are made. Removing ORDER BY just leaves 
an unordered partition; in our query's case, each column's value is simply an 
aggregation (e.g., sum, count, average, minimum, or maximum) of all the 
standard_qty values in its respective account_id.

As Stack Overflow user mathguy explains:

The easiest way to think about this - leaving the ORDER BY out is equivalent to 
"ordering" in a way that all rows in the partition are "equal" to each other. 
Indeed, you can get the same effect by explicitly adding the ORDER BY clause 
like this: ORDER BY 0 (or "order by" any constant expression), or even, more 
emphatically, ORDER BY NULL.
*/
