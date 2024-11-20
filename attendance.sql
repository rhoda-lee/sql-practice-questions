/* Exercise 1: School Attendance System
Create a new database called school_attendance.
Create a table named students with the following columns:
student_id (INT, Primary Key, Auto Increment)
first_name (VARCHAR(50), Not Null)
last_name (VARCHAR(50), Not Null)
date_of_birth (DATE)
email (VARCHAR(100), Unique, Not Null)
Insert three new students into the students table.
Show all the tables in the school_attendance database.
Select and display all rows from the students table. */

CREATE DATABASE IF NOT EXISTS school_attendance;

SHOW DATABASES;
USE school_attendance;

CREATE TABLE IF NOT EXISTS students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE,
    email VARCHAR(100) UNIQUE NOT NULL
);

SHOW TABLES;

INSERT INTO students (first_name, last_name, date_of_birth, email)
VALUES ('Rhoda', 'Oduro-Nyarko', '2002-04-01', 'rhodalee.dev@gmail.com'), 
('Nana Afua Antwiwaa', 'Conduah', '2005-03-15', 'anaconduah@gmail.com'), 
('Matilda', 'Baffah', '2002-05-21', 'mbaffah@gmail.com');

SHOW TABLES;

SELECT * FROM students;
