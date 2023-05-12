--List the frequency counts, in descending order, of all the employee last names
--(that is, how many employees share each last name)
SELECT e.last_name,COUNT(e.last_name)
FROM Employees AS e
GROUP BY e.last_name
ORDER BY e.last_name