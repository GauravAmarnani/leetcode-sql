-- We will use dense_rank() function to get sorted list. 
-- We will sort the list based on descending order. 
SELECT score, dense_rank() OVER(ORDER BY score DESC) AS 'rank' FROM Scores