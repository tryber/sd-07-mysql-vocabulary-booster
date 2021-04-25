SELECT cus1.ContactName AS Nome,
cus1.Country AS País,
COUNT(*) AS `Número de compatriotas`
FROM customers AS cus1, customers AS cus2
WHERE cus1.Country = cus2.Country
AND cus1.CustomerID <> cus2.CustomerID
GROUP BY cus1.CustomerID
ORDER BY `Nome`;
