SELECT
ContactName AS Nome,
Country AS País,
COUNT(Country) - 1 AS `Número de compatriotas`
FROM w3schools.customers
GROUP BY País
HAVING `Número de compatriotas` > 0
ORDER BY Nome;
