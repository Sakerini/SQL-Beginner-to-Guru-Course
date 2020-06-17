use employees;

SELECT 
    emp_no, COUNT(*) AS emp_count
FROM
    employees
WHERE
    emp_no > 1 -- contidions to select data
GROUP BY emp_no -- how to group data
HAVING emp_count > 0 -- condition for agregate functions
ORDER BY emp_no -- how to order data
LIMIT 5 , 10; -- limit result set returned