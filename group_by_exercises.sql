USE employees;

SELECT DISTINCT title FROM titles;

SELECT DISTINCT last_name FROM employees WHERE last_name LIKE 'e%e';

SELECT DISTINCT first_name, last_name FROM employees WHERE last_name LIKE 'e%e';

SELECT DISTINCT last_name FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

# SELECT first_name, last_name FROM employees GROUP BY first_name, last_name;

SELECT first_name, last_name, count(*) FROM employees
GROUP BY first_name, last_name ORDER BY count(*) DESC;

SELECT gender, COUNT(*) FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') GROUP BY gender;
