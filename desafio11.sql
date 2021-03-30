SELECT ContactName 'Nome',
Country "País",
(SELECT (COUNT(*)-1) FROM w3schools.customers WHERE Country = c.Country) "Número de compatriotas"
FROM w3schools.customers AS c
HAVING `Número de compatriotas` >= 1
ORDER BY `Nome`;
