SELECT
c1.ContactName AS 'Nome',
c1.Country AS 'País',
COUNT(c1.Country) - 1 AS 'Número de compatriotas'

FROM w3schools.customers c1

INNER JOIN w3schools.customers c2
ON c1.Country = c2.Country

GROUP BY c1.ContactName
HAVING (COUNT(c1.Country) - 1) > 0

ORDER BY c1.ContactName;
