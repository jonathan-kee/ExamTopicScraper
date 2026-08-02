# Question 232
You create a table by using this command:

CREATE TABLE rate_list (rate NUMBER(6,2));

Which two are true about executing statements? (Choose two.)

# Answers
A. INSERT INTO rate_list VALUES (0.999) produces an error.

B. INSERT INTO rate_list VALUES (-.9) inserts the value as -.9.

C. INSERT INTO rate_list VALUES (87654.556) inserts the value as 87654.6.

D. INSERT INTO rate_list VALUES (-10) produces an error.

E. INSERT INTO rate_list VALUES (-99.99) inserts the value as 99.99.

F. INSERT INTO rate_list VALUES (0.551) inserts the value as .55.

# Discussions
## Discussion 1
BF ARE CORRECT

## Discussion 2
B,F tested

## Discussion 3
B and F are correct https://www.examtopics.com/discussions/oracle/view/8436-exam-1z0-071-topic-1-question-276-discussion/

## Discussion 4
100% BF correct. Have a try. CREATE TABLE rate_list (rate NUMBER(6,2)); INSERT INTO rate_list VALUES (0.999); select * from rate_list; INSERT INTO rate_list VALUES (-.9); select * from rate_list; INSERT INTO rate_list VALUES (87654.556); select * from rate_list; INSERT INTO rate_list VALUES (-10); select * from rate_list; INSERT INTO rate_list VALUES (-99.99); select * from rate_list; INSERT INTO rate_list VALUES (0.551); select * from rate_list;

## Discussion 5
BF correct

