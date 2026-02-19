-- Day 16 Logical operators in SQL

-- Operator         Descriptions
--	AND              both condition are true / All condition must be true
--   OR              Aleast one condition must be true
--   NOT             Negates the conditions



select * from employee3;

select * from employee3 
where age >= 60 AND salary > 90000;

select * from employee3 
where age >= 60 OR salary > 90000;

select * from employee3 
where not (department = 'IT');

select * from employee3 
where (department = 'IT');