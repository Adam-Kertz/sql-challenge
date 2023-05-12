--List each employee in the Sales and Development departments,
--including their employee number, last name, first name, and department name
SELECT e.emp_no, e.last_name, e.first_name
FROM "Employees" AS e
LEFT JOIN "Department_Employees" AS de ON e.emp_no = de.emp_no
LEFT JOIN "Departments" AS d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'
ORDER BY e.emp_no, e.last_name