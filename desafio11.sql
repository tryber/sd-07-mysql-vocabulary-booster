SELECT c1.ContactName AS "Nome",
c1.Country AS "País", 
COUNT(c2.Country) - 1 AS "Número de compatriotas"
FROM w3schools.customers AS c1
JOIN w3schools.customers AS c2
ON c1.Country = c2.Country
GROUP BY 1, c1.Country, c2.Country
ORDER BY 1;
