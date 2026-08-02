# Question 272
Which two are true to create an index in your own schema for a table owned by another schema? (Choose two.)

# Answers
A. You must have the UNLIMITED TABLESPACE privilege.

B. You must have either the SELECT privilege on the table or the SELECT ANY TABLE privilege.

C. You must have the CREATE ANY INDEX privilege.

D. You have the UNLIMITED TABLESPACE privilege or sufficient quota for the tablespace to contain the index.

E. You have either the INDEX privilege on the table or the CREATE ANY INDEX privilege.

# Discussions
## Discussion 1
Answer is CD E is wrong. Oracle does **not have an `INDEX` object privilege**. You can’t grant someone the ability to index a table via an `INDEX` privilege—it doesn’t exist. Only `CREATE ANY INDEX` or CREATE INDEX applies.

## Discussion 2
o create an index on a table in another schema in your own schema, you must either own the table or have been granted the INDEX object privilege on that table, or possess the CREATE ANY INDEX system privilege docs.oracle.com . In our scenario the table isn’t owned by the user, so the user needs either the object privilege (GRANT INDEX ON table_name TO user) or the CREATE ANY INDEX privilege. Having either of those will satisfy the privilege requirement to create the index. (If the user already has CREATE ANY INDEX, that covers it; if not, the table’s owner can grant the INDEX privilege on that specific table.)

