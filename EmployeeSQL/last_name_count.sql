SELECT last_name AS "Last Name of Employee", COUNT(last_name) AS "Count"
FROM employees AS e
GROUP BY last_name
ORDER BY "Count" DESC;
