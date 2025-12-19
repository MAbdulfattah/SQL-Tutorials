-- Where clause

SELECT * 
FROM employee_salary
WHERE first_name = "Leslie";


SELECT * 
FROM employee_salary
WHERE salary >= 50000;


SELECT * 
FROM employee_salary
WHERE salary <= 50000;


SELECT * 
FROM employee_demographics
WHERE gender != "Female";


SELECT * 
FROM employee_demographics
WHERE birth_date > "1985-01-01";


-- AND OR NOT LOGICAL OPERATORS 


SELECT * 
FROM employee_demographics
WHERE birth_date > "1985-01-01"
AND gender = "Male";


SELECT * 
FROM employee_demographics
WHERE birth_date > "1985-01-01"
or gender = "Male";


SELECT * 
FROM employee_demographics
WHERE birth_date > "1985-01-01"
OR NOT gender = "Male";


SELECT * 
FROM employee_demographics
WHERE (first_name = "Leslie" AND age =44) or age > 55;

-- LIKE statement 

SELECT * 
FROM employee_demographics
WHERE first_name LIKE "Jer%";


SELECT * 
FROM employee_demographics
WHERE first_name LIKE "a%";

SELECT * 
FROM employee_demographics
WHERE first_name LIKE "a__";

-- % works with dates as well 
SELECT * 
FROM employee_demographics
WHERE birth_date LIKE "1989%";