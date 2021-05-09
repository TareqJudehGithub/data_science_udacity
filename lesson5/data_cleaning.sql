-- Lesson 5 - Data Cleaning 

/* 
Cleaning Data main functions:
     1. LEFT
     2. RIGHT
     3. LENGTH
*/

LEFT
/* 
LEFT pulls a specified number of characters for each row in a specified column 
starting at the beginning (or from the left). As you saw here, you can pull the 
first three digits of a phone number using: 
*/
LEFT (phone_number, 3);


RIGHT

/* 
RIGHT pulls a specified number of characters for each row in a specified column 
starting at the end (or from the right). As you saw here, you can pull the last 
eight digits of a phone number using
*/
RIGHT (phone_number,8);

LENGTH

/*  
provides the number of characters for each row of a specified column. Here, you 
saw that we could use this to get the length of each phone number as 
*/
LENGTH (phone_number);



POSITION
/*  
POSITION takes a character and a column, and provides the index where that 
character is for each row. The index of the first position is 1 in SQL.
*/
SELECT    website,
          POSITION ('.', IN website)
FROM accounts;

STRPOS
/*
provides the same result as POSITION, but the syntax for achieving those results 
is a bit different as shown here:
*/
SELECT    website,
          STRPOS(website, '.')
FROM accounts;

-- Note, both POSITION and STRPOS are case sensitive, so looking for A is 
-- different than looking for a.



LOWER
-- Converts all strings into lowercase.
SELECT	name, 
		LOWER (name) AS uppercase
FROM accounts
ORDER BY name
LIMIT 10;

UPPER
-- Converts all strings into uppercase.
SELECT	name, 
		UPPER (name) AS uppercase
FROM accounts
ORDER BY name
LIMIT 10;



CONCAT 
-- OR piping ||
/* 
Each of these will allow you to combine columns together across rows. I
CONCAT combines string columns into 1 column.
Alternatively, we can use '||' two pipes characters to perform concatenation.
*/

TO_DATE
DATE_PART('month', TO_DATE(month, 'month')) 
-- Here we changed a month name into the number associated with that particular 
-- month.

-- DATE functions:
CAST

/* 
CAST allows us to change columns from one data type to another.
change a string to a date:
*/
CAST (date_column AS DATE)
/*

Alternative to CAST is the double : (::) at the end of the query, just like
ROUND (column::NUMERIC, 2)
CAST turns a string into numbers or dates.
*/

TRIM

/* 
Used to remove characters from the beginning and end of a string. This can 
remove unwanted spaces at the beginning or end of a row that often happen with 
data being moved from Excel or other storage systems.
*/
----------------
-- REGEX  
~ '[a-zA-Z]'  -- => returns all rows with letters
~ '[0-9]' -- => returns all rows with numbers
^  -- for the starting letter only.


