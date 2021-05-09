-- CONCAT
-- CONCAT (first_column, ' ', second_column, ' ' third_column);

SELECT	name,
		primary_poc,
		CONCAT (name,' ', primary_poc) AS full_name,
		name || ' ' || primary_poc AS full_names
FROM accounts;


SELECT	name,
		primary_poc,
		CONCAT (name,' ', RIGHT (primary_poc, LENGTH (primary_poc) - POSITION (' ' IN primary_poc)) ) AS full_name
FROM accounts;

-- Quiz CONCAT

-- Q1. Create an email address from accounts table, on the following format:
--	first_name(primary_poc).last_name(primary_poc)@company_name.com

SELECT	LEFT (primary_poc, POSITION (' ' IN primary_poc)) AS first_name,
		RIGHT (primary_poc, LENGTH (primary_poc) - POSITION (' ' IN primary_poc) ) AS last_name,
		primary_poc,
		name,
		CONCAT ( LOWER ( LEFT (primary_poc, POSITION (' ' IN primary_poc) -1)),
		'.', LOWER (RIGHT (primary_poc, LENGTH (primary_poc) - POSITION (' ' IN primary_poc) ))
		,'@',
		LOWER (name),'.com') AS email_address
FROM accounts
ORDER BY 1;



--Q2.
SELECT	LEFT (primary_poc, POSITION (' ' IN primary_poc)) AS first_name,
		RIGHT (primary_poc, LENGTH (primary_poc) - POSITION (' ' IN primary_poc) ) AS last_name,
		primary_poc,
		name,
		CONCAT ( LOWER ( LEFT (primary_poc, POSITION (' ' IN primary_poc) -1)),
		'.', LOWER (RIGHT (primary_poc, LENGTH (primary_poc) - POSITION (' ' IN primary_poc) ))
		,'@',
		LOWER (REPLACE (name, ' ', '')),'.com') AS email_address
FROM accounts
ORDER BY 1;
	


-------------------------------------
WITH CTE1 AS 
(
	SELECT	LEFT (primary_poc, POSITION (' ' IN primary_poc) -1) AS first_name,
			RIGHT (primary_poc, LENGTH (primary_poc) - POSITION (' ' IN primary_poc)) AS last_name,
			REPLACE (name, ' ', '') AS company
	FROM accounts
)
SELECT	first_name,
		last_name,
		CONCAT 
				(LOWER(first_name),
				'.', LOWER(last_name),
				'@', LOWER(company),
				'.com') AS email_address
FROM CTE1


--Q3.
SELECT	primary_poc,
		name
FROM accounts;


WITH CTE1 AS
(
	-- first name
	SELECT	LEFT(primary_poc, POSITION (' ' IN primary_poc) -1) AS first_name,
	-- last name
			RIGHT (primary_poc, LENGTH (primary_poc) - POSITION (' ' IN primary_poc)) AS last_name,
	-- first name total strings count
			LENGTH (LEFT(primary_poc, POSITION (' ' IN primary_poc) -1)) AS first_name_strings,
	-- last name total strings count
			LENGTH (RIGHT (primary_poc, LENGTH (primary_poc) - POSITION (' ' IN primary_poc))) AS last_name_strings,
	-- compnay name
			name AS company
	FROM accounts
)
SELECT	first_name,
		last_name,
		--email
		CONCAT 
		(
				LOWER(first_name),
				'.', LOWER(last_name),
				'@', LOWER(company),
				'.com'
		) AS email_address,	
		-- password
		CONCAT 
		(
				LOWER (LEFT (first_name, 1)),
				LOWER (RIGHT (first_name, 1)),
				LOWER (LEFT (last_name, 1)),
				LOWER (RIGHT (last_name, 1)),
				first_name_strings,
				last_name_strings,
				UPPER (REPLACE (company, ' ', ''))		
		) AS password
FROM CTE1;









