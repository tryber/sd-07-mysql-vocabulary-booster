SELECT t1.ContactName AS 'Nome',
t1.Country AS 'País',
COUNT(t1.Country) - 1 AS 'Número de compatriotas'
FROM w3schools.customers AS t1
INNER JOIN w3schools.customers AS t2
ON t1.Country = t2.Country
GROUP BY t1.CustomerID
HAVING COUNT(t1.Country) - 1 > 0
ORDER BY `Nome`;
