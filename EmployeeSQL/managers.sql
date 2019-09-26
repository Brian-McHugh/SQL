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
