# Question 39
Which two actions can you perform with object privileges? (Choose two.)


# Answers
A. Create roles.

B. Create FOREIGN KEY constraints that reference tables in other schemas.

C. Delete rows from tables in any schema except SYS.

D. Set default and temporary tablespaces for a user.

E. Execute a procedure or function in another schema.

# Discussions
## Discussion 1
BE A : False. Creating role is system privilege. B : True. Use REFERENCE privilege. C : False. Use DELETE ANY TABLE system privilege. D : False? E : True. Use EXECUTE privilege.

## Discussion 2
B, E - correct see description in the table 7-2 https://docs.oracle.com/database/121/TTSQL/privileges.htm#TTSQL341

## Discussion 3
A is wrong because : Create Role is a system privilege

## Discussion 4
BE for me, please update the answers

## Discussion 5
ADE is system privileges

