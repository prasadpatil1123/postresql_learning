-- Day 28 joins Part A

CREATE TABLE Employees3 (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT
);

-- Insert Data into Employees
INSERT INTO Employees3 (first_name, last_name, department_id)
VALUES
('Rahul', 'Sharma', 101),
('Priya', 'Mehta', 102),
('Ankit', 'Verma', 103),
('Simran', 'Kaur', NULL),
('Aman', 'Singh', 101);

select * from Employees3;

-- Create Departments Table
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

-- Insert Data into Departments
INSERT INTO Departments (department_id, department_name)
VALUES
(101, 'Sales'),
(102, 'Marketing'),
(103, 'IT'),
(104, 'HR');

select * from Departments;

select e.employee_id, e.first_name, e.last_name, d.department_id, d.department_name
from Employees3 e inner join Departments d on 
e.department_id = d.department_id;

select e.employee_id, e.first_name, e.last_name, d.department_id, d.department_name
from Employees3 e left join Departments d on 
e.department_id = d.department_id;

select e.employee_id, e.first_name, e.last_name, d.department_id, d.department_name
from Employees3 e right join Departments d on 
e.department_id = d.department_id;

-- Day 29 Joins Part B

select e.employee_id, e.first_name, e.last_name, d.department_id, d.department_name
from Employees3 e full outer join Departments d on 
e.department_id = d.department_id;

select  e.first_name, e.last_name,
		d.department_id, d.department_name
from Employees3 e
	cross join
     Departments d;

select  e1.first_name as employee_1,
		e2.first_name as employee_2,
		d.department_name
from Employees3 e1 join Employees3 e2 
on e1.employee_id != e2.employee_id and e1.department_id = e2.department_id
	 join
     Departments d
	 on e1.department_id = d.department_id;
	 

