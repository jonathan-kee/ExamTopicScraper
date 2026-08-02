# Question 255
Which three are true about privileges and roles? (Choose three.)

# Answers
All roles are owned by the SYS schema. C.

A role can contain a combination of several privileges and roles. F.

A role is owned by the user who created it. E.

A. System privileges always set privileges for an entire database.

A user has all object privileges for every object in their schema by default. D.

B. PUBLIC can be revoked from a user.

G. PUBLIC acts as a default role granted to every user in a database.

# Discussions
## Discussion 1
Please ignore my previous answer. D:Who Can Grant Schema Object Privileges? A user automatically has all object privileges for schema objects contained in his or her schema. A user can grant any object privilege on any schema object he or she owns to any other user or role. If the grant includes the GRANT OPTION (of the GRANT command), the grantee can further grant the object privilege to other users; otherwise, the grantee can use the privilege but cannot grant it to other users. https://docs.oracle.com/cd/A58617_01/server.804/a58227/ch18.htm F: https://docs.oracle.com/cd/A97630_01/server.920/a96521/privs.htm#:~:text=A%20role%20groups%20several%20privileges,to%20help%20in%20database%20administration. G: https://docs.oracle.com/cd/A97630_01/server.920/a96521/privs.htm#:~:text=Because%20PUBLIC%20is%20accessible%20to,requires%20the%20privilege%20or%20role.

## Discussion 2
WHY C IS INCORRECT?

## Discussion 3
Answers are DFG in terms of G option ... The PUBLIC role is automatically granted to all users, providing a set of default privileges that every user in the database has.

## Discussion 4
A , D and F

## Discussion 5
A. System privileges always set privileges for an entire database. Partially True: System privileges are designed to grant a user abilities that are applicable across the database, such as creating tables or executing any procedure. However, the scope of "entire database" can vary depending on the specific system privilege. Some system privileges are more granular and allow actions on specific types of objects across the database. D. A user has all object privileges for every object in their schema by default. True: In Oracle, users inherently have all privileges on objects they own, which includes the ability to select, insert, update, delete, and execute (for procedures and functions), among other actions on those objects. F. A role can contain a combination of several privileges and roles. True: This is one of the primary purposes of roles in Oracle Database. They can group together various system and object privileges as well as other roles for easier and more efficient privilege management. From GPT4

