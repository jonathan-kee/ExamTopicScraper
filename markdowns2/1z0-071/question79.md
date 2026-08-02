# Question 79
Which two are true about a SQL statement using SET operators such as UNION? (Choose two.)

# Answers
A. The data type group of each column returned by the second query must match the data type group of the corresponding column returned by the first query.

B. The names and number of columns must be identical for all select statements in the query.

C. The data type of each column returned by the second query must be implicitly convertible to the data type of the corresponding column returned by the first query.

D. The data type of each column returned by the second query must exactly match the data type of the corresponding column returned by the first query.

E. The number, but not names, of columns must be identical for all select statements in the query.

# Discussions
## Discussion 1
CE for sure 100%

## Discussion 2
CE is 100% percent is correct

## Discussion 3
Not A. because "Data type group" isn’t a strict SQL requirement — Oracle uses implicit conversion, not strict groups.

## Discussion 4
AE for me - I don't think they need to match exactly.

## Discussion 5
c is incorrect ->The set operators are not valid on columns of type BLOB, CLOB, BFILE, VARRAY, or nested table. i think D E are correct The UNION, INTERSECT, and MINUS operators are not valid on LONG columns. https://docs.oracle.com/en/database/oracle/oracle-database/19/sqlrf/The-UNION-ALL-INTERSECT-MINUS-Operators.html#GUID-B64FE747-586E-4513-945F-80CB197125EE

