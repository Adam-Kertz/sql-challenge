--List the first name, last name, and hire date for the employees who were hired in 1986
SELECT last_name, first_name, hire_date
FROM Employees
WHERE hire_date LIKE '%1986'
ORDER BY last_name