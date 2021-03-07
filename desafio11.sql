SELECT 
c.ContactName AS "Nome",
c.Country AS "Pais",
COUNT(c.Country = cu.Country) AS "Número de compatriotas"
FROM w3schools.customers AS c, w3schools.customers AS cu
WHERE c.Country = cu.Country
AND c.ContactName <> cu.ContactName
GROUP BY c.ContactName,c.Country 
ORDER BY c.ContactName ASC;

