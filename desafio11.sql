
SELECT
cust1.ContactName AS Nome,
cust1.Country AS País,
COUNT(cust2.Country) AS "Número de compatriotas"
FROM w3schools.customers AS cust1, w3schools.customers AS cust2
WHERE cust1.country = cust2.country AND cust1.CustomerID <> cust2.CustomerID
GROUP BY cust1.CustomerID
ORDER BY 1;