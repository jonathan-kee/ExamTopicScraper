# Question 110
Which two are true about creating tables in an Oracle database? (Choose two.)

# Answers
A CREATE TABLE statement can specify the maximum number of rows the table will contain. E.

A. Creating an external table will automatically create a file using the specified directory and file name.

A primary key constraint is mandatory. D.

A system privilege is required. B.

C. The same table name can be used for tables in different schemas.

# Discussions
## Discussion 1
To create a relational table in your own schema, you must have the CREATE TABLE system privilege. To create a table in another user's schema, you must have the CREATE ANY TABLE system privilege. A) is wrong because external table creates a file only if it's created with 'CREATE AS SELECT' statement

## Discussion 2
BC is right answer.

## Discussion 3
BC is correct

## Discussion 4
Should be BC

## Discussion 5
BC cuz google says: 'System privileges allow a user to perform a particular database operation or class of database operations. For example, to create a table, the user needs the create table privilege.' 'Objects have privileges associated with them, such as insert, update and delete a table.'

