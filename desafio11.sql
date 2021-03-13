SELECT cus.ContactName AS "Nome",
cus.Country AS "País",
COUNT(*) AS "Número de compatriotas"
FROM w3schools.customers AS cus,
w3schools.customers AS cus2
WHERE cus.Country = cus2.Country AND cus.CustomerID <> cus2.CustomerID
GROUP BY cus.CustomerID
ORDER BY cus.ContactName;
