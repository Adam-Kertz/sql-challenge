--List each employee in the Sales department, including their employee number, last name, and first name
SELECT e.emp_no, e.last_name, e.first_name
FROM "Employees" AS e
LEFT JOIN "Department_Employees" AS de ON e.emp_no = de.emp_no
LEFT JOIN "Departments" AS d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'
ORDER BY e.emp_no, e.last_name