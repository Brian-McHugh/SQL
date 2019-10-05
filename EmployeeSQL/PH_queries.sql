-- List the employee number, last name, first name, gender, and salary of each employee
SELECT e.emp_no AS "Employee Number",
	   e.last_name AS "Last Name",
	   e.first_name AS "First Name",
	   e.gender AS "Gender",
	   s.salary AS "Salary"
FROM employees AS e
LEFT JOIN salaries AS s ON e.emp_no = s.emp_no;


-- List employees who were hired in 1986
SELECT e.emp_no AS "Employee Number",
	   e.last_name AS "Last Name",
	   e.first_name AS "First Name",
	   e.hire_date AS "Hire Date"
FROM employees AS e
WHERE EXTRACT(YEAR FROM hire_date) = 1986;


-- List the manager of each department with the following information: department number, department
-- name, the manager's employee number, last name, first name, and start and end employment dates
SELECT d.dept_no AS "Department Number",
       d.dept_name AS "Department Name",
	   dm.emp_no AS "Employee Number of Manager",
	   e.last_name AS "Last Name of Manager",
	   e.first_name AS "First Name of Manager",
	   dm.from_date AS "Start Date",
	   dm.to_date AS "End Date"
FROM departments AS d
LEFT JOIN dept_manager AS dm ON d.dept_no = dm.dept_no 
LEFT JOIN employees AS e ON dm.emp_no = e.emp_no;


-- List the department of each employee with the following information:
-- employee number, last name, first name, and department name
SELECT e.emp_no AS "Employee Number",
	   e.last_name AS "Last Name",
	   e.first_name AS "First Name",
	   d.dept_name AS "Department Name"
FROM employees AS e
LEFT JOIN dept_emp AS de ON e.emp_no = de.emp_no 
RIGHT JOIN departments AS d ON de.dept_no = d.dept_no;


-- List all employees whose first name is "Hercules" and last names begin with "B"
SELECT e.emp_no AS "Employee Number",
	   e.last_name AS "Last Name",
	   e.first_name AS "First Name"
FROM employees AS e
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';


-- List all employees in the Sales department, including their employee number,
-- last name, first name, and department name
SELECT de.emp_no AS "Employee Number",
	   e.last_name AS "Last Name",
	   e.first_name AS "First Name",
	   d.dept_name AS "Department Name"
FROM dept_emp AS de 
INNER JOIN employees AS e ON de.emp_no = e.emp_no
INNER JOIN departments AS d ON de.dept_no = d.dept_no AND d.dept_name = 'Sales';


-- List all employees in the Sales and Development departments, including
-- their employee number, last name, first name, and department name
SELECT de.emp_no AS "Employee Number",
	   e.last_name AS "Last Name",
	   e.first_name AS "First Name",
	   d.dept_name AS "Department Name"
FROM dept_emp AS de 
INNER JOIN employees AS e ON de.emp_no = e.emp_no
INNER JOIN departments AS d ON de.dept_no = d.dept_no AND d.dept_name IN ('Sales', 'Development');


-- In descending order, list the frequency count of employee last names
SELECT last_name AS "Last Name of Employee", COUNT(last_name) AS "Count"
FROM employees AS e
GROUP BY last_name
ORDER BY "Count" DESC;

