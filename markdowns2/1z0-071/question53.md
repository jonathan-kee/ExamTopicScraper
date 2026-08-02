# Question 53
Which two statements are true regarding indexes? (Choose two.)


# Answers
A. An update to a table can result in updates to any or all of the table's indexes.

An update to a table can result in no updates to any of the table's indexes. B.

A table belonging to one user cannot have an index that belongs to a different user. E.

A UNIQUE index can be altered to be non-unique. C.

D. When a table is dropped and is moved to the RECYCLE BIN, all indexes built on that table are permanently dropped.

# Discussions
## Discussion 1
D is worng: https://docs.oracle.com/cd/B19306_01/server.102/b14200/statements_9012.htm When you drop a table, any indexes on the table are dropped and put into the recycle bin along with the table. If subsequent space pressures arise, then the database reclaims space from the recycle bin by first purging indexes. In this case, when you flash back the table, you may not get back all of the indexes that were defined on the table.

## Discussion 2
A and B can co-exist. Answer should be ABD.

## Discussion 3
D is wrong, indexes can be restored

## Discussion 4
a and b. I tried E out and you can create an index on someone else's table

## Discussion 5
D is definitely not correct since index are moved to recycle bin not permanently removed

