# Question 69
An Oracle Database session has an uncommitted transaction in progress which updated 5000 rows in a table.
In which three situations does the transaction complete thereby committing the updates? (Choose three.)


# Answers
A. when a CREATE TABLE AS SELECT statement is issued in the same session but fails with a syntax error

B. when a DBA issues a successful SHUTDOWN TRANSACTIONAL statement and the user then issues a COMMIT

C. when the session logs out successfully

D. when a CREATE INDEX statement is executed successfully in the same session

E. when a DBA issues a successful SHUTDOWN IMMEDIATE statement and the user then issues a COMMIT

F. when a COMMIT statement is issued by the same user from another session in the same database instance

# Discussions
## Discussion 1
why is not B? C used SQLPLUS is right but use sql developer ....Maybe not

## Discussion 2
BCD is correct.

## Discussion 3
A is not successful DML

## Discussion 4
I CHECKED making an experiment and A IS CORRECT answer. Looks like just CREATE TABLE AS creates a COMMIT (error was placed later - I used unexisting table as a source)

## Discussion 5
For A to be true the statement would have to be syntactically valid.

