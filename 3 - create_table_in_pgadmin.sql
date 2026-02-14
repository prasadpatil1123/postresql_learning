-- day 3 --
drop table employee;

create table employee(
	emp_id serial primary key,
	emp_name varchar(50) not null,
	salary int,
	dept_name varchar(50) not null
);

select * from employee;

