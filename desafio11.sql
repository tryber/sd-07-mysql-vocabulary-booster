SELECT 
    customers.ContactName AS 'Nome',
    customers.Country AS 'País',
    COUNT(customers2.Country) AS 'Número de compatriotas'
FROM
    w3schools.customers AS customers,
    w3schools.customers AS customers2
WHERE
    customers.Country = customers2.Country
        AND customers.CustomerID <> customers2.CustomerID
GROUP BY `Nome` , `País`
ORDER BY `Nome`;
