--List first name, last name, and sex of each employee whose first name is Hercules
--and whose last name begins with the letter B
SELECT e.first_name, e.last_name, e.sex
FROM Employees AS e
WHERE e.first_name LIKE 'Hercules'
AND e.last_name LIKE 'B%'