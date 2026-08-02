# Question 9
Which two statements are true about TRUNCATE and DELETE? (Choose two.)


# Answers
A. DELETE can use a WHERE clause to determine which row(s) should be removed.

B. TRUNCATE can use a WHERE clause to determine which row(s) should be removed.

C. TRUNCATE leaves any indexes on the table in an UNUSABLE state.

D. The result of a TRUNCATE can be undone by issuing a ROLLBACK.

E. The result of a DELETE can be undone by issuing a ROLLBACK.

# Discussions
## Discussion 1
A. DELETE can use a WHERE clause to determine which row(s) should be removed. ---> Is correct B. TRUNCATE can use a WHERE clause to determine which row(s) should be removed. ---> Its wrong bcoz truncate will delete every rows in a table except the table definitions. C. TRUNCATE leaves any indexes on the table in an UNUSABLE state. ----> its wrong truncate will remove everything except table definition or skeleton of the table D. The result of a TRUNCATE can be undone by issuing a ROLLBACK.-----> Its wrong bcoz TRUNCATE is a ddl statement whereas it can be done for DELETE since its dml statement E. The result of a DELETE can be undone by issuing a ROLLBACK. ----> Its correct bcoz DELETE is DML statement and each delete of row are recorded in transaction log or the redo logs.

## Discussion 2
AE is the correct ans. With truncate we can not user where clause (B) with truncate even if we rollback data will not be rollback. (D)

## Discussion 3
AE correct answers

## Discussion 4
AE are the correct answers

## Discussion 5
A, E correct answers

