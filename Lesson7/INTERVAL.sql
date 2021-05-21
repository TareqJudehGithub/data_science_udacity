-- INTERVAL function
SET intervalstyle = 'postgres';

-- The interval values are very useful when doing date or time arithmetic. 
SELECT
		now() AS current_date,
		now() - INTERVAL '1 year 3 hours 20 minutes'
			AS "3 hours 20 minutes ago of last year";
			
SELECT
		now() AS current_date,
		now() - INTERVAL '0 year -1 hours 0 minutes'
			AS "3 hours 20 minutes ago of last year";


/*
Abbreviation	Description
Y	Years
M	Months (in the date part)
W	Weeks
D	Days
H	Hours
M	Minutes (in the time part)
S	Seconds
*/

SET intervalstyle = 'postgres';
SELECT 	NOW(),
		NOW() - INTERVAL 'P2Y10M1DT1H10M30S' AS "abbreviation";


SET intervalstyle = 'postgres';
SELECT 	now() AS current_date,
		now() - INTERVAL 'P1Y1M1DT1H10M30S' AS previous_date;
		
-- PostgreSQL interval related operators and functions
--You can apply the arithmetic operator ( +, -, *, etc.,) to the interval values, for examples:

-- Addition
SELECT	INTERVAL '2h 50m' + INTERVAL '10m';

-- Substraction
SELECT INTERVAL '6d' - INTERVAL '1d';

-- times
SELECT 3 * INTERVAL '3d';



						  