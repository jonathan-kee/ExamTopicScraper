# Question 174
Which statement is true about TRUNCATE and DELETE?

# Answers
A. For tables with multiple indexes and triggers DELETE is faster than TRUNCATE.

B. For large tables TRUNCATE is faster than DELETE.

C. You can never TRUNCATE a table if foreign key constraints will be violated.

D. You can never DELETE rows from a table if foreign key constraints will be violated.

# Discussions
## Discussion 1
https://www.examtopics.com/discussions/oracle/view/15064-exam-1z0-071-topic-1-question-268-discussion/

## Discussion 2
You cannot truncate the parent table of an enabled foreign key constraint. You must disable the constraint before truncating the table. An exception is that you can truncate the table if the integrity constraint is self-referential.

## Discussion 3
Answer is C. The key word is 'if' foreign contstraints will be be violated. Meaning, the TRUNCATE 'will' violate the foreign constraints.

## Discussion 4
B correct answer should be B

## Discussion 5
the exception to C is if the constraint is self referential which contradicts the user of 'never' in the statement

