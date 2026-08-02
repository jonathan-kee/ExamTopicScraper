# Question 44
You start a session and execute these commands successfully:

![](../../images/0002900001.png)
		
Which two are true? (Choose two.)


# Answers
A. To drop the table in this session, you must first truncate it.

B. Other sessions can view the committed row.

C. You can add a column to the table in this session.

D. You can add a foreign key to the table.

E. When you terminate your session, the row will be deleted.

# Discussions
## Discussion 1
1. CREATE GLOBAL TEMPORARY TABLE my_temp_table ( id NUMBER, description VARCHAR2(20) ) ON COMMIT PRESERVE ROWS 2. INSERT INTO my_temp_table VALUES (1, 'ONE'); 3. Commit; 4. ALTER TABLE my_temp_table ADD ID_1 VARCHAR(20); --> ORA-14450: attempt to access a transactional temp table already in use 5. drop table my_temp_table; --> ORA-14452: attempt to create, alter or drop an index on temporary table already in use 6. truncate table my_temp_table; 7. drop table my_temp_table;

## Discussion 2
for me , correct are A. To drop the table in this session, you must first truncate it. E. When you terminate your session, the row will be deleted.

## Discussion 3
DDL operation on global temporary tables It is not possible to perform a DDL operation (except TRUNCATE) on an existing global temporary table if one or more sessions are currently bound to that table.

## Discussion 4
You cant add an fk to a temporary table. Can't refer to it and cannot refer to another table from the temporary table. Tried it out!

## Discussion 5
ANSWER CE

