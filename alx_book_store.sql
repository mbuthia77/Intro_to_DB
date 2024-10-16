CREATE DATABASE alx_book_store;

USE alx_book_store;

CREATE TABLE Books (book_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
title VARCHAR (130), 
author_id INT NOT NULL,
price DOUBLE,
publication_date DATE
);

CREATE TABLE Authors (author_id  INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
author_name VARCHAR(215)
); 

Create table Customers (customer_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
customer_name VARCHAR(215),
email VARCHAR(215),
address TEXT
);

CREATE TABLE Orders (order_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
customer_id INT NOT NULL,
order_date DATE
); 

CREATE TABLE Order_Details ( orderdetailid INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
order_id INT NOT NULL,
book_id INT NOT NULL,
quantity DOUBLE
); 