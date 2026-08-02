# Question 247
Which three statements are true about built-in data types? (Choose three.)

# Answers
A BFILE stores unstructured binary data in operating system files. F.

A BLOB stores unstructured binary data within the database. E.

A CHAR column definition does not require the length to be specified. D.

A. The default length for a CHAR column is always one character.

A VARCHAR2 blank-pads column values only in the data stored is non-numeric and contains no special characters. B.

A VARCHAR2 column definition does not require the length to be specified. C.

# Discussions
## Discussion 1
DEF for me, CHAR default is 1 byte, we can use: CREATE TABLE tmp (col CHAR);

## Discussion 2
Answer is A,E,F

## Discussion 3
Yes, you can create a table in ORACLE without specifying the length in CHAR column. D is right.

## Discussion 4
A is incorrect because of the word "always".

## Discussion 5
If you do not specify a qualifier, the value of the NLS_LENGTH_SEMANTICS parameter of the session creating the column defines the length semantics, unless the table belongs to the schema SYS, in which case the default semantics is BYTE.

