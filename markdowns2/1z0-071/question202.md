# Question 202
Which two statements cause changes to the data dictionary? (Choose two.)

# Answers
A. DELETE FROM scott.emp;

ALTER SESSION SET NLS_DATE_FORMAT = ‘DD/MM/YYYY’; B.

C. GRANT UPDATE ON scott.emp TO fin manager;

D. SELECT * FROM user_tab_prive;

E. TRUNCATE TABLE emp;

# Discussions
## Discussion 1
C, E are correct. Truncate is DDL and it modifies the data dictionary. https://forums.oracle.com/ords/apexds/post/why-is-truncate-ddl-and-not-dml-7859 https://forums.oracle.com/ords/apexds/post/does-truncate-table-generate-undo-4231

## Discussion 2
B,C correct. https://docs.oracle.com/cd/B10501_01/server.920/a96524/c05dicti.htm

## Discussion 3
C and E are correct

## Discussion 4
CE in my opinion

## Discussion 5
C and E correct , GRANT and TRUNCATE are DDL

