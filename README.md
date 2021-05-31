# SQL Homework - Employee Database: A Mystery in Two Parts

## Summary
* Design tables to performs:
       1. Data Modeling
       2. Data Engineering
       3. Data Analysis
## Files
* 'Data Folder' includes the data files for analysis.
* 'EmployeeSQL' folder includes two .sql files along with .ipynb bonus analysis and ERD diagram.
    
## Instructions:

#### Data Modeling
* Sketch out an ERD of the tables. (http://www.quickdatabasediagrams.com).

![image](https://user-images.githubusercontent.com/72557712/120234246-d4304600-c214-11eb-97a4-947ba3e92c97.png)


#### Data Engineering
* Create a table schema for each of the six CSV files. Remember to specify data types, primary keys, foreign keys, and other constraints.
* Be sure to create tables in the correct order to handle foreign keys.
* Import each CSV file into the corresponding SQL table.

#### Data Analysis

* Once you have a complete database, do the following:

    * List the following details of each employee: employee number, last name, first name, sex, and salary.

    * List first name, last name, and hire date for employees who were hired in 1986.

    * List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first   name.

    * List the department of each employee with the following information: employee number, last name, first name, and department name.

    * List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

    * List all employees in the Sales department, including their employee number, last name, first name, and department name.

    * List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

    * In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

## Bonus (Optional)
Take the following steps to generate a visualization of the data:<br>
    * Import the SQL database into Pandas.<br>
    * Create a histogram to visualize the most common salary ranges for employees.<br>
    * Create a bar chart of average salary by title.
    
   ![image](https://user-images.githubusercontent.com/72557712/120234284-e9a57000-c214-11eb-815f-0d7a5f9da354.png)
    
   ![image](https://user-images.githubusercontent.com/72557712/120234324-f75af580-c214-11eb-839a-88dff6b41fd9.png)


