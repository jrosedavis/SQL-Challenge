--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
--Per ERD, access Employee and Salary tables.
--Use join to find salary

select "Employees".emp_no, 
"Employees".last_name,
"Employees".first_name,
"Employees".sex,
"Salaries".salary
from "Employees"
join "Salaries" 
on "Employees".emp_no = "Salaries".emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986.
--Per ERD, access "Employees" table 

select "Employees".first_name,
"Employees".last_name,
"Employees".hire_date
from "Employees"
where date_part ('year', hire_date) = 1986;

--3. List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.
--Per ERD, access "Employees", "Departments", and "Department_Manager" tables
--Use join 

select "Department_Manager".dept_no,
"Departments".dept_name,
"Department_Manager".emp_no,
"Employees".last_name,
"Employees".first_name
from "Department_Manager"
join "Departments"
on "Department_Manager".dept_no = "Departments".dept_no
join "Employees" 
on "Department_Manager".emp_no = "Employees".emp_no
order by emp_no;

--4. List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
--Per ERD, access "Employees", "Department_Employees", "Departments" tables

select "Department_Employees".emp_no,
"Employees".last_name,
"Employees".first_name,
"Departments".dept_name
from "Department_Employees"
join "Departments"
on "Department_Employees".dept_no = "Departments".dept_no
join "Employees" 
on "Department_Employees".emp_no = "Employees".emp_no;

--5. List first name, last name, and sex for employees whose first name is 
--"Hercules" and last names begin with "B."
--Per ERD, access "Employees" table

select "Employees".first_name,
"Employees".last_name,
"Employees".sex
from "Employees"
where last_name LIKE 'B%'
and first_name = 'Hercules';

--6. List all employees in the Sales department, including their employee number, 
--last name, first name, and department name.
--Per ERD, access "Departments", "Employees", and "Department_Employees"

select "Department_Employees".emp_no,
"Employees".last_name,
"Employees".first_name,
"Departments".dept_name
from "Department_Employees"
join "Departments"
on "Department_Employees".dept_no = "Departments".dept_no
join "Employees" 
on "Department_Employees".emp_no = "Employees".emp_no
where dept_name = 'Sales';

--7.List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
--PER ERD access "Departments", "Employees", and "Department_Employees"

select "Department_Employees".emp_no,
"Employees".last_name,
"Employees".first_name,
"Departments".dept_name
from "Department_Employees"
join "Departments"
on "Department_Employees".dept_no = "Departments".dept_no
join "Employees" 
on "Department_Employees".emp_no = "Employees".emp_no
where dept_name in ('Sales', 'Development');

--8. In descending order, list the frequency count of employee last names, i.e., 
--how many employees share each last name.
--Per ERD access "Employees"

select last_name, count(*) as freq_count
from "Employees"
group by last_name
order by freq_count desc;