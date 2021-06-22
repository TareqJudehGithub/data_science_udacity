-- MIN and MAX

SELECT 
MIN (standard_qty) AS standard_min,
MAX (standard_qty) AS standard_max
FROM orders;

SELECT 
MIN (name) AS min_name,
MAX (name) AS max_name
FROM accounts;
