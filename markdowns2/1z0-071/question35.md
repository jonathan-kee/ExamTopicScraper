# Question 35
Which two are true about granting object privileges on tables, views, and sequences? (Choose two.)


# Answers
A. INSERT can be granted only on tables and sequences.

ALTER can be granted only on tables and sequences. D.

B. DELETE can be granted on tables, views, and sequences.

C. SELECT can be granted on tables, views, and sequences.

E. REFERENCES can be granted only on tables.

# Discussions
## Discussion 1
The following OBJECT PRIV'S can be granted on tables, views and sequences--- UPDATE: tables, views. REFERENCES: tables, views ALTER: tables, sequences. SELECT: tables, views, sequences

## Discussion 2
CE, according to this site: https://docs.oracle.com/database/121/TTSQL/privileges.htm#TTSQL338 A. INSERT can be granted only on tables and sequences. (FALSE, table + synonym) B. DELETE can be granted on tables, views, and sequences. (FALSE, only table) C. SELECT can be granted on tables, views, and sequences. (TRUE) D. ALTER can be granted only on tables and sequences. (FALSE, ALTER is system priv. not object) E. REFERENCES can be granted only on tables. (TRUE, tables + materialised views, which are different than 'normal' views)

## Discussion 3
UPDATE: tables, views. REFERENCES: tables, views ALTER: tables, sequences. SELECT: tables, views, sequences. DELETE: tables, views. INSERT: tables, views. Doc: https://docs.oracle.com/en/database/oracle/oracle-database/23/sqlrf/GRANT.html#GUID-20B4E2C0-A7F8-4BC8-A5E8-BE61BDC41AC3__BGBCIIEG

## Discussion 4
Object Privilege Table SELECT, INSERT, UPDATE, DELETE, REFERENCES, ALTER, DROP, INDEX View SELECT, INSERT, UPDATE, DELETE, ALTER, DROP Sequence SELECT, USAGE

## Discussion 5
C and D

