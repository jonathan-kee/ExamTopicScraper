# Question 3
What is true about non-equijoin statement performance? (Choose two.)


# Answers
A. The BETWEEN condition always performs less well than using the >= and <= conditions.

B. The BETWEEN condition always performs better than using the >= and <= conditions.

C. The Oracle join syntax performs better than the SQL:1999 compliant ANSI join syntax.

D. Table aliases can improve performance.

E. The join syntax used makes no difference to performance.

# Discussions
## Discussion 1
D. Table aliases can improve performance. Table aliases can improve performance by reducing the amount of parsing needed to execute the query. C. The Oracle join syntax performs better than the SQL:1999 compliant ANSI join syntax in Oracle 18c. Oracle's join syntax can result in better performance in certain scenarios as it allows the optimizer to understand the join order and access paths more effectively. Therefore, options C and D are correct. Options A, B, and E are incorrect.

## Discussion 2
DE are correct

## Discussion 3
A and B are false, no discussion. C. Oracle's query optimizer internally rewrites both syntaxes into the same execution plan. The decision on how to execute the join—nested loop, hash join, merge join, etc.—is based on statistics, indexes, and optimizer settings, not on the join syntax itself. D. Oracle's SQL parser and optimizer are designed to handle fully qualified table names just as efficiently as aliases. The use of aliases affects only the textual complexity of the query, not the underlying parsing or optimization time in any meaningful or measurable way.

## Discussion 4
Oracle's official stance: Oracle documentation explicitly states that the SQL:1999-compliant join syntax does not offer any performance benefits over the Oracle-proprietary join syntax that existed in prior releases

## Discussion 5
Those who answered D - provide a link with the Oracle documentation as a prove! E - is correct.

