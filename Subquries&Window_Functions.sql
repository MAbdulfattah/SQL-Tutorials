-- Subqueries 

SELECT * 
FROM employee_demographics
WHERE employee_id in (
	SELECT employee_id
    FROM employee_salary
    WHERE dept_id = 1);
    

SELECT first_name, salary, 
(select avg(salary)
	from employee_salary) AS AVG
FROM employee_salary;


-- Window functions 

SELECT gender, avg(salary) -- here you can't add other columns  
FROM employee_demographics dem
JOIN employee_salary sal
	on dem.employee_id = sal.employee_id	
GROUP BY gender;


SELECT dem.first_name,dem.last_name, gender, avg(salary) over(partition by gender) -- but here you can  
FROM employee_demographics dem
JOIN employee_salary sal
	on dem.employee_id = sal.employee_id;	
    
    
SELECT dem.first_name,dem.last_name, gender, sum(salary) over(partition by gender) 
FROM employee_demographics dem
JOIN employee_salary sal
	on dem.employee_id = sal.employee_id;