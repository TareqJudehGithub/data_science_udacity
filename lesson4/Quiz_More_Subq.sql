SELECT *
FROM orders
WHERE DATE_TRUNC('month', orders.occurred_at) =
(
	SELECT	DATE_TRUNC('month', MIN (occurred_at)) AS min_month
	FROM orders
) 
ORDER BY occurred_at;


-- Quiz: Working Through the Previous Video
SELECT	
 		ROUND(AVG(standard_qty)::NUMERIC, 2) AS avg_standard_qty,
 		ROUND(AVG(gloss_qty)::NUMERIC, 2) AS avg_gloss_qty,
 		ROUND(AVG(poster_qty)::NUMERIC, 2) AS avg_poster_qty,
		SUM (total_amt_usd) AS total_amt_spent
FROM orders
WHERE DATE_TRUNC('month', occurred_at) =
(
	SELECT DATE_TRUNC('month', MIN (occurred_at))
	FROM orders
);








