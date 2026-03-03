-- Day 30 SQL Project

-- Create Database
CREATE DATABASE OnlineBookstore;

-- Switch to the database
-- \c OnlineBookstore;

-- Create Tables
drop table if exists books;

CREATE TABLE Books (
    Book_ID SERIAL PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Genre VARCHAR(50),
    Published_Year INT,
    Price NUMERIC(10, 2),
    Stock INT
);

DROP TABLE IF EXISTS customers;
CREATE TABLE Customers (
    Customer_ID SERIAL PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    City VARCHAR(50),
    Country VARCHAR(150)
);

DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders (
    Order_ID SERIAL PRIMARY KEY,
    Customer_ID INT REFERENCES Customers(Customer_ID),
    Book_ID INT REFERENCES Books(Book_ID),
    Order_Date DATE,
    Quantity INT,
    Total_Amount NUMERIC(10, 2)
);

select * from Books;
select * from Customers;
select * from Orders;

-- Import Data into Books Table
COPY Books(Book_ID, Title, Author, Genre, Published_Year, Price, Stock) 
FROM 'C:/Users/HP/OneDrive/Desktop/SQL_Learning/study_ref/30 Day - SQL Practice Files/Books.csv' 
CSV HEADER;

COPY Customers(Customer_ID, Name, Email, Phone, City, Country)
FROM 'C:/Users/HP/OneDrive/Desktop/SQL_Learning/study_ref/30 Day - SQL Practice Files/Customers.csv'
CSV HEADER;

COPY Orders(Order_ID, Customer_ID, Book_ID, Order_Date, Quantity, Total_Amount)
FROM 'C:/Users/HP/OneDrive/Desktop/SQL_Learning/study_ref/30 Day - SQL Practice Files/Orders.csv'
CSV HEADER;

select * from Books;
select * from Customers;
select * from Orders;

-- 1) Retrieve all books in the "Fiction" genre:
select * from Books where genre = 'Fiction';

-- 2) Find books published after the year 1950:
select * from Books where published_year > 1950;

-- 3) List all customers from the Canada:
select * from Customers where country = 'Canada';

-- 4) Show orders placed in November 2023:
select * from Orders where order_date between '2023-11-01' and '2023-11-30';

-- 5) Retrieve the total stock of books available:
select sum(stock) as total_stock from books;

-- 6) Find the details of the most expensive book:
select book_id, title, price from books order by price desc limit 1;

-- 7) Show all customers who ordered more than 1 quantity of a book:
select * from orders where quantity > 1;

-- 8) Retrieve all orders where the total amount exceeds $20:
select * from orders where total_amount > 20;

-- 9) List all genres available in the Books table:
select distinct(genre) from books;

-- 10) Find the book with the lowest stock:
select * from books order by stock asc limit 1;

-- 11) Calculate the total revenue generated from all orders:
select sum(total_amount) as revenue from orders;

-- Advance Questions : 

-- 1) Retrieve the total number of books sold for each genre:

select * from orders;

select b.genre, sum(o.quantity) as total_sold
from books b join orders o 
on b.book_id = o.book_id
group by b.genre;

-- 2) Find the average price of books in the "Fantasy" genre:
select avg(price) 
from books
where genre = 'Fantasy';

-- 3) List customers who have placed at least 2 orders:
select * from Books;
select * from Customers;
select * from Orders;

select o.customer_id, c.name, count(order_id) as order_count
from orders o join customers c on o.customer_id = c.customer_id
group by o.customer_id, c.name
having count(order_id) > 2;

-- 4) Find the most frequently ordered book:

-- 5) Show the top 3 most expensive books of 'Fantasy' Genre :


-- 6) Retrieve the total quantity of books sold by each author:


-- 7) List the cities where customers who spent over $30 are located:


-- 8) Find the customer who spent the most on orders:



--9) Calculate the stock remaining after fulfilling all orders: