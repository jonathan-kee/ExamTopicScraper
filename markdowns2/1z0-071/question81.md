# Question 81
Examine this business rule:

Each student can work on multiple projects and each project can have multiple students.

You must design an Entity Relationship (ER) model for optimal data storage and allow for generating reports in this format:

STUDENT_ID FIRST_NAME LAST_NAME PROJECT_ID PROJECT_NAME PROJECT_TASK

Which two statements are true? (Choose two.)

# Answers
An associative table must be created with a composite key of STUDENT_ID and PROJECT_ID, which is the foreign key linked to the students and projects entities. C.

A. PROJECT_ID must be the primary key in the PROJECTS entity and foreign key in the STUDENTS entity.

B. STUDENT_ID must be the primary key in the STUDENTS entity and foreign key in the projects entity.

D. The ER must have a many-to-many relationship between the STUDENTS and PROJECTS entities that must be resolved into one-to-many relationships.

E. The ER must have a one-to-many relationship between the STUDENTS and PROJECTS entities.

# Discussions
## Discussion 1
https://www.examtopics.com/discussions/oracle/view/15644-exam-1z0-071-topic-1-question-17-discussion/

## Discussion 2
Why B incorrect?

