SELECT c1.contactname AS 'Nome',
c1.country AS 'País',
COUNT(c1.country) AS 'Número de compatriotas'
FROM w3schools.customers AS c1, w3schools.customers AS c2
WHERE c1.customerid != c2.customerid AND c1.country = c2.country
GROUP BY c1.customerid -- tentei pelo contactname, porém só funcionou com customerid
ORDER BY `Nome`
