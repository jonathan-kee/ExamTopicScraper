# Question 222
Which two statements about INVISIBLE indexes are true? (Choose two.)

# Answers
All INSERT, UPDATE, and DELETE statements maintain entries in the index. E.

An INVISIBLE index consumes no storage. B.

A. You use ALTER INDEX to make an INVISIBLE index VISIBLE.

C. The query optimizer never considers INVISIBLE indexes when determining execution plans.

D. You can only create one INVISIBLE index on the same column list.

# Discussions
## Discussion 1
For C, the query optimizer usage is based on the setting of OPTIMIZER_USE_INVISIBLE_INDEXES

## Discussion 2
A, C are correct. E. The maintenance of entries in the index during data manipulation operations (INSERT, UPDATE, DELETE) is not impacted by the visibility of the index. Both VISIBLE and INVISIBLE indexes are updated accordingly to maintain data integrity and facilitate efficient data retrieval using indexes.

