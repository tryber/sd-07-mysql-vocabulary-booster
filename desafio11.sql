SELECT
CA.ContactName AS Nome,
CA.Country AS País,
COUNT(*) - 1 AS 'Número de compatriotas'
FROM
w3schools.customers CA,
w3schools.customers CB
WHERE
CA.Country = CB.Country
GROUP BY CA.ContactName
HAVING `Número de compatriotas` > 0
ORDER BY Nome;
