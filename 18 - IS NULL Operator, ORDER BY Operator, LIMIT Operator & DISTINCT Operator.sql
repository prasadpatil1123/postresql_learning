-- Day – 18 :IS NULL Operator, ORDER BY Operator, LIMIT Operator & DISTINCT Operator.

-- Q . Find employees where the email column is NULL (if applicable).

select * from users where email is null;

-- Q . List employees sorted by salary in descending order

select first_name, department, salary 
from employee3
order by salary ASC;

select first_name, department, salary 
from employee3
order by salary DESC;

-- Q . Retrieve the top 5 highest-paid employees.

select first_name, department, salary 
from employee3
order by salary DESC 
limit 5;

-- Q . Retrieve a list of unique departments

select distinct(department)
from employee3;

select count(distinct(department)) as count_of_unique_department
from employee3;