# Question 90
Examine the description of the EMPLOYEES table:


![](../../images/image4.png)
		

Which two statements will insert a row into the EMPLOYEES table? (Choose two.)

# Answers
A. INSERT INTO employees VALUES (101, 'John', 'Smith', 12000, SYSDATE);

B. INSERT INTO employees VALUES (101, 'John', 'Smith', 10, 12000, SYSDATE);

C. INSERT INTO employees (employee_id, salary, first_name, hiredate, last_name) VALUES (101, 12100, 'John', SYSDATE, 'Smith');

D. INSERT INTO employees (employee_id, first_name, last_name, salary, hiresate)

E. INSERT INTO employees SELECT 101, 'John', 'Smith', 12000, (SELECT SYSDATE FROM dual), 10 FROM dual;

F. INSERT INTO employees VALUES (101, 'John', ' ', 12000, SYSDATE, 10);

 INSERT INTO employees (employee_id, first_name, last_name, salary, hiresate)
VALUES ( (SELECT 101, 'John', 'Smith'. 12000, SYSDATE FROM dual) );

 VALUES ( (SELECT 101, 'John', 'Smith'. 12000, SYSDATE FROM dual) );

# Discussions
## Discussion 1
i am finding 3 that are correct. CEF

## Discussion 2
I think it’s CE ?

## Discussion 3
CEF are corret. I checked in data base.

## Discussion 4
CF is correct. in F, if have space between ' ' for last Name, it will be accepted. if there is no space, then not null constraint will apply.

## Discussion 5
C E are correct. F would be ok whith an space between ' '. If you copy and paste the exact alternative from here, it works, but I imagine that the exam doesn't have that space and that's why the're only two correct options.

