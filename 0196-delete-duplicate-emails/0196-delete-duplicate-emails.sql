-- We are selecting minimum ids that form a group when doing group by of email.
-- We then delete the ids that are not in that particular group of ids.
-- NOTE: We have to use subquery because it doesn't let us make changes in the person table in a inner query.
DELETE FROM person 
WHERE id NOT IN (
    SELECT min_id
    FROM (
        SELECT MIN(id) AS min_id
        FROM person
        GROUP BY email
    ) AS subquery
);