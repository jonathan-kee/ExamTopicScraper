# Question 165
Which two are true about using the FOR UPDATE clause in a SELECT statement? (Choose two.)

# Answers
A. It can be used with SET operators (UNION, INTERSECT etc.).

B. It cannot be used with the DISTINCT keyword.

C. If the NOWAIT clause is added, the statement will automatically acquire locks from their owning transactions and not wait.

D. The statement skips rows locked by other transactions.

E. It can be used with joins.

# Discussions
## Discussion 1
BE is correct

## Discussion 2
B E are correct

## Discussion 3
B - can SELECT FOR UPDATE be used with DISTINCT? I receive ORA-01786 error when testing

