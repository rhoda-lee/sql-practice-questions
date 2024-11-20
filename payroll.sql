/* Exercise 2: Company Payroll System
Create a new database called company_payroll.
Create a table named employees with the following columns:
employee_id (INT, Primary Key, Auto Increment)
first_name (VARCHAR(50), Not Null)
last_name (VARCHAR(50), Not Null)
position (VARCHAR(50))
salary (FLOAT)
hire_date (DATE)
Insert four new employees into the employees table.
Update the salary of one employee.
Select and display all rows from the employees table. */

CREATE DATABASE IF NOT EXISTS company_payroll;

SHOW DATABASES;
USE company_payroll;

CREATE TABLE IF NOT EXISTS employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    position VARCHAR(50) NOT NULL,
    salary FLOAT,
    hire_date DATE
);

SHOW TABLES;

INSERT INTO employees (first_name, last_name, position, salary, hire_date)
VALUES ('Alex', 'Quao', 'Manager', 98000, '2022-04-28'),
('Mark', 'Johnson', 'Procurement Intern', 8000, '2024-07-13'),
('Mina', 'Sey', 'Software Engineer', 120000, '2020-02-25'),
('Amina', 'Adams', 'Executive Director', 230000, '2016-09-03');

SELECT * FROM employees;

UPDATE employees
SET salary = 500
WHERE employee_id = 2;

SELECT * FROM employees;


