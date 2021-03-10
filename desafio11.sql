SELECT cust1.ContactName AS Nome,
cust1.Country AS País,
COUNT(*) AS `Número de compatriotas`
FROM customers AS cust1, customers AS cust2
WHERE cust1.Country = cus2.Country
AND cust1.CustomerID <> cus2.CustomerID
GROUP BY cust1.CustomerID
ORDER BY `Nome`;
