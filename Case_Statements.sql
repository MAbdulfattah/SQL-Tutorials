-- CASE STATEMENTS 

SELECT first_name,
last_name, 
age,
case 
	when age <= 30 then 'Young'
    when age between 31 and 50 then 'Old'
    when age >= 50 then 'Very old'
end as age_bracket
FROM employee_demographics;


-- give the employees a raise depending on their salaries
-- if < 50000 then 5%
-- if > 50000 then 7%
-- Finance department then 10%

SELECT first_name,
last_name,
salary, 
case
	when salary <= 50000 then salary + (salary * 0.05)
    when salary > 50000 then salary * 1.07
end as new_salary, 
case
	when dept_id = 6 then salary * 1.10
end as bonus
FROM employee_salary;