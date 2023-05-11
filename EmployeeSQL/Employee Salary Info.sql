SELECT "Employees".emp_no, "Employees".last_name, "Employees".first_name, "Employees".sex, "Salaries".salary
FROM "Employees"
JOIN "Salaries"
ON "Employees".emp_no = "Salaries".emp_no;