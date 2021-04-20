SELECT cst.ContactName AS 'Nome', cst.Country AS 'País',
COUNT(cst.Country) AS 'Número de compatriotas'
FROM w3schools.customers AS cst, w3schools.customers AS csta
WHERE cst.CustomerID <> csta.CustomerID AND cst.Country = csta.Country
GROUP BY cst.CustomerID ORDER BY cst.ContactName;
