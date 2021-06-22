-- Using the following SQL statement:
SELECT name, primary_poc
FROM accounts;

-- Combine data in name with only the first name in primay_poc creating a new full_name column.
WITH CTE1 AS
(
	SELECT	LEFT (name, POSITION (' ' IN name) -1) AS first_name,
			RIGHT (primary_poc, LENGTH (primary_poc) - STRPOS (primary_poc, ' ')) AS last_name,
			primary_poc 
	FROM accounts
)
SELECT
	CONCAT (first_name,' ',last_name)
FROM CTE1;

-- using the first and last name in the previous query, creating a new email_address column using
-- the following format:  first_name.last_name@company.com
WITH CTE1 AS
(
	SELECT	name,
			primary_poc,
			LEFT (name, POSITION (' ' IN name) -1) AS first_name,
			RIGHT (primary_poc, LENGTH (primary_poc) - STRPOS (primary_poc, ' ')) AS last_name		
	FROM accounts
)
SELECT 	*,
		LOWER (first_name)||'.'||LOWER(last_name)||'@'||LOWER(REPLACE(name, ' ', ''))||'.com'
FROM CTE1;

