# Question 148
Which three statements are true about an ORDER BY clause? (Choose three.)

# Answers
A. By default an ORDER BY clause sorts rows in descending order

An ORDER BY clause always sorts NULL values last. C.

An ORDER BY clause can perform a binary sort. E.

An ORDER BY clause can perform a linguistic sort. F.

An ORDER BY clause will always precede a HAVING clause if both are used in the same top-level query. B.

By default an ORDER BY clause sorts rows in ascending order. D.

# Discussions
## Discussion 1
Shouldn't it be DEF? A - FALSE; by default sorting is ASC B - FALSE; In both syntax and execution ORDER BY is always after HAVING C - FALSE; NULLS FIRST can be used to sort NULL values first D - TRUE; E, F - TRUE; parameter NLS_SORT can be changed between BINARY and linguistic_definition. https://docs.oracle.com/database/121/REFRN/GUID-04243CDA-43CA-4AF8-B59D-6FB841B307BE.htm#REFRN10127

## Discussion 2
DEF correct, Null is sorted last in ascending and first in descending by default

## Discussion 3
The three statements that are true about an ORDER BY clause are: D. By default, an ORDER BY clause sorts rows in ascending order. E. An ORDER BY clause can perform a binary sort. F. An ORDER BY clause can perform a linguistic sort. An ORDER BY clause is used to sort the rows returned by a query in a specified order. By default, if no sort order is specified, the rows are sorted in ascending order. An ORDER BY clause can perform different types of sorts, including binary and linguistic sorts. A binary sort sorts the data based on the binary representation of the values being sorted. A linguistic sort sorts the data based on a specific linguistic definition, taking into account language-specific rules for character and string comparison.

