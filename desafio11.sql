SELECT c1.ContactName AS "Nome Completo",
c1.Country AS "País",
COUNT(c2.Country) AS "Número de compatriotas"
FROM w3schools.customers c1, w3schools.customers c2
WHERE c1.CustomerID <> c2.CustomerID AND c1.Country = c2.Country
GROUP BY c1.Country, `Nome Completo`
ORDER BY 1;
