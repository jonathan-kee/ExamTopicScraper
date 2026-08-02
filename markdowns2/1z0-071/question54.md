# Question 54
Which two are true about queries using set operators (UNION, UNION ALL, INTERSECT and MINUS)? (Choose two.)


# Answers
A. The name of each column in the first SELECT list must match the name of the corresponding column in each subsequent SELECT list.

B. None of the set operators can be used when selecting CLOB columns.

C. There must be an equal number of columns in each SELECT list.

D. Each SELECT statement in the query can have an ORDER BY clause.

E. The FOR UPDATE clause cannot be specified.

# Discussions
## Discussion 1
Set operations cannot be performed on BLOB, CLOB, BFILE, VARRAY, or nested table columns. BCE is the Answer

## Discussion 2
Union all works with clob.

## Discussion 3
B,C & E All correct

## Discussion 4
Should be C and E. Tried it out !

## Discussion 5
CE is the answer None of the set operator can be used with CLOB -False The set operator which is excluding duplicate rows (intersect,minus,union) will fail to compare the LOB data type. Union all operator doesn't throw any error if it contains LOB datatype

