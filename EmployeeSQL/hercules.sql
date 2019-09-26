SELECT e.emp_no AS "Employee Number",
	   e.last_name AS "Last Name",
	   e.first_name AS "First Name"
FROM employees AS e
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';
