SELECT 
    t1.Country AS 'País'
FROM
    w3schools.customers AS t1,
    w3schools.customers AS t2
WHERE
    t1.CustomerID <> t2.CustomerID
GROUP BY País
ORDER BY País
LIMIT 5;
