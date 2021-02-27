SELECT Country AS País FROM(
SELECT Distinct(C.Country)
FROM w3schools.customers AS C
INNER JOIN w3schools.suppliers AS S
ON C.Country = S.Country
LIMIT 5) AS Consulta
ORDER BY País;
