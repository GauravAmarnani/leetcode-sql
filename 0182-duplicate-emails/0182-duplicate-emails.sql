-- Here we are using Group By, Having and Count.
-- We will take the total count(*) of all emails which are > 1.
SELECT email as 'Email' 
FROM person GROUP BY email
HAVING count(*) > 1;