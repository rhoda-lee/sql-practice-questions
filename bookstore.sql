/* Exercise 3: Online Bookstore
Create a new database called online_bookstore.
Create a table named books with the following columns:
book_id (INT, Primary Key, Auto Increment)
title (VARCHAR(200), Not Null)
author (VARCHAR(100), Not Null)
genre (VARCHAR(50))
price (FLOAT, Not Null)
stock_quantity (INT, Not Null)
Insert five new books into the books table.
Delete a book with a specific book_id.
Select and display all rows from the books table. */

CREATE DATABASE IF NOT EXISTS online_bookstore;

SHOW DATABASES;
USE online_bookstore;

CREATE TABLE IF NOT EXISTS books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(200) NOT NULL,
    author VARCHAR(100) NOT NULL,
    genre VARCHAR(50),
    price FLOAT NOT NULL,
    stock_quantity INT NOT NULL
);

SHOW TABLES;

INSERT INTO books (title, author, genre, price, stock_quantity)
VALUES ('In The Middle of Nowhere', 'Ruby Yayra Goka', 'Mystery', 50, 300),
('Gifted Hands', 'Benjamin carson','Thriller', 50, 300),
('Animal Farm', 'George Owens', 'Animation', 65.99, 175),
('When I was a girl', 'Rhoda Lee', 'Drama', 80, 500),
('Pride and Prejudice', 'Jane Austeen', 'Fiction', 90, 1500);

SELECT * FROM books;

DELETE FROM books
WHERE title = 'Animal Farm';

SELECT * FROM books;

