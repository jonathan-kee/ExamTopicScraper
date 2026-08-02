# Question 170
Which two statements are true about indexes and their administration in an Oracle database? (Choose two.)

# Answers
A DROP INDEX statement always prevents updates to the table during the drop operation. D.

A new index can be created or an existing one reused when a primary key constraint is created. A.

An INVINSIBLE index is maintained by DML operations on the underlying table. B.

C. If a query filters on an indexed column, the index will always be accessed during execution of the query.

E. The same table column cannot be part of a unique and non-unique index.

# Discussions
## Discussion 1
c. No, that statement is not necessarily true. If a query filters on an indexed column, the optimizer will decide whether or not to use the index based on factors such as the selectivity of the filter and the size of the table. In some cases, a full table scan may be more efficient than using an index.

## Discussion 2
AB is correct

## Discussion 3
A: using index clause C: once index created, use is automatic with query

## Discussion 4
AB are correct

## Discussion 5
https://www.examtopics.com/discussions/oracle/view/9439-exam-1z0-071-topic-1-question-300-discussion/

