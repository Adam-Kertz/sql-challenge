--List the employee number, last name, first name, sex, and salary of each employee
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM Employees AS e
LEFT JOIN Salaries AS s
ON e.emp_no = s.emp_no
ORDER BY e.emp_no;