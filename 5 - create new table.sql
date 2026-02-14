-- day 3 --
drop table employee;

create table employee(
	emp_id serial primary key,
	emp_name varchar(50) not null,
	position varchar(50) ,
	department varchar(50) ,
	hire_date date,
	salary numeric(10,2)
);

select * from employee;

-- day 4 

insert into employee 
( emp_name, position, department, hire_date, salary) 
	values
('Prasad Patil', 'developer', 'IT','9-05-2026',60000.20),
('Kashi Patil', 'Support', 'Service','7-10-2026',30000.20),
('Prasad Sharma', 'Python', 'dev','12-11-2026',70000.20),
('Balaji Bonthu', 'Engineer', 'design', '4-19-2026',50000.20);
--insert into employee (emp_name, salary, dept_name)
--values ('Prasad Patil', 60000, 'IT');

alter table employee
rename column emp_name to name;

truncate table employee;

select * from employee;

insert into employee 
( name, position, department, hire_date, salary) 
	values
('Prasad Patil', 'developer', 'IT','9-05-2026',60000.20),
('Kashi Patil', 'Support', 'Service','7-10-2026',30000.20),
('Prasad Sharma', 'Python', 'dev','12-11-2026',70000.20),
('Balaji Bonthu', 'Engineer', 'design', '4-19-2026',50000.20);


select * from employee;

truncate table employee restart identity;

-- day 5 

create table employee2(
	emp_id int primary key,
	emp_name varchar(50) not null,
	position varchar(50),
	department varchar(50),
	hire_date date,
	salary numeric(50,2)
);

select * from employee2;


insert into employee2 (emp_id, emp_name, position, department, hire_date, salary)
values
(101,'Hitesh', 'senior', 'infra', '2023-12-09', 25000.00),
(102,'Kunal', 'junior', 'voice', '2024-2-11', 20000.00),
(103,'Aman', 'senior', 'mails', '2022-03-15', 17000.00),
(104,'Rehman', 'senior', 'infra', '2020-12-13', 30000.00),
(105,'Teajs', 'senior', 'infra', '2021-06-18', 22000.00);

drop table if exists employee2;

delete from employee2
where emp_id = 101;

alter table employee2
drop column salary;


