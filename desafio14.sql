SELECT C.Country AS 'País'FROM w3schools.customers AS C
UNION
SELECT P.Country AS 'País' FROM w3schools.suppliers AS P 
ORDER BY `País`
LIMIT 5;
