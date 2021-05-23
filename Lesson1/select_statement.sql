/*
Storing Data
     We could store data in a spread sheet (or tables).
     ERD - entity relationship diagram, where each spread sheet is represented
          on a table.
     
     Entity Relationship Diagrams
     An entity relationship diagram (ERD) is a common way to view data in a database.

     Terms to remember:
     SQL  A language that allows us to access data stored in a database.
     ERD  A diagram that shows hows data is structured in a database.
     Database  A collection of tables that share connected data stored in a computer.


     
     SQL - structured query language

     There are some major advantages to using traditional relational databases, 
     which we interact with using SQL. The five most apparent are:
          - SQL is easy to understand.
          - Direct access to data.
          - Audit and replicate data.
          - SQL is a great tool to analyze multiple tables at once.
          - SQL allows you to analyze more complex questions than dashboard tools 
            like Google Analytics.
     
     Why Businesses Like Databases

     Databases store data so we could access them later..or anytime.
     1. Data integrity is ensured - only the data you want entered is entered, and 
     only certain users are able to enter data into the database.

     2. Data can be accessed quickly - SQL allows you to obtain results very 
     quickly from the data stored in a database. Code can be optimized to quickly 
     pull results.

     3. Data is easily shared - multiple individuals can access data stored in 
     a database, and the data is the same for all users allowing for consistent 
     results for anyone with access to your database.

     A few key points about data stored in SQL databases:
     1.   Data in databases is stored in tables that can be thought of just like Excel spreadsheets.
     2.   All the data in the same column must match in terms of data type.
     3.   Consistent column types are one of the main reasons working with databases is fast.

     
     SQL statements:
     */
          SELECT statement
     /*
          SELECT statement order sql to return data from a certain table.
          Examples:
          */
               SELECT * 
               FROM table_name;
          /*
          So, 'SELECT', basically selects which column, where 'FROM' specifies
          which table to query data from.
          */
          LIMIT 
               Limits the number of rows returned.
               SELECT *
               FROM orders
               LIMIT 100
          /*
               The above statement will return the first 100 rows.
               This can be much faster for loading than if we load the entire dataset.
               The LIMIT command is always the very last part of a query.
          */

          ORDER BY
          /* 
               The ORDER BY statement allows us to sort our results using the 
               data in any column.
               The ORDER BY statement always comes in a query after the SELECT 
               and FROM statements, but before the LIMIT statement. If you are 
               using the LIMIT statement, it will always appear last. As you 
               learn additional commands, the order of these statements will 
               matter more.
          
          */
          SELECT *
          FROM orders
          ORDER BY DESC
          LIMIT 100;

          /* 
          Remember */ DESC /* can be added after the column in your ORDER BY statement 
          to sort in descending order, as the default is to sort in ascending order.
          */

          WHERE

          WHERE /* allows us to filter a set of results based of specific criteria. */

          SELECT 
          from orders
          WHERE id = 1;

          /* 

          Common symbols used in WHERE statements include:

          > (greater than)

          < (less than)

          >= (greater than or equal to)

          <= (less than or equal to)

          = (equal to)

          != (not equal to)

          The */WHERE /* statement can also be used with non-numeric data.
          Commonly when we are using WHERE with non-numeric data fields, we use 
          the */ LIKE, NOT, /* or */ IN /*operators. We will see those before the end of this lesson!

          Derived Column
          A new column that is a manipulation of the existing columns in your database.
          */
          SELECT column_a, 
                 column_b, 
                 column_a + column_b AS column_c
                 FROM some_table

                 /* The result here will be a new column (column_c) with the sum of column_a
                 and column_b. This is called a derived column. 
                 Creating a new column that is a combination of existing columns 
                 is known as a derived column (or "calculated" or "computed" column). 
                 Usually you want to give a name, or "alias," to your new column 
                 using the */ AS /* keyword.

          Rounding in SQL: 
          */
          ROUND(some formula::numeric, 2) AS column_name
          -- OR 
          ROUND(some formula, 2) AS column_name
          /* This will round the outcome to only 2 decimals.*/
          ROUND(poster_amt_usd / (standard_amt_usd + gloss_amt_usd + poster_amt_usd)::numeric,2) AS revenue 
          
          ROUND(some formula) AS column_name -- rounds to the nearest integer.
          /*
          Logical Operators       
          */
          LIKE /* is similar to WHERE and to =, but it is used when we might not
          know exactly what we are looking for. */

          IN /* This allows you to perform operations similar to using WHERE and =, 
          but for more than one condition. 
          The IN operator is useful for working with both numeric and text columns.
          This operator allows you to use an =, but for more than one item of 
          that particular column.
          */


          NOT /* This is used with */ IN /*and*/ LIKE /*to select all of the
           rows */ NOT LIKE /*or*/ NOT IN /* a certain condition. */

          AND & BETWEEN /*These allow you to combine operations where all 
          combined conditions must be true. */

          OR /* This allows you to combine operations where at least one of the 
          combined conditions must be true. */

          /* WILD CARD */
          '% some text%'   /* data contain specified text in between*/
          'C%'             /* data that starts with the char C*/ 
          '%C'             /* data that ends with the char C*/ 


          /*The */ AND  /* and  */ BETWEEN /* operator is used within a */ WHERE /* statement to consider more 
          than one logical clause at a time */

          OR
          /* Filter rows where at least one condition must be true */

          /*
          Statement	How to Use It	Other Details
          SELECT	SELECT Col1, Col2, ...	Provide the columns you want
          FROM	FROM Table	Provide the table where the columns exist
          LIMIT	LIMIT 10	Limits based number of rows returned
          ORDER BY	ORDER BY Col	Orders table based on the column. Used with DESC.
          WHERE	WHERE Col > 5	A conditional statement to filter your results
          LIKE	WHERE Col LIKE '%me%'	Only pulls rows where column has 'me' within the text
          IN	WHERE Col IN ('Y', 'N')	A filter for only rows with column of 'Y' or 'N'
          NOT	WHERE Col NOT IN ('Y', 'N')	NOT is frequently used with LIKE and IN
          AND	WHERE Col1 > 5 AND Col2 < 3	Filter rows where two or more conditions must be true
          OR	WHERE Col1 > 5 OR Col2 < 3	Filter rows where at least one condition must be true
          BETWEEN	WHERE Col BETWEEN 3 AND 5	Often easier syntax than using an AND
                    
           */
           






          
          