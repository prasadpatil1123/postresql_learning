-- day 19 Set Operators

drop table if exists student_2023;

create table if not exists student_2023(
student_id int primary key,
student_name varchar(50),
course varchar(50)
)
select * from student_2023;

insert into student_2023(student_id, student_name, course) values 
(1, 'Aarav Sharma', 'Computer Science'),
(2, 'Ishita Verma', 'Mechanical Engineering'),
(3, 'Kabir Patel', 'Electronics'),
(4, 'Ananya Desai', 'Civil Engineering'),
(5, 'Rahul Gupta', 'Computer Science');

drop table if exists student_2024;

create table if not exists student_2024(
student_id int primary key,
student_name varchar(50),
course varchar(50)
)

select * from student_2024;

insert into student_2024(student_id, student_name, course) values 
(3, 'Kabir Patel', 'Electronics'),   -- Same as students_2023
(4, 'Ananya Desai', 'Civil Engineering'), -- Same as students_2023
(6, 'Meera Rao', 'Computer Science'),
(7, 'Vikram Singh', 'Mathematics'),
(8, 'Sanya Kapoor', 'Physics');


-- union -- combine results, remove duplicates

select student_name, course
from student_2023
union
select student_name, course
from student_2024;

-- union all -- combine results, keep duplicates

select student_name, course
from student_2023
union all
select student_name, course
from student_2024;

-- intersect -- return common results in both tables

select student_name, course
from student_2023
intersect
select student_name, course
from student_2024;

-- Except -- returns results in first table but not in second table

select student_name, course
from student_2023
except
select student_name, course
from student_2024;

