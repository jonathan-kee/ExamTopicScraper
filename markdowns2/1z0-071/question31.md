# Question 31
Which three statements are true about GLOBAL TEMPORARY TABLES? (Choose three.)


# Answers
A DELETE command on a GLOBAL TEMPORARY TABLE cannot be rolled back. E.

A GLOBAL TEMPORARY TABLE'S definition is available to multiple sessions. F.

A. GLOBAL TEMPORARY TABLE space allocation occurs at session start.

Any GLOBAL TEMPORARY TABLE rows existing at session termination will be deleted. D.

A TRUNCATE command issued in a session causes all rows in a GLOBAL TEMPORARY TABLE for the issuing session to be deleted. C.

B. GLOBAL TEMPORARY TABLE rows inserted by a session are available to any other session whose user has been granted select on the table.

# Discussions
## Discussion 1
A global temporary table is a type of table in Oracle that holds data only for the duration of a session or transaction. It is a persistent database object, visible to all sessions, until the user drops it explicitly using the DROP TABLE statement. Data is only visible to the session which inserts it. The data stored in the global temporary table is private to the session1. In contrast, a regular table is a permanent database object that stores data on disk and is visible to all sessions. The data stored in a regular table is not private to any session and can be accessed by any session with the appropriate privileges. In summary, the main differences between a global temporary table and a regular table are: A global temporary table holds data only for the duration of a session or transaction, while a regular table holds data permanently. Data stored in a global temporary table is private to the session, while data stored in a regular table is not private to any session.

## Discussion 2
When I delete from GTT and then Rollback, response is "Rollback complete" but the rollback does not occur. The rows are still gone from the table

## Discussion 3
https://www.oracletutorial.com/oracle-basics/oracle-global-temporary-table/ will explain the differences between session or transaction specific GTT.

## Discussion 4
✅ F. A GLOBAL TEMPORARY TABLE'S definition is available to multiple sessions. True. The table structure is shared among all users, but data is private to each session

## Discussion 5
Delete operation can totally be rolled back!

