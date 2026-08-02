# Question 104
Which three statements are true about indexes and their administration in an Oracle database? (Choose three.)

# Answers
A descending index is a type of function-based index. B.

An index can be created as part of a CREATE TABLE statement. E.

An INVINSIBLE index is not maintained when DML is performed on its underlying table. C.

An UNUSABLE index is maintained when DML is performed on its underlying table. F.

A. The same table column can be part of a unique and non-unique index.

D. If a query filters on an indexed column then it will always be used during execution of the query.

# Discussions
## Discussion 1
Answer is ABE. F is wrong, unused index is not mentained

## Discussion 2
C and F are wrong, oracle documentation says: Unlike unusable indexes, an invisible index is maintained during DML statements. https://docs.oracle.com/en/database/oracle/oracle-database/19/admin/managing-indexes.html#GUID-3A66938F-73C6-4173-844E-3938A0DBBB54

## Discussion 3
These are correct

## Discussion 4
F is wrong. it is not maintained by DML.

## Discussion 5
ABE are correct

