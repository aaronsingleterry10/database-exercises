USE employees;
select * from employees;

-- # the list of employees that were hired in 1987-02-23
select * from employees where hire_date = 1987-02-23;

-- # all the employees that start with an F
select * from employees where first_name like 'F%';

-- # all the employees whose last name ends with ing
-- # all the employees with "in" somewhere in their first name
-- # all the employees that has an employee number between 12434 and 12440
-- # all employees hired in March
-- # all employees hired before February 7, 1991
-- # all employees with one of the following first names 'Elvis','Magy','Brendon'
-- # same results different approach
-- # DISTINCT
-- # Chained where clauses