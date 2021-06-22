-- Alias
SELECT	id,
		account_id,
		DATE_TRUNC ('month', occurred_at) AS month,
		DENSE_RANK () OVER (PARTITION BY account_id ORDER BY DATE_TRUNC ('month', occurred_at)) AS dense_rank,
		SUM (standard_qty) OVER main_window AS sum_stand_qty,
		COUNT (standard_qty) OVER main_window AS count_stand_qty,
		AVG (standard_qty) OVER main_window AS avg_stand_qty,
		MIN (standard_qty) OVER main_window AS min_standard_qty,
		MAX (standard_qty) OVER main_window AS max_stand_qty
FROM orders
WINDOW main_window AS (PARTITION BY account_id ORDER BY DATE_TRUNC ('month', occurred_at));

-- Quiz: Aliases
SELECT id,
       account_id,
       DATE_TRUNC('year',occurred_at) AS year,
       DENSE_RANK() OVER account_year_window AS dense_rank,
       total_amt_usd,
       SUM(total_amt_usd) OVER  account_year_window AS sum_total_amt_usd,
       COUNT(total_amt_usd) OVER account_year_window AS count_total_amt_usd,
       AVG(total_amt_usd) OVER account_year_window AS avg_total_amt_usd,
       MIN(total_amt_usd) OVER account_year_window AS min_total_amt_usd,
       MAX(total_amt_usd) OVER account_year_window AS max_total_amt_usd
FROM orders
WINDOW account_year_window AS (PARTITION BY account_id ORDER BY DATE_TRUNC('year',occurred_at));