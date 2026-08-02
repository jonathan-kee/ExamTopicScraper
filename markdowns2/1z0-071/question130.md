# Question 130
Which three statements are true about sequences in a single instance Oracle database? (Choose three.)

# Answers
A sequence can issue duplicate values. D.

A sequence can only be dropped by a DBA. C.

A sequence number that was allocated can be rolled back if a transaction fails. B.

A sequence’s unallocated cached values are lost if the instance shuts down. A.

E. Sequences can always have gaps.

F. Two or more tables cannot have keys generated from the same sequence.

# Discussions
## Discussion 1
Correct Answer: ADE

## Discussion 2
Believe ADE

## Discussion 3
ADE are correct

## Discussion 4
ADE are correct: A - TRUE; cash values are lost if instance shuts down B - FALSE; Transaction can be rolled back if not COMMITed yet, but sequence number was already used and cannot be reused C - FALSE; user can create sequence and therefore has all privileges to this object, including DROP D - TRUE; CYCLE parameter can be set and values can be looped E - TRUE; there is a list of activities that can influence the gaps generation, like failed INSERT or DELETE; COMMIT or INSERT; ROLLBACK etc. F - FALSE; from ORACLE documentation "Sequence numbers are generated independently of tables, so the same sequence can be used for one or for multiple tables"

## Discussion 5
The whole idea of SEQUANCE is to provide unique keys so D cannot be correct. About F - why not?! This is something called in the code. But even as default value, there is no check for unique value accross all tables into the database.

