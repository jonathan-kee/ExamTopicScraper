# Question 114
Which two statements are true about Oracle databases and SQL? (Choose two.)

# Answers
A query can access only tables within the same schema. B.

A. Updates performed by a database user can be rolled back by another user by using the ROLLBACK command.

A user can be the owner of multiple schemas in the same database. D.

C. The database guarantees read consistency at select level on user-created tables.

E. When you execute an update statement, the database instance locks each updated row.

# Discussions
## Discussion 1
C and E are the most accurate

## Discussion 2
CE is right answer.

## Discussion 3
C and E. https://docs.oracle.com/cd/B28359_01/server.111/b28318/schema.htm#CNCPT111 A schema is a collection of logical structures of data, or schema objects. A schema is owned by a database user and has the same name as that user. Each user owns a single schema. Schema objects can be created and manipulated with SQL and include the following types of objects:

## Discussion 4
Answer should be C and D. C is ACID which Oracle SQL always do https://docs.oracle.com/cd/B13789_01/server.101/b10759/statements_8003.htm CREATE USER my_user IDENTIFIED BY my_password DEFAULT TABLESPACE tbspace1 QUOTA UNLIMITED ON tbspace1; GRANT schema1, schema2 TO my_user;

