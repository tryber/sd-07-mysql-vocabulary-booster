SELECT Nome, t0.Country AS País, Qt AS 'Número de compatriotas'
FROM w3schools.customers AS t0
INNER JOIN(
  SELECT t1.ContactName AS 'Nome', COUNT(*) AS Qt
  FROM w3schools.customers AS t1
  INNER JOIN( SELECT * FROM w3schools.customers) AS t2
  ON t1.Country = t2.Country AND (t1.CustomerID <> t2.CustomerID)
  GROUP BY t1.ContactName) AS Consulta
  ON Nome = t0.ContactName
  ORDER BY Nome;
