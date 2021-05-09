-- Quiz: CAST

	-- Correct wrong date format into the right SQL date format:	
WITH CTE1 AS
(
SELECT	date, 
		SUBSTR (date, 1, 2) AS day,
  		SUBSTR (date, 4, 2) AS month,
  		SUBSTR(date, 7, 4) AS year
FROM sf_crime_data
LIMIT 10  
)
SELECT CONCAT (year, '-', month, '-', day)
FROM CTE1;

--5. CONVERT the result in Q4 into the Date format

WITH CTE1 AS
(
  SELECT	date, 
          SUBSTR (date, 1, 2) AS day_date,
          SUBSTR (date, 4, 2) AS month_date,
          SUBSTR(date, 7, 4) AS year_date
  FROM sf_crime_data
  LIMIT 10  
)
SELECT 	date AS old_date,
		(year_date || '-' || day_date || '-' || month_date)::DATE AS new_date
FROM CTE1;
