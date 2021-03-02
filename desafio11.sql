SELECT cust.ContactName AS 'Nome',
cust.country AS 'País',
COUNT(cust_b.Country) AS 'Número de compatriotas'
FROM w3schools.customers AS cust, w3schools.customers AS cust_b
WHERE cust.CustomerID <> cust_b.CustomerID AND cust.Country = cust_b.Country
GROUP BY cust.CustomerID
ORDER BY 1;
