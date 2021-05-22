-- UNION

-- Using Subquery:
SELECT	channel,
		COUNT (*) AS total_events
FROM 
(
	SELECT *
	FROM web_events

	UNION 

	SELECT *
	FROM web_events
) AS inner_q
GROUP BY 1
ORDER BY 2 DESC;


-- WITH
WITH CTE1 AS
(
	SELECT	*
	FROM web_events
	UNION 
	SELECT 	*
	FROM web_events
)
SELECT	channel,
		COUNT (*) AS sessoins
FROM CTE1
GROUP BY 1
ORDER BY 2 DESC;

-- Counting events using regular COUNT aggregator:
SELECT	channel,
		COUNT (*) AS sessions
FROM web_events
GROUP BY 1
ORDER BY 2 DESC;




-- Quiz: UNION ALL on accounts table

-- Quiz 1 & 2:
SELECT *
FROM accounts AS accounts_1
WHERE name = 'Walmart '
UNION ALL
SELECT *
FROM accounts AS accounts_2
WHERE name = 'Disney';


WITH CTE1 AS 
(
	SELECT *
	FROM accounts AS accounts_1

	UNION ALL
	SELECT *
	FROM accounts AS accounts_2
)
SELECT	name AS account_name,
		COUNT (*) AS total_accounts
FROM CTE1
GROUP BY 1
ORDER BY 1;


-- Double accounts:
WITH double_accounts AS 
(
	SELECT *
	FROM accounts AS accounts_1

	UNION ALL
	SELECT *
	FROM accounts AS accounts_2
)
SELECT	name AS account_name,
		COUNT (*) AS total_accounts
FROM double_accounts
GROUP BY 1
ORDER BY 1;



