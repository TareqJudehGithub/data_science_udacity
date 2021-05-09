-- CAST
SELECT	standard_qty,
		CAST (standard_qty AS CHAR)
FROM orders;


SELECT	'01-OCT-2015',
		CAST ('01-OCT-2015' AS DATE);
		
SELECT	CAST ('10.5' AS DOUBLE); -- This will throw an error

SELECT	CAST ('10.5' AS DOUBLE PRECISION);

SELECT	
	CAST ('true' AS BOOLEAN) AS True,
	CAST ('false' AS BOOLEAN) AS False;
	

 
-- :: 
SELECT 	standard_qty,
		standard_qty::CHAR
FROM orders;


SELECT '100'::INTEGER;

SELECT '01-OCT-2015'::DATE;


SELECT	'2019-06-15 14:30:20',
		'2019-06-15 14:30:20'::timestamp;

SELECT '15 minute'::interval,
 '2 hour'::interval,
 '1 day'::interval,
 '2 week'::interval,
 '3 month'::interval;


