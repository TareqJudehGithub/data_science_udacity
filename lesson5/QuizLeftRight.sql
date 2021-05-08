-- Data Cleaning. Quiz: LEFT & RIGHT

--1.

-- Solution A
SELECT		CASE 
				WHEN RIGHT (website, 3) = 'com' THEN 'com'
				ELSE RIGHT (website, 3) END AS extension,
			COUNT (*) AS total_extensions
FROM accounts
GROUP BY 1
ORDER BY 2 DESC;


-- Solution B
SELECT RIGHT(website, 3) AS domain, COUNT(*) num_companies
FROM accounts
GROUP BY 1
ORDER BY 2 DESC;


--2.
SELECT	LEFT (name, 1) AS first_letter,
		COUNT (*) AS companies_count
FROM accounts
GROUP BY 1
ORDER BY 1 ASC;

3.

SELECT	CASE 
			WHEN LEFT (name, 1) ~ '[0-9]' THEN 'numbers_group'
			ELSE 'letters_group' END AS group,
			COUNT (*) companies_count
FROM accounts
GROUP BY 1;

--4.
SELECT	CASE
			WHEN LEFT (name, 1)  ~ '^[Aa]' OR LEFT (name, 1) ~ '^[Ee]' OR LEFT (name, 1) ~ '^[Ii]' OR LEFT (name, 1) ~ '^[Oo]' OR LEFT (name, 1) ~ '^[Uu]' THEN 'vowels'
			ELSE 'non_vowels' END AS company_letter,
			COUNT(*) AS is_vowel
FROM accounts
GROUP BY 1
ORDER BY 1;












-----------------------------------------------------------
-- REGEX practice
SELECT name
FROM accounts
WHERE LEFT (name, 1) ~ '[a-zA-Z]';

-- Query starts with a Number
SELECT name
FROM accounts
WHERE LEFT (name, 1) ~ '[0-9]';


-- Query starts with the letter A
SELECT name
FROM accounts
WHERE name ~ '^[A]';

-- Query for names that start with the letter A and and start with the letter B
SELECT name
FROM accounts
WHERE name ~ '^[A-Ba-b]';

SELECT name
FROM accounts
WHERE name ~ '^[0-9]' OR name ~ '[A-Za-z]'
ORDER BY name ;



SELECT 	name, 
		website
FROM accounts
WHERE RIGHT (website, 3)  ~ 'com'
ORDER BY name;





