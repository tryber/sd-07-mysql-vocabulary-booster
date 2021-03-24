SELECT 
custoA.ContactName as Nome,
custoA.Country as `País`,
(
SELECT COUNT(custoB.Country) - 1
FROM w3schools.customers AS custoB
WHERE custoB.Country = custoA.Country
) AS `Número de compatriotas`
FROM w3schools.customers AS custoA
WHERE (
SELECT COUNT(custoB.Country) - 1
FROM w3schools.customers AS custoB
WHERE custoB.Country = custoA.Country
) > 0 
ORDER BY Nome;
