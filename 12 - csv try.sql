-- day 12

drop table if exists employee3;

	create table employee3(
	employee_id	serial	primary key,
	first_name	varchar(50)	not null,
	last_name	varchar(50)	not null,
	department	varchar(50)	not null,
	salary	numeric(10,2),	
	joining_date	date,	
	age	int	
	)

select * from employee3;

copy 
employee3(employee_id, first_name, last_name, department, salary, joining_date, age)
from
'C:/Users/HP/OneDrive/Desktop/SQL_Learning/employee_data.csv'
delimiter ','
csv header;
