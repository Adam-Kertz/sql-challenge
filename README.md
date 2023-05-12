# sql-challenge
# Introductory Information
Module instructions can be found at the following link:<br>
https://courses.bootcampspot.com/courses/3483/assignments/52324?module_item_id=936803<br>
<br>
The Data Modeling was performed at the following website:<br>
https://www.quickdatabasediagrams.com/<br>
<br>
The Resulting Data Diagram can be found here:<br>
https://github.com/Adam-Kertz/sql-challenge/blob/main/EmployeeSQL/QuickDBD-Free%20Diagram.png<br>
(Note: The above diagram models composite keys by indicating more than one Primary Key)<br>
<br>
To recreate the database used in the author's homework, use the following steps:<br>
# Step 1: Create a database that will be used to store the relevant information
The author named his database "Employees"
# Step 2: Run the code from the following .sql file as a query on the created database
https://github.com/Adam-Kertz/sql-challenge/blob/main/EmployeeSQL/Create%20Data%20Tables.sql
# Step 3: Use pgadmin's Import/Export feature to import the relevant .csv files
Order matters here as some tables have dependencies on other tables. The author recommends importing .csv files in the following order:<br>
1: https://github.com/Adam-Kertz/sql-challenge/blob/main/data/departments.csv<br>
2: https://github.com/Adam-Kertz/sql-challenge/blob/main/data/titles.csv<br>
3: https://github.com/Adam-Kertz/sql-challenge/blob/main/data/employees.csv<br>
4: https://github.com/Adam-Kertz/sql-challenge/blob/main/data/salaries.csv<br>
5: https://github.com/Adam-Kertz/sql-challenge/blob/main/data/dept_emp.csv<br>
6: https://github.com/Adam-Kertz/sql-challenge/blob/main/data/dept_manager.csv
# Step 4: Run the Queries Under Additional Queries to provide the recommended analysis
List the employee number, last name, first name, sex, and salary of each employee:<br>
https://github.com/Adam-Kertz/sql-challenge/blob/main/EmployeeSQL/Additional%20Queries/Employee%20Salary%20Info.sql<br>
List the first name, last name, and hire date for the employees who were hired in 1986<br>
https://github.com/Adam-Kertz/sql-challenge/blob/main/EmployeeSQL/Additional%20Queries/1986%20Employees.sql<br>
List the manager of each department along with their department number, department name, employee number, last name, and first name<br>
https://github.com/Adam-Kertz/sql-challenge/blob/main/EmployeeSQL/Additional%20Queries/Department%20Managers.sql<br>
List the department number for each employee along with that employee’s employee number, last name, first name, and department name<br>
https://github.com/Adam-Kertz/sql-challenge/blob/main/EmployeeSQL/Additional%20Queries/Department%20Employees.sql<br>
List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B<br>
https://github.com/Adam-Kertz/sql-challenge/blob/main/EmployeeSQL/Additional%20Queries/Hercules%20B.sql<br>
List each employee in the Sales department, including their employee number, last name, and first name<br>
https://github.com/Adam-Kertz/sql-challenge/blob/main/EmployeeSQL/Additional%20Queries/Sales%20Employees.sql<br>
List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name<br>
https://github.com/Adam-Kertz/sql-challenge/blob/main/EmployeeSQL/Additional%20Queries/Sales%20and%20Development%20Employees.sql<br>
List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)<br>
https://github.com/Adam-Kertz/sql-challenge/blob/main/EmployeeSQL/Additional%20Queries/Last%20Name%20Count.sql
