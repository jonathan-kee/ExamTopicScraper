# Question 252
Which three are true about system and object privileges? (Choose three.)

# Answers
Adding a foreign key constraint pointing to a table in another schema requires the REFERENCES object privilege. D.

A. WITH GRANT OPTTON cannot be used when granting an object privilege to PUBLIC.

B. WITH GRANT OPTION can be used when granting an object privilege to both users and roles.

C. C. Adding a primary key constraint to an existing table in another schema requires a system privilege.

E. Revoking a system privilege that was granted with WITH ADMIN OPTION has a cascading effect.

 Revoking an object privilege that was granted with the WITH GRANT OPTION clause has a cascading effect.

 Revoking an object privilege that was granted with the WITH GRANT OPTION clause has a cascading effect.
C. Adding a primary key constraint to an existing table in another schema requires a system privilege.

# Discussions
## Discussion 1
CCD second C alter any table privs

## Discussion 2
But A is also not correct "You can specify WITH GRANT OPTION only when granting to a user or to PUBLIC, not when granting to a role. "

## Discussion 3
A,C and D

## Discussion 4
B, First C, and E are correct.

## Discussion 5
ACD for me E is not correct http://www.dba-oracle.com/t_with_grant_admin_privileges.htm

