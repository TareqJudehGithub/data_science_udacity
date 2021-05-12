-- Aggregates in Window Functions:

SELECT	id,
		account_id,
		DATE_TRUNC ('month', occurred_at) AS month,
		DENSE_RANK () OVER (PARTITION BY account_id ORDER BY DATE_TRUNC ('month', occurred_at)) AS dense_rank,
		SUM (standard_qty) OVER (PARTITION BY account_id ORDER BY DATE_TRUNC ('month', occurred_at)) AS sum_stand_qty,
		COUNT (standard_qty) OVER (PARTITION BY account_id ORDER BY DATE_TRUNC ('month', occurred_at)) AS count_stand_qty,
		AVG (standard_qty) OVER (PARTITION BY account_id ORDER BY DATE_TRUNC ('month', occurred_at)) AS avg_stand_qty,
		MIN (standard_qty) OVER (PARTITION BY account_id ORDER BY DATE_TRUNC ('month', occurred_at)) AS min_standard_qty,
		MAX (standard_qty) OVER (PARTITION BY account_id ORDER BY DATE_TRUNC ('month', occurred_at)) AS max_stand_qty
FROM orders;