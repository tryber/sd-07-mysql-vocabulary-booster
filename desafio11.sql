SELECT c1.ContactName AS 'Nome',
c1.Country AS 'País',
COUNT(*) AS 'Número de compatriotas'
FROM w3schools.customers AS c1, w3schools.customers AS c2
WHERE c1.Country = c2.Country AND c1.CustomerID <> c2.CustomerID
GROUP BY c1.CustomerID
HAVING `Número de compatriotas` > 1
ORDER BY `Nome`;
