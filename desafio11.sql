SELECT 
  CUSTOMERS.ContactName AS 'Nome',
  CUSTOMERS.Country AS 'País',
  COUNT(COUNTRY.Country) AS 'Número de compatriotas'
FROM w3schools.customers AS CUSTOMERS, w3schools.customers AS COUNTRY
WHERE CUSTOMERS.CustomerID <> COUNTRY.CustomerID
AND CUSTOMERS.Country = COUNTRY.Country
GROUP BY CUSTOMERS.CustomerID
ORDER BY 1;
