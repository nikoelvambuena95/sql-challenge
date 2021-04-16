--List manager details: department no., department name, employee no., last name, first name
SELECT d.dept_no AS department_number, d.dept_name AS department_name,
dm.emp_no AS employee_number, e.last_name, e.first_name
FROM departments AS d
	LEFT JOIN dept_manager AS dm
		USING(dept_no)
	LEFT JOIN employees AS e
		USING(emp_no)
;
