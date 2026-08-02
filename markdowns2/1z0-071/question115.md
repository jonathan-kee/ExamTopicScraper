# Question 115
Which statement is true about TRUNCATE and DELETE?

# Answers
A. For tables with multiple indexes and triggers, DELETE is faster than TRUNCATE.

B. You can never TRUNCATE a table if foreign key constraints would be violated.

C. You can DELETE rows from a table with referential integrity constraints.

D. For large tables, DELETE is faster than TRUNCATE.

# Discussions
## Discussion 1
C. A and D: False --> Truncate is better and has better performance than delete and Drop except for very small tables. B False --> You can truncate a table with a FK on Cascade. You can disable FK and then Truncate (except if FK is self-refential).

## Discussion 2
C is correct since you can delete using cascade option B is incorrect since it says never but you can by disable the constraint

## Discussion 3
C is correct, We can trucate table contains referential integrity, one by drop the constraint/ while adding constraint we can include on delete cascade . Truncate table colors cascade; this statement will run successfully. Reference https://www.examtopics.com/discussions/oracle/view/15064-exam-1z0-071-topic-1-question-268-discussion/

## Discussion 4
B is correct

## Discussion 5
D is wrong . B is correct https://docs.oracle.com/database/121/SQLRF/statements_10007.htm#SQLRF01707

