SELECT custumers1.ContactName AS `Nome`,
custumers1.Country AS `País`,
COUNT(*) AS `Número de compatriotas`
FROM w3schools.customers AS `custumers1`, w3schools.customers AS `custumers2`
WHERE custumers1.CustomerID <> custumers2.CustomerID
AND custumers1.Country = custumers2.Country
GROUP BY custumers1.CustomerID
ORDER BY `Nome`;
