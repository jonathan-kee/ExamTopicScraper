# Question 189
You execute these commands:


![](../../images/image90.png)
		

Which two, used independently, can replaceso the query returns 1?

# Answers
A. ROLLBACK;

B. ROLLBACK TO SAVEPOINT post_insert;

COMMIT; D.

COMMIT TO SAVEPOINT post_insert; E.

C. ROLLBACK TO post_insert;

# Discussions
## Discussion 1
BC is correct as the word savepoint is optionnal.

## Discussion 2
E is invalid. BC is correct

## Discussion 3
BC is the correct answer since SAVEPOINT is optional in ROLLBACK there's no such thing as COMMIT TO SAVEPOINT

## Discussion 4
keyword SAVEPOINT is optional thus B,C

## Discussion 5
All savepoints of the current transaction are deleted if you execute a COMMIT , or a ROLLBACK that does not name a savepoint.

