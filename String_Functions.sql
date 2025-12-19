-- String Functions
SELECT length('SKYFALL');


SELECT first_name, length(first_name) as len
FROM employee_demographics
order by len;


SELECT UPPER('sky');
SELECT lower('SKY');

SELECT first_name, UPPER(first_name) as len
FROM employee_demographics;

SELECT TRIM('            SKY          ');
SELECT LTRIM('            SKY          ');
SELECT RTRIM('            SKY          ');


SELECT first_name, 
left(first_name, 4),
right(first_name, 4),
birth_date
FROM employee_demographics;


SELECT first_name, 
left(first_name, 4),
right(first_name, 4),
birth_date, 
SUBSTRING(birth_date,6,2) as birth_month-- Helps in finding the birth month!
FROM employee_demographics;


SELECT first_name, REPLACE(first_name, 'a', 'z')
FROM employee_demographics;


SELECT first_name, last_name,
CONCAT(first_name, ' ', last_name) as full_name
FROM employee_demographics;





