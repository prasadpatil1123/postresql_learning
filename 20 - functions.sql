-- Day 20 functions

drop table if exists products;

create table if not exists products(
	product_id serial primary key,
	product_name varchar(100),
	category varchar(50),
	price numeric(10,2),
	quantity int,
	added_date date,
	discount_rate numeric(5,2)
);

INSERT INTO products (product_name, category, price, quantity, added_date, discount_rate) VALUES
('Laptop', 'Electronics', 75000.50, 10, '2024-01-15', 10.00),
('Smartphone', 'Electronics', 45000.99, 25, '2024-02-20', 5.00),
('Headphones', 'Accessories', 1500.75, 50, '2024-03-05', 15.00),
('Office Chair', 'Furniture', 5500.00, 20, '2023-12-01', 20.00),
('Desk', 'Furniture', 8000.00, 15, '2023-11-20', 12.00),
('Monitor', 'Electronics', 12000.00, 8, '2024-01-10', 8.00),
('Printer', 'Electronics', 9500.50, 5, '2024-02-01', 7.50),
('Mouse', 'Accessories', 750.00, 40, '2024-03-18', 10.00),
('Keyboard', 'Accessories', 1250.00, 35, '2024-03-18', 10.00),
('Tablet', 'Electronics', 30000.00, 12, '2024-02-28', 5.00);


select * from products;

-- Total Quantity Available of all products

select sum(quantity) as total_qty
from products;

select sum(quantity) as total_qty_Electronics
from products
where category = 'Electronics' and price > 20000;

-- Total number of products

select count(*) as product_count
from products;

-- count with condition

select count(*) as product_count
from products
where product_name like '%phone%';

-- Average Price of Products

select * from products;
select avg(price) as product_price
from products;

-- Average Price of Products with condition

select avg(price) as product_price
from products
where category = 'Accessories' or added_date = '2024-02-01';

-- Maximum and Minimum price

select max(price) as max_price, min(price) as min_price
from products;