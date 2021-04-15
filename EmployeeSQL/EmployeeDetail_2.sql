--List employee details: first name, last name, hire date = 1986
SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE hire_date 
BETWEEN '1986-01-01'
AND '1986-12-31'
;