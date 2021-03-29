SELECT Tab1.ContactName AS 'Nome',
Tab1.Country AS 'País',
COUNT(Tab2.Country) AS 'Número de compatriotas'
FROM w3schools.customers AS Tab1, w3schools.customers AS Tab2
WHERE Tab2.CustomerID <> Tab1.CustomerID AND Tab1.Country = Tab2.Country
GROUP BY Tab1.CustomerID
ORDER BY 1;
