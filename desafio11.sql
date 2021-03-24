SELECT 
    C.ContactName AS `Nome`,
    C.Country AS `País`,
    (SELECT (COUNT(Country) - 1) FROM customers WHERE Country = C.Country) 
    AS `Número de compatriotas`
FROM customers C
HAVING `Número de compatriotas` > 0
ORDER BY `Nome`;
