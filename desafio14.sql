SELECT País FROM
(SELECT Country AS País FROM w3schools.customers AS C
UNNION ALL
SELECT Country AS País FROM w3schools.suppliers AS S) AS Dado
GROUP BY País
ORDER BY País
LIMIT 5;
