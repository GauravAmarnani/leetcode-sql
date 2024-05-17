-- First get the maximum salary inside the inner select. 
-- Then use that maximum to get the salary that is the max and less than the maximum at the same time.
SELECT max(salary) as SecondHighestSalary FROM employee WHERE salary < (SELECT max(salary) FROM employee);