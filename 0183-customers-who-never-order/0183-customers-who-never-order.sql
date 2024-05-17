-- Here first we are left joining both the tables.
-- Then removing the rows with null in customerId column.
-- Then we are only left with customers present in both the tables.
SELECT name AS 'Customers'
FROM customers c
LEFT JOIN orders o
ON c.id = o.customerId
WHERE o.customerId IS NULL;