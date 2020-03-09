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

-- epilogue --
select emp_no, first_name, last_name from employees
where emp_no = 499942;

-- #1 --
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary 
FROM employees AS e
JOIN salaries AS s 
ON e.emp_no = s.emp_no;

-- #2 --
SELECT * FROM employees
WHERE hire_date LIKE '1986%';

-- #3 --
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, de.from_date, de.to_date
FROM dept_manager AS dm
JOIN departments AS d
ON dm.dept_no = d.dept_no
JOIN employees AS e
ON dm.emp_no = e.emp_no
JOIN dept_emp AS de
ON dm.emp_no = de.emp_no;

-- #4 --
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name 
FROM dept_emp as de
JOIN departments as d
ON de.dept_no = d.dept_no
JOIN employees as e
ON de.emp_no = e.emp_no;

-- #5 --
SELECT * FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- #6 --
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS de
JOIN employees AS e
ON de.emp_no = e.emp_no
JOIN departments AS d
ON de.dept_no = d.dept_no
WHERE de.dept_no = 'd007';

-- #7 --
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS de
JOIN employees AS e
ON de.emp_no = e.emp_no
JOIN departments AS d
ON de.dept_no = d.dept_no
WHERE de.dept_no = 'd007'
OR de.dept_no = 'd005';

-- #8 --
SELECT COUNT(last_name), last_name
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;

