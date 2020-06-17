use employees;

select * from salaries;

select date_format(from_date, '%Y') from salaries;

SELECT 
    DATE_FORMAT(from_date, '%Y') AS salary_year,
    AVG(salary) AS avg_salary,
    COUNT(*) AS total_recs,
    SUM(salary) AS salary_sum
FROM
    salaries
GROUP BY salary_year;

SELECT 
    avg_salary, salary_sum / total_recs AS calculated_avg
FROM
    (SELECT 
        DATE_FORMAT(from_date, '%Y') AS salary_year,
            AVG(salary) AS avg_salary,
            COUNT(*) AS total_recs,
            SUM(salary) AS salary_sum
    FROM
        salaries
    GROUP BY salary_year) AS subselect;