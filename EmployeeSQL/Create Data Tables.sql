--DROP TABLES WHEN RECREATING

DROP TABLE IF EXISTS Departments CASCADE;

DROP TABLE IF EXISTS Department_Employees CASCADE;

DROP TABLE IF EXISTS Department_Manager CASCADE;

DROP TABLE IF EXISTS Employees CASCADE;

DROP TABLE IF EXISTS Salaries CASCADE;

DROP TABLE IF EXISTS Titles CASCADE;


--Create Departments Table
CREATE TABLE Departments (
    dept_no varchar PRIMARY KEY NOT NULL,
    dept_name varchar UNIQUE NOT NULL
);

--Create Titles Table
CREATE TABLE Titles (
    title_id varchar PRIMARY KEY NOT NULL,
    title varchar UNIQUE NOT NULL
);

--Create Employees Table
CREATE TABLE Employees (
    emp_no int PRIMARY KEY NOT NULL,
    emp_title_id varchar   NOT NULL,
    birth_date varchar   NOT NULL,
    first_name varchar   NOT NULL,
    last_name varchar   NOT NULL,
    sex varchar   NOT NULL,
    hire_date varchar   NOT NULL,
	
    --Define relationship between emp_title_id and Titles Primary Key
	FOREIGN KEY (emp_title_id) REFERENCES Titles
);

--Create Salaries Table
CREATE TABLE Salaries (
    emp_no int PRIMARY KEY NOT NULL,
    salary int   NOT NULL,
	
    --Define relationship between emp_no and Employees Primary Key
	FOREIGN KEY (emp_no) REFERENCES Employees
);

--Create Department Employees Table
CREATE TABLE Department_Employees (
    emp_no int NOT NULL,
    dept_no varchar   NOT NULL,
    
    --Some employees work for multiple departments -> Use composite key
	PRIMARY KEY (
        emp_no, dept_no
	),
	
    --emp_no and dept_no are related to the Employees and Departments keys (respectively)
	FOREIGN KEY (emp_no) REFERENCES Employees,
	FOREIGN KEY (dept_no) REFERENCES Departments
);

--Create Department Manager Table
CREATE TABLE Department_Manager (
    dept_no varchar   NOT NULL,
    emp_no int   NOT NULL,
    
    --Some managers manage for multiple departments -> Use composite key
	PRIMARY KEY (
        dept_no, emp_no
	),

    --emp_no and dept_no are related to the Employees and Departments keys (respectively)
	FOREIGN KEY (dept_no) REFERENCES Departments,
	FOREIGN KEY (emp_no) REFERENCES Employees
);