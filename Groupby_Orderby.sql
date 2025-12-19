#Group by

SELECT gender  
FROM employee_demographics
group by gender;


SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender;


SELECT gender, AVG(age), max(age), min(age), count(age)
FROM employee_demographics
GROUP BY gender;

# ORDER BY 
SELECT *
FROM employee_salary
ORDER BY first_name;

SELECT *
FROM employee_salary
ORDER BY first_name desc;


SELECT *
FROM employee_demographics
ORDER BY gender, age desc;
