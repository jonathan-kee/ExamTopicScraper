# Question 171
Examine this incomplete query:

SELECT DATE '2019-01-01' +FROM DUAL;

Which three clauses can replace

# Answers
A. INTERVAL '0.5' DAY

B. INTERVAL '720' MINUTE

C. INTERVAL '11:60' HOUR TO MINUTE

D. INTERVAL '12:00' HOUR TO SECOND

E. INTERVAL '0 12' DAY TO HOUR

F. INTERVAL '12' HOUR

# Discussions
## Discussion 1
/*A NOOK*/ select date'2019-01-01' + interval '0.5' day from dual; /*01867. 00000 - "the interval is invalid" *Cause: The character string you specified is not a valid interval. *Action: Please specify a valid interval.*/ /*B OK*/ select date'2019-01-01' + interval '720' MINUTE from dual; /*C NOOK*/ select date'2019-01-01' + interval '11:60' HOUR TO MINUTE from dual; /*ORA-01851: los minutos deben estar comprendidos entre 0 y 59 01851. 00000 - "minutes must be between 0 and 59"*/ /*D NOOK*/ select date'2019-01-01' + interval '12:00' HOUR TO SECOND from dual; /*ORA-01867: el intervalo no es válido 01867. 00000 - "the interval is invalid" *Cause: The character string you specified is not a valid interval.*/ /*E OK*/ select date'2019-01-01' + interval '0 12' DAY TO HOUR from dual; /*F OK*/ select date'2019-01-01' + interval '12' HOUR from dual;

## Discussion 2
The correct answer is BEF

## Discussion 3
BEF is true

## Discussion 4
b e f are true

## Discussion 5
BEF are correct ones

