-- day 10

select * from users order by user_id asc;

alter table users rename username to first_name;

alter table users 
alter column age 
type smallint;

alter table users
alter column city
set not null;

alter table users 
add constraint age
check (age >= 18 );

alter table users 
drop constraint age;

	insert into users(first_name, email, age, city) values 
	('Anushka', 'anushka@gmail.com', 24, 'Thane');

select * from users order by user_id asc;
	