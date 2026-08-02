# Question 32
Which two statements are true about the SET VERIFY ON command? (Choose two.)


# Answers
A. It displays values for variables used only in the WHERE clause of a query.

B. It displays values for variables created by the DEFINE command.

C. It can be used only in SQL*Plus.

D. It displays values for variables prefixed with &&.

E. It can be used in SQL Developer and SQL*Plus.

# Discussions
## Discussion 1
BDE are correct, when SET VERIFY ON it shows us variables defined by a DEFINE and a variables in &&.

## Discussion 2
correct is BE

## Discussion 3
correct is BE

## Discussion 4
Should be DE

## Discussion 5
✅ C. It can be used only in SQL*Plus. True. SET VERIFY ON is a command specific to SQL*Plus (and tools that emulate it). It is not supported in GUI tools like SQL Developer (though similar behavior can sometimes be simulated). ✅ D. It displays values for variables prefixed with &&. True. When SET VERIFY ON is enabled, SQL*Plus displays the old and new values of substitution variables (like &&var) before executing the SQL. ❌ Incorrect options: A. It displays values for variables used only in the WHERE clause of a query. ➤ False. It shows substituted values regardless of where they are used, not just in the WHERE clause. B. It displays values for variables created by the DEFINE command. ➤ False. SET VERIFY ON shows values of substitution variables, not necessarily those created by DEFINE. E. It can be used in SQL Developer and SQLPlus.* ➤ False. SET VERIFY ON works only in SQL*Plus. SQL Developer ignores it.

