-- NTILE
SELECT	id,
		account_id,
		standard_qty,
		NTILE(4) OVER stand_qty AS quartile,
		NTILE(5) OVER stand_qty AS quintile,
		NTILE(100) OVER stand_qty AS percentile
		
FROM orders
WINDOW stand_qty AS (ORDER BY standard_qty)
ORDER BY standard_qty DESC;

-- Quiz:

--Q.1
SELECT	account_id AS account_id,
		occurred_at AS date,
		standard_qty AS standard_sum,
		NTILE(4) OVER (PARTITION BY account_id ORDER BY standard_qty) AS standard_quartile
FROM orders

ORDER BY 1;

-- Q.2
SELECT	account_id,
		occurred_at AS date,
		gloss_qty,
		NTILE(2) OVER (PARTITION BY account_id ORDER BY gloss_qty) AS gloss_half
FROM orders
ORDER BY 1 DESC;


--Q.3
SELECT	account_id,
		occurred_at AS date,
		total_amt_usd,
		NTILE(100) OVER(PARTITION BY account_id ORDER BY total_amt_usd) AS total_percentile
FROM orders
ORDER BY 1;

