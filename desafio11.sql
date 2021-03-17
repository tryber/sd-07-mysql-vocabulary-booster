SELECT wcust1.ContactName AS 'Nome', wcust1.Country AS 'País', COUNT(wcust1.Country)
FROM w3schools.customers wcust1, w3schools.customers wcust2
WHERE wcust1.Country = wcust2.Country AND wcust1.CustomerID <> wcust2.CustomerID
GROUP BY wcust1.CustomerID
ORDER BY 1;
