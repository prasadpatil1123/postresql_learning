-- day 14   Aggregate function

select * from employee3;

select first_name, salary, (salary * 0.1) as Bonus
from employee3;

-- calculate annual salary

select first_name, last_name, salary,
		(salary * 12) as annual_salary,
		(salary * 0.05) as increment_amount,
		(salary * 1.05) as new_salary
from employee3;