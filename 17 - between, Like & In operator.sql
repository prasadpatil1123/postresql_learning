-- Day 17 between, Like & In operator

-- Q . Retrieve employees whose salary is between 40,000 and 60,000

select * from employee3;

select first_name, department, salary from employee3 where salary between 40000 and 60000;

-- Q . Find employees whose email addresses end with gmail.com

select * from users;

select first_name, email from users where email like '%gmail.com';

-- Q . Retrieve employees who belong to either the 'Finance' or 'Marketing' departments.

select first_name , department from employee3 where department in ( 'Finance', 'Marketing', 'IT' );