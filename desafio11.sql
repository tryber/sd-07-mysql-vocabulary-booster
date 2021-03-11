SELECT c.ContactName AS 'Nome',
c.Country AS 'País',
(SELECT COUNT(*)
FROM w3schools.customers c1
WHERE c.Country = c1.Country 
AND c.CustomerID <> c1.CustomerID) AS 'Número de compatriotas'
FROM w3schools.customers c
WHERE (SELECT COUNT(*)
FROM w3schools.customers c1
WHERE c.Country = c1.Country 
AND c.CustomerID <> c1.CustomerID) > 0
ORDER BY c.ContactName;

/* feito com ajuda do código do @rafaelmguimaraes */
