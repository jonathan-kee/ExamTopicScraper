# Question 14
You own table DEPARTMENTS, referenced by views, indexes, and synonyms.
Examine this command which executes successfully:
DROP TABLE departments PURGE;
Which three statements are true? (Choose three.)


# Answers
A. It will remove the DEPARTMENTS table from the database.

B. It will drop all indexes on the DEPARTMENTS table.

C. It will remove all views that are based on the DEPARTMENTS table.

D. It will remove all synonyms for the DEPARTMENTS table.

E. Neither can it be rolled back nor can the DEPARTMENTS table be recovered.

F. It will delete all rows from the DEPARTMENTS table, but retain the empty table.

# Discussions
## Discussion 1
ABE. Note: Synoyms and views will get invalid, Indexes will be dropped along with the table and data will be purged and free space will be regained, dropped table can not be recovered even if you use flashback table command

## Discussion 2
ABE are correct. Views and synonyms are not dropped with the table

## Discussion 3
In ORACLE SQL, you own table DEPARTMENTS, referenced by views, indexes, and synonyms. Examine this command which executes successfully: DROP TABLE departments PURGE; Which three statements are true? (Choose three.) A. It will remove the DEPARTMENTS table from the database. (True) B. It will drop all indexes on the DEPARTMENTS table. (True) C. It will remove all views that are based on the DEPARTMENTS table. (False, it will not remove the views that are based on the DEPARTMENTS table) D. It will remove all synonyms for the DEPARTMENTS table. (False, it will not remove the synonyms for the DEPARTMENTS table) E. Neither can it be rolled back nor can the DEPARTMENTS table be recovered. (True) F. It will delete all rows from the DEPARTMENTS table, but retain the empty table. (False, it will delete all rows and the table itself)

## Discussion 4
ABE correct answers

## Discussion 5
ABE IS CORRECT.

