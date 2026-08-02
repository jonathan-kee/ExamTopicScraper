# Question 194
Table HR.EMPLOYEES contains a row where the EMPLOYEE_ID is 109.

User ALICE has no privileges to access HR.EMPLOYEES.

User ALICE starts a session.

User HR starts a session and successfully executes these statements:

GRANT DELETE ON employees TO alice;

UPDATE employees SET salary = 24000 WHERE employee_id = 109;

In her existing session ALICE then executes:

DELETE FROM hr.employees WHERE employee_id = 109;

What is the result?

# Answers
A. The DELETE command will wait for HR’s transaction to end then return an error.

B. The DELETE command will immediately delete the row.

C. The DELETE command will wait for HR’s transaction to end then delete the row.

D. The DELETE command will immediately return an error.

# Discussions
## Discussion 1
Tested, C is correct, i updated row as sys user and deleted as test user, it was stuck in scrip runner, as soon as I commited in sys session delete did happen in test user session

## Discussion 2
D is correct. ALICE needs SELECT privileges also

## Discussion 3
I'm seeing a lot of debate here about the security, but what about data lock? nothing indicates that the HR committed the update, thus; shouldn't the row be locked?

## Discussion 4
UPDATE is DML and not a DDL, it does not implicitly commit the transaction. C. The DELETE command will wait for HR’s transaction to end then delete the row. ALICE’s DELETE command will wait for HR’s transaction to complete (either commit or rollback) and then delete the row.

## Discussion 5
- When HR executes the UPDATE statement, Oracle places a row-level lock (also known as a TM lock) on the row with employee_id = 109. This lock prevents other sessions, including ALICE's, from modifying or deleting the same row until HR's transaction is either committed or rolled back. - ALICE’s DELETE command will detect the lock on the row with employee_id = 109 and wait for HR’s transaction to complete. - Once HR commits the update, the row is no longer locked. However: -Oracle’s Read Consistency Rule ensures that ALICE's session operates under the "view" of the data at the point in time when ALICE started her session (or query). -Since the row has been modified after ALICE’s session began, ALICE's DELETE will fail with an ORA-08177: Cannot serialize access for this transaction error, because the row has been changed by another committed transaction.

