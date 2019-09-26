SELECT e.emp_no AS "Employee Number",
	   e.last_name AS "Last Name",
	   e.first_name AS "First Name",
	   e.hire_date AS "Hire Date"
FROM employees AS e
WHERE EXTRACT(YEAR FROM hire_date) = 1986;
