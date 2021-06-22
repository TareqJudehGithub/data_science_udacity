-- Comparing a row to a previous row

SELECT	account_id,
		standard_sum,
		-- Returns value from the previous row:
		LAG (standard_sum) OVER stand_sum AS lag,
		-- Return value from the following(next) row:
		LEAD (standard_sum) OVER stand_sum AS lead,
		-- comparing the current row value with the previous one using LAG:
		standard_sum - LAG (standard_sum) OVER stand_sum AS lag_difference,
		-- comparing the current row value with the following one using LEAD:
		LEAD (standard_sum) OVER stand_sum - standard_sum AS lead_difference
FROM 
	(
	SELECT	account_id,
			SUM (standard_qty) AS standard_sum
	FROM orders
	GROUP BY 1
	) AS sub
WINDOW stand_sum AS (ORDER BY standard_sum);



-- Example compare annual totals using LAG and WITH:
WITH CTE1 AS 
	(
	SELECT	
			DATE_TRUNC ('year', occurred_at) AS year,
			SUM (total) as total_sum
			
	FROM orders
	GROUP BY 1
	)
SELECT 	
		year,
		total_sum,
		LAG (total_sum) OVER year_window AS lag_previous_total,
		LEAD (total_sum) OVER year_window AS lag_previous_total,
		DENSE_RANK () OVER year_window AS rank
FROM CTE1
WINDOW year_window AS (ORDER by total_sum);


-- Example compare annual totals using LAG and Sub Queries:
SELECT	total_sub,
		LAG (total_sub) OVER (ORDER BY total_sub) AS total_lag
FROM
(
	SELECT	account_id,
			SUM (total) AS total_sub
	FROM orders
	GROUP BY 1
	ORDER BY 1
) sub;


-- Quiz: Compare total_amt_usd using LEAD:
WITH CTE1 AS
	(
	SELECT	occurred_at AS date,
			SUM (total_amt_usd) AS total_sales 
	FROM orders
	GROUP BY 1
	ORDER BY 1
	)
SELECT	date,	
		total_sales,
		LEAD (total_sales) OVER date_window AS next_sales,
		LEAD (total_sales) OVER date_window -  total_sales AS lead_difference
FROM CTE1
WINDOW date_window AS (ORDER BY date);


