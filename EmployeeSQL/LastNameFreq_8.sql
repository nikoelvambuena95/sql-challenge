--List frequency count of employees last-names, display in descending order
SELECT E.last_name, COUNT(*) AS Frequency
	FROM employees AS E
	GROUP BY last_name
	ORDER BY frequency DESC
;
	