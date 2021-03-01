SELECT
c.ContactName AS Nome,
c.country AS País,
(
SELECT
COUNT(co.country)
FROM w3schools.customers co
WHERE co.Country = País AND co.ContactName != Nome
) AS `Número de compatriotas`
FROM w3schools.customers c
HAVING `Número de compatriotas` > 0
ORDER BY Nome;
