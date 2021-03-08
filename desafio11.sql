SELECT t1.ContactName AS 'Nome',
t1.Country AS 'País',
COUNT(t2.COUNTRY) AS 'Número de compatriotas'
FROM w3schools.customers AS t1,
w3schools.customers AS t2
WHERE t2.CustomerID <> t1.CustomerID
AND t1.Country = t2.Country
GROUP BY t1.CustomerID
ORDER BY `Nome`;
