use employees;

select * from salaries;

select date_format(from_date, '%Y') from salaries;

select date_format(from_date, '%Y') as salary_year, min(salary) from salaries group by salary_year; 

select date_format(from_date, '%Y') as salary_year, max(salary) from salaries group by salary_year; 


-- broken
select date_format(from_date, '%Y') as salary_year, 
max(salary) as max_salary, min(salary) as min_salary,  max_salary - min_salary from salaries group by salary_year; 

SELECT 
    salary_year, max_salary, min_salary, max_salary - min_salary as delta
FROM
    (SELECT 
        DATE_FORMAT(from_date, '%Y') AS salary_year,
            MAX(salary) AS max_salary,
            MIN(salary) AS min_salary
    FROM
        salaries
    GROUP BY salary_year) as sub_select; 