-- Day 6 Data Type

create table users(
	user_id int primary key,
	name varchar(50) not null,
	email varchar(50) unique,
	age integer check (age >= 18),
	reg_date timestamp default current_timestamp	
);

select * from users;

insert into users(user_id, name, email, age)
values (1, 'kashi', 'kashi@ril.com',23 );

insert into users(user_id, name, email, age)
values (3, 'kashi', 'kashi2@ril.com',17 );