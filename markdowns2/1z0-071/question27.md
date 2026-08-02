# Question 27
Which two statements are true about *_TABLES views? (Choose two.)


# Answers
ALL_TABLES displays all tables owned by the current user. E.

All users can query DBA_TABLES successfully. C.

A. USER_TABLES displays all tables owned by the current user.

B. You must have ANY TABLE system privileges, or be granted object privileges on the table, to view a table in USER_TABLES.

D. You must have ANY TABLE system privileges, or be granted object privileges on the table, to view a table in DBA_TABLES.

F. You must have ANY TABLE system privileges, or be granted object privileges on the table, to view a table in ALL_TABLES.

# Discussions
## Discussion 1
AD. Tried on ORA 19. GRANT SELECT ANY_TABLE to gives access to DBA_TABLES F is incorrect because querying ALL_TABLES you can always do but only see those tables you have the rights to view, which would be a subset of DBA_TABLES

## Discussion 2
i am for AF

## Discussion 3
AD , the right answers. The data dictionary views that begin with DBA_ are restricted. These views can be accessed only by users with the SELECT_ANY_TABLE privilege. This privilege is assigned to the DBA role when the system is initially installed. https://docs.oracle.com/cd/A57673_01/DOC/server/doc/SRF73/ch2a.htm

## Discussion 4
AF cannot grant dba_tables privilege

## Discussion 5
Don't get USER_TABLE and ALL_TABLE views confused. A) USER_TABLES displays all tables owned by the current user. (True) E) ALL_TABLES displays all tables owned by the current user. (False) The ALL_TABLES view contains description of tables accessible to the user.

