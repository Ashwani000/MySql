SQL is a standard language for accessing and manipulating databases.</br>
**What is SQL?**</br>
SQL stands for Structured Query Language
SQL lets you access and manipulate databases
SQL became a standard of the American National Standards Institute (ANSI) in 1986, and of the International Organization for Standardization (ISO) in 1987</br>
**What Can SQL do?**</br>
SQL can execute queries against a database
SQL can retrieve data from a database
SQL can insert records in a database
SQL can update records in a database
SQL can delete records from a database
SQL can create new databases
SQL can create new tables in a database
SQL can create stored procedures in a database
SQL can create views in a database
SQL can set permissions on tables, procedures, and views</br>
**SQL SELECT Statement**</br>
The SELECT statement is used to select data from a database.</br>
**SQL WHERE Clause**</br>
The WHERE clause is used to filter records.
It is used to extract only those records that fulfill a specified condition.</br>
**SQL ORDER BY Keyword**</br>
The ORDER BY keyword is used to sort the result-set in ascending or descending order.</br>
**SQL AND Operator**</br>
The WHERE clause can contain one or many AND operators.
The AND operator is used to filter records based on more than one condition, like if you want to return all customers from Spain that starts with the letter 'G':</br?
**SQL OR Operator**</br>
The WHERE clause can contain one or more OR operators.
The OR operator is used to filter records based on more than one condition, like if you want to return all customers from Germany but also those from Spain:</br>
**SQL NOT Operator**</br>
The NOT operator is used in combination with other operators to give the opposite result, also called the negative result.</br>
**SQL IN Operator**</br>
The IN operator allows you to specify multiple values in a WHERE clause.
The IN operator is a shorthand for multiple OR conditions.</br>
**SQL LIKE Operator**</br>
The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
There are two wildcards often used in conjunction with the LIKE operator:
The percent sign % represents zero, one, or multiple characters
The underscore sign _ represents one, single character</br>
**SQL BETWEEN Operator**</br>
The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates.
The BETWEEN operator is inclusive: begin and end values are included. </br>
**SQL Aggregate Functions**</br>
an aggregate function is a function that performs a calculation on a set of values, and returns a single value.
Aggregate functions are often used with the GROUP BY clause of the SELECT statement. The GROUP BY clause splits the result-set into groups of values and the aggregate function can be used to return a single value for each group.</br>
The most commonly used SQL aggregate functions are:</br>
MIN() - returns the smallest value within the selected column</br>
MAX() - returns the largest value within the selected column</br>
COUNT() - returns the number of rows in a set</br>
SUM() - returns the total sum of a numerical column</br>
AVG() - returns the average value of a numerical column</br>
Aggregate functions ignore null values (except for COUNT()).</br>
**SQL Joins**</br>
A JOIN clause is used to combine rows from two or more tables, based on a related column between them.</br>
**SQL INNER JOIN**</br>
The INNER JOIN keyword selects records that have matching values in both tables.</br>
**SQL LEFT JOIN **</br>
The LEFT JOIN keyword returns all records from the left table (table1), and the matching records from the right table (table2). The result is 0 records from the right side, if there is no match.</br>
**SQL RIGHT JOIN**</br>
The RIGHT JOIN keyword returns all records from the right table (table2), and the matching records from the left table (table1). The result is 0 records from the left side, if there is no match.</br>
**SQL UNION Operator**</br>
The UNION operator is used to combine the result-set of two or more SELECT statements.
Every SELECT statement within UNION must have the same number of columns
The columns must also have similar data types
The columns in every SELECT statement must also be in the same order</br>
**SQL GROUP BY Statement**</br>
The GROUP BY statement groups rows that have the same values into summary rows, like "find the number of customers in each country".
The GROUP BY statement is often used with aggregate functions (COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns.</br>
**SQL STRING FUNCTIONS**</br>
select concat(Continent,"-",Region) as Place from world.country;</br>
select concat_ws(" - ", Continent,"-",Region) as Place from world.country;</br>
select length(Name) as namecount from world.country;</br>
select left(Name,4) as username from world.country;</br>
select right(Name,4) as username from world.country;</br>
select mid(Name,2,4) as username from world.country;</br>
**The SQL HAVING Clause**</br>
The HAVING clause was added to SQL because the WHERE keyword cannot be used with aggregate functions.</br>
HAVING Syntax</br>
SELECT column_name(s)</br>
FROM table_name</br>
WHERE condition</br>
GROUP BY column_name(s)</br>
HAVING condition</br>
ORDER BY column_name(s);</br>
**SQL CASE Expression**</br>
The CASE expression goes through conditions and returns a value when the first condition is met (like an if-then-else statement). So, once a condition is true, it will stop reading and return the result. If no conditions are true, it returns the value in the ELSE clause.If there is no ELSE part and no conditions are true, it returns NULL.</br>
CASE Syntax</br>
CASE</br>
    WHEN condition1 THEN result1</br>
    WHEN condition2 THEN result2</br>
    WHEN conditionN THEN resultN</br>
    ELSE result</br>
END;</br>
**SQL Comments**</br>
Comments are used to explain sections of SQL statements, or to prevent execution of SQL statements.</br>
**Single Line Comments**</br>
Single line comments start with --.
Any text between -- and the end of the line will be ignored (will not be executed).</br>
 
**Multi-line Comments**</br>
Multi-line comments start with /* and end with */.

Any text between /* and */ will be ignored.
</br>
**SQL IN Operator**</br>
The IN operator allows you to specify multiple values in a WHERE clause.The IN operator is a shorthand for multiple OR conditions.</br>
**What is SQL Subquery?**</br>
In SQL, a subquery can be defined as a query embedded within another query. It is often used in the WHERE, HAVING, or FROM clauses of a statement. Subqueries are commonly used with SELECT, UPDATE, INSERT, and DELETE statements to achieve complex filtering and data manipulation.</br>
Syntax</br>

SELECT column_name</br>
FROM table_name</br>
WHERE column_name expression operator </br>
    (SELECT column_name FROM table_name WHERE ...);</br>

**SQL Views**</br>
In SQL, a view is a virtual table based on the result-set of an SQL statement.</br>
A view contains rows and columns, just like a real table. The fields in a view are fields from one or more real tables in the database.</br>
You can add SQL statements and functions to a view and present the data as if the data were coming from one single table.</br>
A view is created with the CREATE VIEW statement. </br>

CREATE VIEW Syntax</br>
CREATE VIEW view_name AS</br>
SELECT column1, column2, ...</br>
FROM table_name</br>
WHERE condition;</br>
**SQL Stored Procedures for SQL Server**</br>
A stored procedure is a prepared SQL code that you can save, so the code can be reused over and over again.
So if you have an SQL query that you write over and over again, save it as a stored procedure, and then just call it to execute it.
You can also pass parameters to a stored procedure, so that the stored procedure can act based on the parameter value(s) that is passed.
</br>
Stored Procedure Syntax</br>
CREATE PROCEDURE procedure_name</br>
AS</br>
sql_statement</br>
GO;</br>
**Window Functions in SQL**</br>
A window function in SQL is a type of function that allows us to perform calculations across a specific set of rows related to the current row. These calculations happen within a defined window of data, and they are particularly useful for aggregates, rankings, and cumulative totals without altering the dataset.The OVER clause is key to defining this window. It partitions the data into different sets (using the PARTITION BY clause) and orders them (using the ORDER BY clause). These windows enable functions like SUM(), AVG(), ROW_NUMBER(), RANK(), and DENSE_RANK() to be applied in a sophisticated manner.</br>
Syntax </br>
SELECT column_name1, </br>
 window_function(column_name2)</br>
 OVER([PARTITION BY column_name1] [ORDER BY column_name3]) AS new_column</br>
FROM table_name;</br>
Key Terms
</br>
window_function= any aggregate or ranking function</br>
column_name1= column to be selected</br>
column_name2= column on which window function is to be applied</br>
column_name3= column on whose basis partition of rows is to be done</br>
new_column= Name of new column</br>
table_name= Name of table</br>
**Types of Window Functions in SQL**</br>
SQL window functions can be categorized into two primary types: aggregate window functions and ranking window functions. These two types serve different purposes but share a common ability to perform calculations over a defined set of rows while retaining the original data.</br>

































