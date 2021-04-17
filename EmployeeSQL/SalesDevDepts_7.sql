--List Sales and Development department employees: employee no., last name, first name, department name
--Find Sales and Development department no. from 'departments' table
SELECT d.dept_no AS department_number, d.dept_name AS department_name
FROM departments AS d
WHERE dept_name IN
('Sales', 'Development')
;
--Sales department no. = 'd007' , Development department no. = 'd005'

--Final query
SELECT E.emp_no AS employee_number, E.last_name, E.first_name
, D.dept_name AS department_name
	FROM employees AS E
	INNER JOIN
	--Use 'UNION' operator to combine 'dept_emp' and 'dept_manager' tables
	(
		SELECT DE.emp_no, DE.dept_no
			FROM dept_emp AS DE
				WHERE dept_no
				IN ('d007', 'd005')
		UNION
		SELECT DM.emp_no, DM.dept_no 
			FROM dept_manager AS DM
				WHERE dept_no
				IN ('d007', 'd005')
		) UD
		USING(emp_no)
		LEFT JOIN departments AS D
			USING(dept_no)
				WHERE dept_no 
				IN ('d007', 'd005')
	ORDER BY last_name, first_name
;