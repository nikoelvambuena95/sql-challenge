--List Sales department employees: employee no., last name, first name, department name
SELECT * FROM departments
;

SELECT * FROM employees
;

SELECT * FROM dept_emp
;

SELECT * FROM dept_manager
;

SELECT  FROM dept_emp
	INNER JOIN dept_manager
		USING(dept_no)
;