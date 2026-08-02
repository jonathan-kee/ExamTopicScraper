# Question 242
Which three actions can you perform only with system privileges? (Choose three.)

# Answers
Access flat files, which are stored in an operating system directory, via the UTL_FILE package. D.

A. Query any table in a database.

B. Execute a procedure in another schema.

C. Log in to a database instance.

E. Use the WITH GRANT OPTION clause.

# Discussions
## Discussion 1
D 'WARNING:The privileges needed to access files in a directory object are operating system specific. UTL_FILE directory object privileges give you read and write access to all files within the specified directory.'

## Discussion 2
A. Query any table in a database. True. The ability to query any table across the database requires the SELECT ANY TABLE system privilege. This is a system-level permission and not specific to objects within a user's schema. B. Execute a procedure in another schema. True. To execute a procedure in another schema, a user would need the EXECUTE ANY PROCEDURE system privilege. While direct object privileges can be granted to execute a specific procedure, the system privilege is broader and not restricted to a single schema. C. Log in to a database instance. True. Logging in to a database instance requires the CREATE SESSION system privilege. This is a fundamental system privilege that grants the user the ability to connect to the database. Answer from GPT4

## Discussion 3
https://www.examtopics.com/discussions/oracle/view/8222-exam-1z0-071-topic-1-question-235-discussion/

## Discussion 4
ACD is right i think

## Discussion 5
C Log in to database - Create session system privilege

