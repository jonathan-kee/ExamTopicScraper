# Question 118
Which is true about the & and && prefixes with substitution variables? (Choose all that apply.)

# Answers
A. Both & and && can prefix a substitution variable name in queries and DML statements.

An && prefix to an undefined substitution variable, which is referenced multiple times in multiple queries, will prompt for a value once per query. D.

An & prefix to an undefined substitution variable, which is referenced twice in the same query, will prompt for a value twice. B.

& can prefix a substitution variable name only in queries. C.

E. The && prefix will not prompt for a value even if the substitution variable is not previously defined in the session.

# Discussions
## Discussion 1
D too select &&a, &&a from dual; select &&a from dual;

## Discussion 2
D is not correct because it will prompt the user once, and only once for all queries, not once for every query.

## Discussion 3
AB is correct https://docs.oracle.com/en/database/oracle/oracle-database/21/sqpug/using-substitution-variables-sqlplus.html#GUID-0BEEC1D7-876B-495C-9327-17037652D3D2

## Discussion 4
A.B correct. reference for B If a single ampersand prefix is used with an undefined variable, the value you enter at the prompt is not stored. Immediately after the value is substituted in the statement the variable is discarded and remains undefined. If the variable is referenced twice, even in the same statement, then you are prompted twice.

