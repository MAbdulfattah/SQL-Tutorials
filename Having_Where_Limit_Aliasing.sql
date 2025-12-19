#HAVING VS WHERE 

SELECT gender, avg(age)
FROM employee_demographics
Group by gender
HAVING avg(age) > 40
;


SELECT occupation, avg(salary)
FROM employee_salary
where occupation LIKE "%manager%"
group by occupation
HAVING avg(salary) > 75000
;

# LIMIT 

SELECT *
FROM employee_demographics
limit 3
;

SELECT *
FROM employee_demographics
ORDER BY  age desc
limit 3
;

# Aliasing 

SELECT gender , avg(age) as avg_age
FROM employee_demographics
GROUP BY gender;

