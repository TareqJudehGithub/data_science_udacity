-- POSITION
SELECT	website,
		-- POSITION returns the character index in a string.
		POSITION ('.' IN website) AS dot_position
FROM accounts;

-- STRPOS
SELECT	website,
		STRPOS (website, '.') AS substr_dot_position
FROM accounts;

-- UPPER
SELECT	name, 
		UPPER (name) AS uppercase
FROM accounts
ORDER BY name
LIMIT 10;

-- LOWER
SELECT	name, 
		LOWER (name) AS uppercase
FROM accounts
ORDER BY name
LIMIT 10;
