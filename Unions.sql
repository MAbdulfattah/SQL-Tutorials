-- Unions

SELECT  first_name, last_name 
FROM employee_demographics
UNION 
SELECT  first_name, last_name
FROM employee_salary
;


SELECT  first_name, last_name 
FROM employee_demographics
UNION all
SELECT  first_name, last_name
FROM employee_salary
;

SELECT  first_name, last_name, 'old man' AS label
FROM employee_demographics
where age > 40 and gender = 'male'
UNION 
SELECT  first_name, last_name, 'old lady' AS label
FROM employee_demographics
where age > 40 and gender = 'female'
UNION
SELECT  first_name, last_name, 'high paid' AS label
FROM employee_salary
WHERE salary > 70000
order by first_name, last_name
;
