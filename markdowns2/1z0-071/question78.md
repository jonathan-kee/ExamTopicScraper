# Question 78
You have been tasked to create a table for a banking application.
One of the columns must meet three requirements:
1) Be stored in a format supporting date arithmetic without using conversion functions
2) Store a loan period of up to 10 years
3) Be used for calculating interest for the number of days the loan remains unpaid
Which data type should you use?


# Answers
A. INTERVAL YEAR TO MONTH

B. TIMESTAMP WITH TIMEZONE

C. INTERVAL DAY TO SECOND

D. TIMESTAMP WITH LOCAL TIMEZONE

E. TIMESTAMP

# Discussions
## Discussion 1
C is correct because of 3rd condition: 'Be used for calculating interest for the number of days the loan remains unpaid'

## Discussion 2
C. The data type of each column returned by the second query must be implicitly convertible to the data type of the corresponding column returned by the first query. The data types must be implicitly convertible between corresponding columns. For example: A NUMBER column in the first query can correspond to a VARCHAR column in the second query, provided Oracle can implicitly convert the VARCHAR to a NUMBER. E. The number, but not names, of columns must be identical for all select statements in the query. All queries in a UNION, INTERSECT, or MINUS statement must return the same number of columns, but the column names do not have to match.

## Discussion 3
C is correct.

## Discussion 4
C is correct because it fulfill all the condition. 1) store without conversion 2) store up to 99 years and 11 month 3) can be use for calculation

## Discussion 5
The INTERVAL DAY TO SECOND data type is used to store a period of time in terms of days, hours, minutes, and seconds. It does not support storing a loan period of up to 10 years, as it does not have a year component. To meet the requirements of storing a loan period of up to 10 years and supporting date arithmetic without using conversion functions, you should use the INTERVAL YEAR TO MONTH data type instead. This data type allows you to store a period of time in terms of years and months, which aligns with the requirement of storing a loan period.

