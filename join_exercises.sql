# DROP DATABASE IF EXISTS join_test_db;
#
# CREATE DATABASE IF NOT EXISTS join_test_db;
#
# USE join_test_db;
#
# CREATE TABLE roles
# (
#     id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
#     name VARCHAR(100) NOT NULL,
#     PRIMARY KEY (id)
# );
#
# CREATE TABLE users
# (
#     id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
#     name    VARCHAR(100) NOT NULL,
#     email   VARCHAR(100) NOT NULL,
#     role_id INT UNSIGNED DEFAULT NULL,
#     PRIMARY KEY (id),
#     FOREIGN KEY (role_id) REFERENCES roles (id)
# );
#
# INSERT INTO roles (name)
# VALUES ('admin');
# INSERT INTO roles (name)
# VALUES ('author');
# INSERT INTO roles (name)
# VALUES ('reviewer');
# INSERT INTO roles (name)
# VALUES ('commenter');
#
# INSERT INTO users (name, email, role_id)
# VALUES ('susan', 'susy@email.com', 2),
#        ('jake', 'jake@email.com', 2),
#        ('steve', 'steve@emal.com', 2),
#        ('drew', 'drew@email.com', null);
#
# SELECT users.name AS user_name, roles.name AS role_name
# FROM users
# JOIN roles ON users.role_id = roles.id;
#
# SELECT users.name AS user_name, roles.name AS role_name
# FROM users
# LEFT JOIN roles ON users.role_id = roles.id;
#
# SELECT users.name AS user_name, roles.name AS role_name
# FROM users
# RIGHT JOIN roles ON users.role_id = roles.id;
USE employees;

SELECT dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager'
FROM dept_manager
JOIN employees ON employees.emp_no = dept_manager.emp_no
JOIN departments on dept_manager.dept_no = departments.dept_no
WHERE dept_manager.to_date = '9999-01-01';

SELECT * FROM dept_manager;
SELECT * FROM departments;
SELECT * FROM employees;

SELECT dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager'
FROM dept_manager
JOIN employees ON employees.emp_no = dept_manager.emp_no
JOIN departments ON dept_manager.dept_no = departments.dept_no
WHERE dept_manager.to_date = '9999-01-01' AND employees.gender = 'F';

SELECT * FROM titles;
SELECT * FROM departments;
SELECT * FROM employees;
SELECT * FROM dept_emp;

SELECT t.title AS Title, COUNT(*) AS Count
FROM departments
JOIN dept_emp de on departments.dept_no = de.dept_no
JOIN titles t on de.emp_no = t.emp_no
WHERE departments.dept_name = 'Customer Service' AND t.to_date = '9999-01-01' AND de.to_date = '9999-01-01'
GROUP BY title;

select * from salaries;

SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Name', salaries.salary
FROM departments
JOIN dept_manager dm on departments.dept_no = dm.dept_no
JOIN employees ON employees.emp_no = dm.emp_no
JOIN salaries ON salaries.emp_no = employees.emp_no
WHERE salaries.to_date = '9999-01-01' AND dm.to_date = '9999-01-01'
ORDER BY dept_name;

# Bonus Find the names of all current employees, their department name, and their current manager's name.

#     240,124 Rows
#     Employee Name | Department Name  |  Manager Name
#     --------------|------------------|-----------------
#      Huan Lortz   | Customer Service | Yuchang Weedman
#      .....
SELECT * FROM departments;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM dept_emp;
SELECT CONCAT(emp.first_name, ' ', emp.last_name) AS 'Employee Name', d.dept_name AS 'Department Name', CONCAT(emp2.first_name, ' ', emp2.last_name)
FROM employees AS emp
JOIN dept_emp AS de ON emp.emp_no = de.emp_no
JOIN departments d on de.dept_no = d.dept_no
JOIN dept_manager dm on d.dept_no = dm.dept_no
JOIN employees emp2 on de.emp_no = emp2.emp_no
WHERE de.to_date = '9999-01-01' AND dm.to_date = '9999-01-01';

SHOW DATABASES;
