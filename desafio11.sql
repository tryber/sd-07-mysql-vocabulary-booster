SELECT table1.ContactName AS "Nome",
table1.Country AS "País",
COUNT(*) AS "Número de compatriotas"
FROM w3schools.customers AS table1, w3schools.customers AS table2
WHERE table1.ContactName <> table2.ContactName
  AND table1.Country = table2.Country
GROUP BY table1.CustomerID
ORDER BY table1.ContactName ASC;
