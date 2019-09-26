SELECT de.emp_no AS "Employee Number",
	   e.last_name AS "Last Name",
	   e.first_name AS "First Name",
	   d.dept_name AS "Department Name"
FROM dept_emp AS de 
INNER JOIN employees AS e ON de.emp_no = e.emp_no
INNER JOIN departments AS d ON de.dept_no = d.dept_no AND d.dept_name = 'Sales';
