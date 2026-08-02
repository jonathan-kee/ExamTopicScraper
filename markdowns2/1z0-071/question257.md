# Question 257
Which two are true about the WITH GRANT OPTION clause? (Choose two.)

# Answers
A. It can be used for system and object privileges.

B. The grantee can grant the object privilege to any user in the database, with or without including this option.

C. The grantee must have the GRANT ANY OBJECT PRIVILEGE system privilege to use this option.

D. It cannot be used to pass on privileges to PUBLIC by the grantee.

E. It can be used when granting privileges to roles.

F. It can be used to pass on privileges to other users by the grantee.

# Discussions
## Discussion 1
Specify WITH GRANT OPTION to enable the grantee to grant the object privileges to other users and roles. The user whose schema contains an object is automatically granted all associated object privileges with the GRANT OPTION. This special privilege allows the grantee several expanded privileges: The grantee can grant the object privilege to any users in the database, with or without the GRANT OPTION, or to any role in the database. If both of the following are true, the grantee can create views on the table and grant the corresponding privileges on the views to any user or role in the database. The grantee receives object privileges for the table with the GRANT OPTION. The grantee has the CREATE VIEW or CREATE ANY VIEW system privilege. The GRANT OPTION is not valid when granting an object privilege to a role. Oracle prevents the propagation of object privileges through roles so that grantees of a role cannot propagate object privileges received by means of roles.

## Discussion 2
D. It cannot be used to pass on privileges to PUBLIC by the grantee. F. It can be used to pass on privileges to other users by the grantee.

## Discussion 3
WHAT ABOUT D , THAT ALSO CORRECT SEEMS,

## Discussion 4
B is the right answer as per this website https://docs.oracle.com/cd/B10500_01/server.920/a96521/privs.htm#21327 this website has same wording Specifying the GRANT OPTION Specify WITH GRANT OPTION to enable the grantee to grant the object privileges to other users and roles. The user whose schema contains an object is automatically granted all associated object privileges with the GRANT OPTION. This special privilege allows the grantee several expanded privileges: The grantee can grant the object privilege to any users in the database, with or without the GRANT OPTION, or to any role in the database. If both of the following are true, the grantee can create views on the table and grant the corresponding privileges on the views to any user or role in the database. The grantee receives object privileges for the table with the GRANT OPTION. The grantee has the CREATE VIEW or CREATE ANY VIEW system privilege.

## Discussion 5
A is wrong - only object privileges https://docs.oracle.com/en/database/oracle/oracle-database/19/sqlrf/GRANT.html

