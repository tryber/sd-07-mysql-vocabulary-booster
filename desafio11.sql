SELECT
cus01.CustomerName AS `Nome`,
cus01.Country AS `País`,
COUNT(cus02.Country) AS `Número de compatriotas`
FROM w3schools.customers AS cus01, w3schools.customers AS cus02
WHERE cus01.Country = cus02.Country
GROUP BY `Nome`
ORDER BY `Nome`;
