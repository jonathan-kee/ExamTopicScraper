# Question 88
Which two are true about global temporary tables? (Choose two.)

# Answers
A. Indexes can be created on them.

B. Backup and recovery operations are available for these tables.

C. Their data is always stored in the default temporary tablespace of the user who created them.

D. If the ON COMMIT clause is transaction-specific, all rows in the table are deleted after each COMMIT OR ROLLBACK.

E. They can be created only by a user with the DBA role, but can be accessed by all users who can create a session.

F. If the ON COMMIT clause is session-specific, the table is dropped when the session is terminated.

# Discussions
## Discussion 1
I Think A, D. D -> If the ON COMMIT is transaction specific -> COMMIT, ROLLBACK delete rows. NOT C-> Allocation of temporal segments are done on USER TEMP TABLESPACE, at time of use table, no always in the TEMP TABLESPACE of the OWNER.

## Discussion 2
AD is correct

## Discussion 3
AD is correct

## Discussion 4
A D are correct: D. If the ON COMMIT clause is transaction-specific, all rows in the table are deleted after each COMMIT OR ROLLBACK. ''all rows in the table are deleted'' = TRUNCATE

## Discussion 5
C isn't correct: By default, Oracle stores the data of the global temporary table in the default temporary tablespace of the table’s owner. But you can explicitly assign another tablespace to a global temporary table during table creation using the TABLESPACE clause https://www.oracletutorial.com/oracle-basics/oracle-global-temporary-table/

