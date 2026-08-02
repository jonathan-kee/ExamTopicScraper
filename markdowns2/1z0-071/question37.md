# Question 37
Which two statements are true about an Oracle database? (Choose two.)


# Answers
A column definition can specify multiple data types. B.

A NUMBER column without data has a zero value. E.

A table can have multiple foreign keys. C.

A table can have multiple primary keys. A.

A VARCHAR2 column without data has a NULL value. D.

# Discussions
## Discussion 1
Table can have multiple foreign Key: CREATE TABLE ENCOUNTER ( ENCT_ID VARCHAR2(25) PRIMARY KEY, ENCT_DATE DATE NOT NULL, PT_MRN NUMBER NOT NULL, ENCT_BP VARCHAR2(10) NOT NULL, ENCT_WT NUMBER(3,2) NOT NULL, ENCT_TEMP NUMBER(3) NOT NULL, ACCT_ID VARCHAR2(25) NOT NULL, PHX_ID VARCHAR2(25) NOT NULL, CONSTRAINT FK_PATIENT FOREIGN KEY (PT_MRN) REFERENCES PATIENT(PT_MRN) CONSTRAINT FK_ACCOUNT FOREIGN KEY (ACCT_ID) REFERENCES ACCOUNT(ACCT_ID) CONSTRAINT FK_PTHISTORY FOREIGN KEY (PHX_ID) REFERENCES PTHISTORY(PHX_ID));

## Discussion 2
CD is correct answer. PFB discussion link for same question https://www.examtopics.com/discussions/oracle/view/21762-exam-1z0-071-topic-2-question-64-discussion/

## Discussion 3
One pk and yeah if you dont insert anything in a row with a with a varchar datatype the value is null and not an empty string which i guess is what they're trying to trick you into?

