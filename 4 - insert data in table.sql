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


