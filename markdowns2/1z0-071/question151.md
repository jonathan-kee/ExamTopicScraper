# Question 151
Which two queries return the string Hello! We're ready? (Choose two.)

# Answers
A. SELECT "Hello! We're ready" FROM DUAL;

B. SELECT 'Hello! We're ready' FROM DUAL;

C. SELECT q'!Hello! We're ready!' FROM DUAL;

D. SELECT q'[Hello! We're ready]' FROM DUAL;

E. SELECT 'Hello! We\'re ready’ ESCAPE '\' FROM DUAL;

# Discussions
## Discussion 1
A - ORA-00904 ERROR. B - ORA-00923 ERROR. C - Hello! We're ready D - Hello! We're ready E - ORA-00923 So correct: CD. I'm not sure what kind of Oracle Compiling tools use the people from other comments, but these are definitely the correct answers using Oracle Developer...

## Discussion 2
100% C and D

## Discussion 3
CD is the correct answer

## Discussion 4
DE is correct answer

## Discussion 5
C D are correct

