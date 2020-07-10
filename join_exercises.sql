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
JOIN departments d on dept_manager.dept_no = d.dept_no
WHERE dept_manager.to_date = '9999-01-01';

SELECT * FROM dept_manager;
SELECT * FROM departments;
SELECT * FROM employees;