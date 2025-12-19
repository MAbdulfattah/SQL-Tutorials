-- Joins

SELECT * 
FROM employee_demographics;
SELECT * 
FROM employee_salary;

SELECT * 
FROM employee_demographics as dem
INNER JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id
;


SELECT dem.employee_id, age, occupation
FROM employee_demographics as dem
INNER JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id
;

-- Outer join


SELECT *
FROM employee_demographics as dem
LEFT JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id
;


SELECT *
FROM employee_demographics as dem
RIGHT JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id
;


-- Self join

SELECT * 
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id + 1 = emp2. employee_id
;


-- Joining multiple 

SELECT * 
FROM employee_demographics as dem
INNER JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments as pd 
	ON sal.dept_id = pd.department_id
;

SELECT *
FROM parks_departments;