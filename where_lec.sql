USE employees;
select * from employees;

-- # the list of employees that were hired in 1987-02-23
select * from employees where hire_date = 1987-02-23;

-- # all the employees that start with an F
select * from employees where first_name like 'F%';

-- # all the employees whose last name ends with ing
select * from employees where last_name like '%ing';

-- # all the employees with "in" somewhere in their first name
select * from employees where first_name like '%in%';

-- # all the employees that has an employee number between 12434 and 12440
select * from employees where emp_no between 12434 and 12440;

-- # all employees hired in March
select * from employees where hire_date like '%-03-%';

-- # all employees hired before February 7, 1991
select * from employees where hire_date < '1991-02-07';

-- # all employees with one of the following first names 'Elvis','Magy','Brendon'
select * from employees where first_name IN ('Elvis', 'Magy', 'Brendon');

-- # same results different approach
select * from employees where first_name = 'Elvis' or first_name = 'Magy' or first_name = 'Brendon';

-- # DISTINCT
select distinct first_name from employees;
select distinct last_name from employees;
select distinct first_name, last_name from employees;

-- # Chained where clauses
select * from employees where first_name like '%f' or last_name like 'P%';