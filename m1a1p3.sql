mysql;
USE COMPANY1;

-- Operation 1
-- List all Employees whose salary is between 1,000 and 2,000. Show the employee name, department, and salary
SELECT EMP.ENAME, DEPT.DNAME, EMP.SAL
FROM EMP
JOIN DEPT
ON EMP.DEPTNO = DEPT.DEPTNO
WHERE EMP.SAL >= 1000
AND EMP.SAL <= 2000;


-- Operation 2
-- Count the number of people in department 30 who receive a salary and the number of people who receive a commission
SELECT COUNT(*)
FROM EMP
WHERE EMP.DEPTNO = 30
AND EMP.SAL <> ''
OR EMP.COMM <> '';

-- Operation 3
-- Find the name and salary of employees in Dallas
SELECT EMP.ENAME, EMP.SAL
FROM EMP
JOIN DEPT
ON EMP.DEPTNO = DEPT.DEPTNO
WHERE DEPT.LOC = 'DALLAS';

-- Operation 4
-- List all departments that do not have any employees
SELECT COUNT(*), DEPT.DNAME
FROM EMP
JOIN DEPT
ON EMP.DEPTNO = DEPT.DEPTNO
HAVING COUNT(*) = 0
GROUP BY DEPT.DNAME;

SELECT COUNT(*) as count, DEPT.DNAME
FROM EMP
RIGHT JOIN DEPT ON EMP.DEPTNO = DEPT.DEPTNO
GROUP BY DEPT.DNAME;
HAVING COUNT(*) = 0;

-- HAVING COUNT(*) = 0;

SELECT DEPT.DNAME
FROM EMP
JOIN DEPT
ON EMP.DEPTNO = DEPT.DEPTNO
WHERE DEPT.DEPTNO
NOT IN (SELECT EMP.DEPTNO FROM EMP);

-- Operation 5
-- List the department number and average salary of each department
