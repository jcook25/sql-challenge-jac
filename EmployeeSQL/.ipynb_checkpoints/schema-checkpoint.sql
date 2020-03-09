CREATE TABLE departments(
    dept_no VARCHAR(30),
    dept_name VARCHAR(30)
);

SELECT * FROM departments;

CREATE TABLE dept_emp(
	emp_no INT,
	dept_no VARCHAR(30),
	from_date VARCHAR(30),
	to_date VARCHAR(30)
);

SELECT * FROM dept_emp;

CREATE TABLE dept_manager(
 	dept_no VARCHAR(30),
	emp_no INT,
	from_date VARCHAR(30),
	to_date VARCHAR(30)
);
 
SELECT * FROM dept_manager;
 
CREATE TABLE employees(
	emp_no INT,
	birth_date VARCHAR(30),
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	gender VARCHAR(30),
	hire_date VARCHAR(30)
);
 
SELECT * FROM employees;
 
CREATE TABLE salaries(
 	emp_no INT,
 	salary INT,
	from_date VARCHAR(30),
 	to_date VARCHAR(30)
);
 
SELECT * FROM salaries;

CREATE TABLE titles(
 	emp_no INT,
 	title VARCHAR(30),
	from_date VARCHAR(30),
 	to_date VARCHAR(30)
);

SELECT * FROM titles;
