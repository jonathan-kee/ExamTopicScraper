# Question 201
You and your colleague Andrew have these privileges on the EMPLOYEE_RECORDS table:

1. SELECT
2. INSERT
3. UPDATE
4. DELETE

You connect to the database instance and perform an update to some of the rows in EMPLOYEE_RECORDS, but do not commit yet.

Andrew connects to the database instance and queries the table.

No other users are accessing the table.

Which two statements are true at this point? (Choose two.)

# Answers
A. Andrew will be unable to see the changes you have made.

Andrew will be able to modify any rows in the table that have not been modified by your transaction. E.

Andrew will be able to see the changes you have made. D.

Andrew will be able to SELECT from the table, but be unable to modify any existing rows. C.

Andrew will be unable to perform any INSERTs, UPDATEs, or DELETEs on the table. B.

# Discussions
## Discussion 1
AE Correct

## Discussion 2
AE is correct

## Discussion 3
AE correct

## Discussion 4
AE is correct

## Discussion 5
AE Correct

