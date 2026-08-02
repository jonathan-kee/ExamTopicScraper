# Question 80
Which two are true about queries using set operators such as UNION? (Choose two.)

# Answers
A. In a query containing multiple set operators, INTERSECT always takes precedence over UNION and UNION ALL.

All set operators are valid on columns of all data types. C.

An expression in the first SELECT list must have a column alias for the expression. B.

CHAR columns of different lengths used with a set operator return a VARCHAR2 whose length equals the longest char value. D.

E. Queries using set operators do not perform implicit conversion across data type groups (e.g. character, numeric).

# Discussions
## Discussion 1
According to: https://docs.oracle.com/cd/B19306_01/server.102/b14200/queries004.htm "If both queries select values of datatype CHAR of equal length, then the returned values have datatype CHAR of that length. If the queries select values of CHAR with different lengths, then the returned value is VARCHAR2 with the length of the larger CHAR value." AND "In queries using set operators, Oracle does not perform implicit conversion across datatype groups. " So DE.

## Discussion 2
https://docs.oracle.com/en/database/oracle/oracle-database/19/sqlrf/The-UNION-ALL-INTERSECT-MINUS-Operators.html#GUID-B64FE747-586E-4513-945F-80CB197125EE

## Discussion 3
DE are correct

## Discussion 4
DE are the correct answer

## Discussion 5
A. In a query containing multiple set operators, INTERSECT always takes precedence over UNION and UNION ALL. Correct: In queries with multiple set operators, the precedence order is: INTERSECT UNION / UNION ALL MINUS If parentheses are not used to explicitly define precedence, INTERSECT is evaluated before UNION or UNION ALL. D. CHAR columns of different lengths used with a set operator return a VARCHAR2 whose length equals the longest char value. Correct: When CHAR columns of varying lengths are combined using a set operator, Oracle returns the result as a VARCHAR2 column whose length matches the longest CHAR value in the result set.

