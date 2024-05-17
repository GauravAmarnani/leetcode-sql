-- 
-- 
-- 
SELECT a.name AS 'Employee' 
FROM employee AS a INNER JOIN employee AS b 
ON a.managerId = b.id 
WHERE a.salary > b.salary;