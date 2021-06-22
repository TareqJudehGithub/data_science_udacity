-- Quiz: POSITION, STRPOST, AND SUBSTR

-- Q1. Use the accounts table to create first and last name columns that hold the first and last names for the primary_poc.

SELECT	LEFT (primary_poc, POSITION (' ' IN primary_poc) -1) AS first_name,
		-- Total strings length - strings total after SPACE:
		RIGHT (primary_poc, LENGTH (primary_poc) - POSITION (' ' IN primary_poc)) AS last_name,
		primary_poc AS full_name
FROM accounts;


-- Q2

SELECT	LEFT (name, STRPOS (name, ' ') -1) AS first_name,
 		RIGHT (name, LENGTH (name) - STRPOS (name, ' ') ) AS last_name,
		name AS full_name
FROM sales_reps
ORDER BY first_name;
