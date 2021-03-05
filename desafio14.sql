SELECT P.Country AS 'País'
FROM w3schools.suppliers AS C
INNER JOIN w3schools.customers AS P
WHERE C.Country <> P.Country
GROUP BY P.Country
ORDER BY P.Country
LIMIT 5;
