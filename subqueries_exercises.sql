USE employees;
SELECT * FROM employees;
# Find all the employees with the same hire date as employee 101010 using a subquery.

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE hire_date = (
    SELECT hire_date
    FROM employees
    WHERE emp_no = '101010'
    );
# 69 Rows
SELECT * FROM titles;
SELECT * FROM dept_emp;
# Find all the titles held by all employees with the first name Aamod.
SELECT title
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
    );
# 314 total titles, 6 unique titles

# Find all the current department managers that are female.

SELECT * FROM dept_manager;

SELECT first_name AS first_name, last_name AS last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date > NOW()
    )
AND gender = 'F';
# Find all the department names that currently have female managers.
SELECT * FROM dept_emp;
SHOW CREATE TABLE dept_emp;
SELECT * FROM departments;
SELECT * FROM dept_manager;

SELECT dept_name
FROM departments
WHERE dept_no IN (
    SELECT dept_no
    FROM dept_manager
    WHERE emp_no IN (
        SELECT emp_no
        FROM employees
        WHERE gender = 'F'
        )
    AND to_date > NOW()
    );

# Find the first and last name of the employee with the highest salary.
SELECT * FROM salaries;

SELECT emp_no, salary
FROM salaries
WHERE to_date = '9999-01-01'
ORDER BY salary DESC
LIMIT 1;

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM salaries
    WHERE to_date = '9999-01-01'
    AND salary = (
        SELECT MAX(salary)
        FROM salaries
        )
    );

SELECT *
FROM employees
WHERE emp_no = '10001';

