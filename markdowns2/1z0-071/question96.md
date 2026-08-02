# Question 96
Which two are true about unused columns? (Choose two.)

# Answers
A. Setting an indexed column to unused results in an error.

B. You can query the data dictionary to see the names of unused columns.

CASCADE CONSTRAINTS must be specified when setting a column to unused if that column is referenced in a constraint on another column. E.

C. You can specify multiple column names in an ALTER TABLE...SET UNUSED statement.

D. If you set all the columns of a table to unused, the table is automatically dropped.

# Discussions
## Discussion 1
B C E are all correct according to Oracle "SET UNUSED Clause" https://docs.oracle.com/en/database/oracle/oracle-database/23/sqlrf/ALTER-TABLE.html#GUID-552E7373-BF93-477D-9DA3-B2C9386F2877

## Discussion 2
C and D

## Discussion 3
CE is correct you can see number of unused columns but not their names in the data dictionary

## Discussion 4
From Oracle documentation: You can view all tables with columns marked UNUSED in the data dictionary views USER_UNUSED_COL_TABS, DBA_UNUSED_COL_TABS, and ALL_UNUSED_COL_TABS. Source: https://docs.oracle.com/en/database/oracle/oracle-database/23/sqlrf/ALTER-TABLE.html

## Discussion 5
CE ARE CORRECT.

