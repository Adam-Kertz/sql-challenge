--List the manager of each department along with their department number,
--department name, employee number, last name, and first name
SELECT dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM "Department_Manager" AS dm
LEFT JOIN "Departments" AS d ON dm.dept_no = d.dept_no
LEFT JOIN "Employees" AS e ON dm.emp_no = e.emp_no
ORDER BY dm.dept_no