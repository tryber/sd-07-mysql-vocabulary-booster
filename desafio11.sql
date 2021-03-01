SELECT
c1.CustomerName AS 'Nome',
c2.Country AS 'País',
COUNT(*) - 1 AS 'Número de compatriotas' FROM w3schools.customers c1
JOIN w3schools.customers c2 ON c1.Country = c2.Country GROUP BY c1.CustomerName;
