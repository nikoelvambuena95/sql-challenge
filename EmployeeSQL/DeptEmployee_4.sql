--List department of each employee: employee no.,last name, first name, department name
SELECT e.emp_no AS employee_number, e.last_name, e.first_name
, d.dept_name AS department_name
FROM employees AS e
	LEFT JOIN dept_emp 
	USING(emp_no)
	LEFT JOIN departments AS d
	USING(dept_no)
	ORDER BY last_name, first_name
;
	