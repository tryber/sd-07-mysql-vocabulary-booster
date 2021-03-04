SELECT c.ContactName AS 'Nome', c.Country AS 'País',
COUNT(c.Country) AS 'Número de compatriotas'
FROM w3schools.customers AS c, w3schools.customers AS z
WHERE c.CustomerID <> z.CustomerID
AND c.Country = z.Country
GROUP BY c.CustomerID
ORDER BY c.ContactName;
