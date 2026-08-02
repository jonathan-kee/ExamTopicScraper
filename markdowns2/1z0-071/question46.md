# Question 46
Which two are true about external tables that use the ORACLE_DATAPUMP access driver? (Choose two.)


# Answers
A. When creating an external table, data can be selected only from a table whose rows are stored in database blocks.

B. Creating an external table creates a directory object.

Creating an external table creates a dump file that can be used by an external table in the same or a different database. D.

Creating an external table creates a dump file that can be used only by an external table in the same database. E.

C. When creating an external table, data can be selected from another external table or from a table whose rows are stored in database blocks.

# Discussions
## Discussion 1
https://www.examtopics.com/discussions/oracle/view/22606-exam-1z0-071-topic-2-question-60-discussion/

## Discussion 2
BD IS CORRET FOR SURE

## Discussion 3
ChatGPT says also C and D: True Statements: C. When creating an external table, data can be selected from another external table or from a table whose rows are stored in database blocks. This statement is correct because external tables can be created based on data in other external tables, as well as regular database tables. This flexibility allows for various data processing scenarios where data can be accessed from multiple sources. D. Creating an external table creates a dump file that can be used by an external table in the same or a different database. This statement is also true. The ORACLE_DATAPUMP access driver allows the creation of dump files that can be utilized across different databases. This enables data movement and integration between Oracle databases effectively.

