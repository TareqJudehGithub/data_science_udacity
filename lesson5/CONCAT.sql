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
	
