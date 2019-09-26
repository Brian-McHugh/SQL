SELECT e.emp_no AS "Employee Number",
	   e.last_name AS "Last Name",
	   e.first_name AS "First Name",
	   d.dept_name AS "Department Name"
FROM employees AS e
LEFT JOIN dept_emp AS de ON e.emp_no = de.emp_no 
RIGHT JOIN departments AS d ON de.dept_no = d.dept_no;
