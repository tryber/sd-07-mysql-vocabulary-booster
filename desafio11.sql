SELECT c_1.ContactName AS 'Nome',
  c_1.Country AS 'País',
  COUNT(*) -1 AS 'Número de compatriotas'
FROM w3schools.customers AS c_1
  JOIN w3schools.customers AS c_2 ON c_1.Country = c_2.Country
GROUP BY c_1.CustomerID
HAVING `Número de compatriotas`
ORDER BY c_1.ContactName;
