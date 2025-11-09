--Drop the table if it already exists
DROP TABLE IF EXISTS employees;
--Create the employees table
CREATE TABLE employees(
	 employee_id SERIAL PRIMARY KEY,
	 first_name VARCHAR(50) NOT NULL,
	 last_name VARCHAR(50) NOT NULL,
	 department VARCHAR(50),
	 salary DECIMAL(10,2) CHECK (salary > 0),
	 joining_date DATE NOT NULL,
	 age INT CHECK (age >= 18)
	);

 SELECT * FROM employees;

--insert data into employees table:
INSERT INTO employees(first_name,last_name,department,salary,joining_date,age)
VALUES
('Amit','Sharma','IT',60000.00,'2022-05-01',29),
('Neha','Patel','HR',55000.00,'2021-08-15',32),
('Ravi','Kumar','Finance',70000.00,'2020-03-10',35),
('Anjali','Verma','IT',65000.00,'2019-11-22',28),
('Suresh','Reddy','Operations',50000.00,'2023-01-10',26);

 SELECT * FROM employees;

--Qssignment Questions

--Q1:retrieve all employees first_names and their departments.
     SELECT first_name,department
	 from employees;

--Q2:Update the salary of all employees in the 'IT' department by increasing it by 10%.
    UPDATE employees
	SET salary = Salary+Salary*0.1
	WHERE department = 'IT';
 
SELECT * FROM employees;
	
  
--Q3:Delete all employees who are older than 34 years.
  DELETE From employees
  WHERE age>34;

--Q4:Add a new column 'email'to the employees table.
 ALTER Table employees
 add column email varchar(100);

--Q5:Rename the department colunmn to dept_name.
  ALTER Table employees
 RENAME column DEPARTMENT TO dept_name;

--Q6:Retrieve the names of employees who joined after january 1,2021.
Select first_name,last_name from employees
where joining_date > '2021-01-01';

SELECT * FROM employees;
	
--Q7;Change the data type of the salary column to integer.
ALTER table employees
alter column salary TYPE Integer;

--also write
ALTER table employees
alter column salary TYPE Integer using salary::integer; 

--Q8;List all employees with their age and salary in descending order of salary.
SELECT first_name,last_name,age,salary FROM employees
order by salary desc;

SELECT * FROM employees;
--Q9:Insert a new employee with the following details:'raj','singh','MARKETING',60000,'2023-09-15',30.
INSERT INTO employees(first_name,last_name,department,salary,joining_date,age)
values ('raj','singh','MARKETING',60000.00,'2023-09-15',30);


--Q10:Update age of employee +1 to every employee.
update employees
set age = age+1;



