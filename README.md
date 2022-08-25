# SQL Assessment

The SQL operations contained in this project were written as part of the **Launching into Computer Science** course, Assignment 1, Part 3, at the University of Essex in August of 2022.

This assignment was to write several operations in SQL against a provided MariaDB database with two tables: EMP, containing employee data, and DEPT, containing department data. The EMP table has a foreign key, DEPTNO, that references the primary key of the same name in the DEPT table.

## Operation 1: List all employees whose salary is between 1,000 and 2,000. Show the employee name, department, and salary

This operation is straightforward, selecting the employee name, department, and salary with an inner join on the foreign/primary keys where the salaries were within the requested scope.

## Operation 2: Count the number of people in department 30 who receive a salary and the number of people who receive a commission

For this operation I ran two SELECT statements and UNION'd them together to form a single column of the counts of both salaried and commissioned people in the department with DEPTNO of 30. An alternative and more user friendly way to display this information would be to create a temporary table with two columns to explicitly show Salaried and Commissioned employees in separate columns for a little better user experience. The result from this operation wouldn't necessarily be shown to an end-user however, more probable would be a developer who would then take the output and manipulate it to use in a user interface.

## Operation 3: Find the name and salary of employees in Dallas

This operation uses another JOIN statement on the foreign and primary keys of each table to list only employees that work from Dallas, along with their salary.

## Operation 4: List all departments that do not have any employees

This is a straightforward operation to get the department names of departments that don't have employees. I started writing this operation as an INNER JOIN but realised that I could use NOT IN to limit the results to departments where no employee had the particular DEPTNO associated with them.

## Operation 5: List the department number and average salary of each department

This operation is simply selecting the department number and using the AVG operation on employee salaries from the EMP table to get each departments average salary.
