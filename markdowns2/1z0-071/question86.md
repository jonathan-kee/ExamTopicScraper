# Question 86
You execute this query:

SELECT TO_CHAR(NEXT_DAY(LAST_DAY(SYSDATE), 'MON'), 'dd "Monday for" fmMonth rrrr')
FROM DUAL;

What is the result?

# Answers
A. It executes successfully but does not return any result.

B. It returns the date for the first Monday of the next month.

C. It returns the date for the last Monday of the current month.

D. It generates an error.

# Discussions
## Discussion 1
Answer is B. Tested.

## Discussion 2
B. It returns the date for the first Monday of the next month. Explanation: LAST_DAY(SYSDATE): This function returns the last day of the current month. NEXT_DAY(LAST_DAY(SYSDATE), 'MON'): This function returns the next Monday after the date provided (which in this case is the last day of the current month). Since the last day of the current month is used, NEXT_DAY will return the first Monday of the next month. TO_CHAR(..., 'dd "Monday for" fmMonth rrrr'): This formats the date to display the day (dd), followed by the string "Monday for", followed by the full month name (with fm removing any leading spaces), and finally the year (rrrr). Thus, the query returns the date for the first Monday of the next month formatted as specified.

## Discussion 3
There should be 'Monday' instead of 'MON'

## Discussion 4
B correct. D is wrong. output is "06 Monday for May 2024"

