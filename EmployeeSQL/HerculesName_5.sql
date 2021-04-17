--List employees by first name 'Hercules' AND last name starts with 'B'
SELECT E.first_name, E.last_name, E.sex
	FROM employees AS E
		WHERE first_name = 'Hercules'
		AND last_name LIKE 'B%'
	ORDER BY last_name ASC
;
