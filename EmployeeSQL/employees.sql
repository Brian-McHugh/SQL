SELECT e.emp_no AS "Employee Number",
	   e.last_name AS "Last Name",
	   e.first_name AS "First Name",
	   e.gender AS "Gender",
	   s.salary AS "Salary"
FROM employees AS e
LEFT JOIN salaries AS s ON e.emp_no = s.emp_no;
