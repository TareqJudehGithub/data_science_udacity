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
LENGTH (phone_number)



-- REGEX  
~ '[a-zA-Z]'  -- => returns all rows with letters
~ '[0-9]' -- => returns all rows with numbers
^  -- for the starting letter only.