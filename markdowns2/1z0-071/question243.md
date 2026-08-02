# Question 243
1. MANAGER is an existing role with no privileges or roles.
2. EMP is an existing role containing the CREATE TABLE privilege.
3. EMPLOYEES is an existing table in the HR schema.

Which two commands execute successfully? (Choose two.)

# Answers
A. GRANT CREATE SEQUENCE TO manager, emp;

B. GRANT CREATE TABLE, emp TO manager;

C. GRANT CREATE ANY SESSION, CREATE ANY TABLE TO manager;

D. GRANT SELECT, INSERT ON hr.employees TO manager WITH GRANT OPTION;

E. GRANT CREATE TABLE, SELECT ON hr.employees TO manager;

# Discussions
## Discussion 1
A,E is correct answers.

## Discussion 2
- A: Grants the CREATE SEQUENCE system privilege to both the manager and emp roles. It is valid to specify multiple roles or users in a single GRANT statement. - B: CREATE TABLE is a system privilege, and privileges can be granted to roles. - C: CREATE ANY SESSION is not a valid privilege in Oracle. It should be CREATE SESSION instead - D: This syntax is valid. - E: CREATE TABLE is a system privilege, and SELECT is an object privilege. System and object privileges cannot be granted in the same GRANT statement

## Discussion 3
can grant system and object privileges in same grant statement

## Discussion 4
This command grants the CREATE TABLE privilege and SELECT privilege on the HR.EMPLOYEES table to the MANAGER role. This is valid syntax, as it grants both a system privilege and an object privilege to a role. That's by A,E is correct

