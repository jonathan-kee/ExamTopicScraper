# Question 214
Which three statements are true about GLOBAL TEMPORARY TABLES? (Choose three.)

# Answers
A GLOBAL TEMPORARY TABLE can be referenced in the defining query of a view B.

A GLOBAL TEMPORARY TABLE can have multiple indexes. E.

A GLOBAL TEMPORARY TABLE can have only one index. A.

A GLOBAL TEMPORARY TABLE cannot have a PUBLIC SYNONYM. D.

A trigger can be created on a GLOBAL TEMPORARY TABLE. F.

C. DML on GLOBAL TEMPORARY TABLES generates no REDO.

# Discussions
## Discussion 1
Answer is BEF https://oracle-base.com/articles/misc/temporary-tables

## Discussion 2
BEF is correct

## Discussion 3
A GLOBAL TEMPORARY TABLE in Oracle cannot have a PUBLIC SYNONYM. Synonyms, especially public ones, are meant to provide a consistent and global alias to database objects. However, Global Temporary Tables (GTTs) have session-specific or transaction-specific data, and allowing a public synonym for such a table could lead to confusion or conflicts due to its session-dependent behavior.

## Discussion 4
why BDE is the answer? Correct answer is BEF

